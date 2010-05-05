package edu.usu.cs.search.incomplete;

import java.math.BigInteger;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import jdd.bdd.BDD;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFriskyRelaxedPlanningGraph;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.planner.ffrisky.util.RiskCounterNode;
import edu.usu.cs.search.StateNode;

public class BddRelaxedPlanningGraph extends FFriskyRelaxedPlanningGraph {

	BDD bdd = null;
	
	public BddRelaxedPlanningGraph(Problem problem, Domain domain,
			SolverOptions solverOptions) {
		super(problem, domain, solverOptions);
		bdd = RiskCounter.getBDD();
	}

	
	protected void setActionLevelInfo() {
		//System.out.println("Level: " + (actionSpike.getCurrentRank()-1));


		for(ActionHeader actionHeader : actionSpike.getActionsByRank(actionSpike.getCurrentRank()-1)){
			//System.out.print("-");

			ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
			ActionLevelInfo aliPrev = actionSpike.getExistingActionLevelInfo(actionSpike.getCurrentRank()-2, actionHeader.getIndex());
			if(!actionLevelInfoChanged(actionHeader) && aliPrev != null){				
				//ali.setCriticalRisks(new GeneralizedRiskSet(aliPrev.getCriticalRisks()));
				ali.setBddCriticalRisks(bdd.ref(aliPrev.getBddCriticalRisks()));
				//ali.setPossibleRisks(new GeneralizedRiskSet(aliPrev.getPossibleRisks()));				
				ali.setBddPossibleRisks(bdd.ref(aliPrev.getBddPossibleRisks()));
				ali.getSupportingFacts().addAll(aliPrev.getSupportingFacts());
				ali.setChanged(false);


				continue;
			}


			if(actionHeader.isNoop()){
				//risks to action are same as risks to fact
				int index = actionHeader.getPreconditions().nextSetBit(0);
				FactHeader prec = globalFactHeaders.get(index);
				FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, index);
				ali.setBddCriticalRisks(bdd.ref(fli.getBddCriticalRisks()));
				ali.setBddPossibleRisks(bdd.ref(fli.getBddPossibleRisks()));
				ali.getSupportingFacts().add(prec);
			}
			else{
				int criticalRisks = 1;
				
				//take union of precondition possible and critical risks
				for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
					FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());

					int tmp = bdd.ref(bdd.and(criticalRisks, fli.getBddCriticalRisks()));
					bdd.deref(criticalRisks);
					criticalRisks = tmp;
					bdd.ref(criticalRisks);
					bdd.deref(tmp);

					tmp = bdd.ref(bdd.and(criticalRisks, fli.getBddPossibleRisks()));
					bdd.deref(criticalRisks);
					criticalRisks = tmp;
					bdd.ref(criticalRisks);
					bdd.deref(tmp);

					ali.getSupportingFacts().add(factHeader); 
				}
				for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
					FactLevelInfo fli = factSpike.getExistingFactLevelInfo(factSpike.getCurrentRank()-2, possPre.getIndex());
					FactHeader factHeader = null;
					if(fli != null)
						factHeader = fli.getFact();
					if(factHeader == null){
						//If precondition is not present, then incur a risk
						Risk r = Risk.getRiskFromIndex(Risk.PRECOPEN, actionHeader.getName(), possPre.getName());
						int tmp = bdd.ref(bdd.and(criticalRisks, RiskCounter.getRiskToBDD().get(r)));
						bdd.deref(criticalRisks);
						criticalRisks = tmp;
						bdd.ref(criticalRisks);
						bdd.deref(tmp);
					}
					else { 
//						//precondition is present,
//						FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());

						//if no possible risks for precondition, then add no risks
						//else if precondition is at risk, there is a higher order interaction
						if(fli.getBddPossibleRisks() == 1){
							int tmp = bdd.ref(bdd.and(criticalRisks, fli.getBddCriticalRisks()));
							bdd.deref(criticalRisks);
							criticalRisks = tmp;
							bdd.ref(criticalRisks);
							bdd.deref(tmp);
							
						}
						else {
							Risk r = Risk.getRiskFromIndex(Risk.PRECOPEN, actionHeader.getName(), possPre.getName());
							int tmp = bdd.ref(bdd.or(RiskCounter.getRiskToBDD().get(r), fli.getBddPossibleRisks()));
							int tmp1 = bdd.ref(bdd.and(criticalRisks, tmp));
							bdd.deref(criticalRisks);
							bdd.deref(tmp);
							criticalRisks = tmp1;
							bdd.ref(criticalRisks);
							bdd.deref(tmp1);
						}

						ali.getSupportingFacts().add(factHeader);
					}
				}
				//bdd.printSet(criticalRisks);
				ali.setBddCriticalRisks(criticalRisks);

				if(aliPrev != null){
					ali.setChanged(aliPrev.getBddCriticalRisks() != ali.getBddCriticalRisks());
				}


			}
		}
	}

	protected void setPropositionLevelInfo() {

		Collection<FactHeader> applicableFacts = this.getFactSpike().getFactsByRank(
				this.getFactSpike().getCurrentRank()-1);

		for (FactHeader fact : applicableFacts) {
			//System.out.print("+");
			FactLevelInfo fli = factSpike.getFactLevelInfo(getFactSpike().getCurrentRank()-1, fact.getPropositionIndex());

			//copy previous supporters, new supporters were taken care of when they were added
			FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());

			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());

			boolean changed = propositionLevelInfoChanged(fli, fliPrev);

			fli.getTrueSupporters().addAll(fliPrev.getTrueSupporters());
			fli.getPossibleSupporters().addAll(fliPrev.getPossibleSupporters());


			if(!changed){
				fli.setBddCriticalRisks(bdd.ref(fliPrev.getBddCriticalRisks()));
				fli.setBddPossibleRisks(bdd.ref(fliPrev.getBddPossibleRisks()));
				fli.setChosenSupporters(new HashSet<ActionHeader>(fliPrev.getChosenSupporters()));
				fli.setChanged(false);
				continue;
			}

			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();

			Map<ActionHeader, Integer> actCriticalRisks = new HashMap<ActionHeader, Integer>();
			Map<ActionHeader, Integer> actPossibleRisks = new HashMap<ActionHeader, Integer>();

			for (ActionHeader actionHeader : supportingActions) {
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
				actCriticalRisks.put(actionHeader, ali.getBddCriticalRisks());
				actPossibleRisks.put(actionHeader, ali.getBddCriticalRisks());
				if(fli.getPossibleSupporters().contains(actionHeader)){
					Risk r = Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, actionHeader.getName(), fact.getName());
					int newdd = bdd.ref(bdd.and(actPossibleRisks.get(actionHeader), RiskCounter.getRiskToBDD().get(r)));
					bdd.deref(actPossibleRisks.get(actionHeader));
					actPossibleRisks.put(actionHeader, newdd);
				}
			}

			//Map<ActionHeader, GeneralizedRiskSet> sortedCriticalRisks = sortActionsWithRisks(unsortedCriticalRisks);
			int criticalRisks = bdd.ref(bdd.getZero());
			int possibleRisks = bdd.ref(bdd.getZero());
			while (actPossibleRisks.size() > 0) {
				int bestRiskSet = 0;
				ActionHeader bestAct = null;

				for(ActionHeader a : actPossibleRisks.keySet()){
					int incumbentRiskSet = 0;
					int aRiskSet = actPossibleRisks.get(a);


					if(bestAct == null){
						bestRiskSet = aRiskSet;
						int tmp = bdd.ref(bdd.or(bestRiskSet, possibleRisks));
						bdd.deref(bestRiskSet);
						bestRiskSet = tmp;		
						bdd.ref(bestRiskSet);
						//bdd.deref(tmp);
						bestAct = a;
					}
					else {

						incumbentRiskSet = aRiskSet;
						int tmp = bdd.ref(bdd.or(incumbentRiskSet, possibleRisks));
						bdd.deref(tmp);
						incumbentRiskSet = tmp; 
						bdd.ref(incumbentRiskSet);
						bdd.ref(bestRiskSet);

						int cmp;
						if(incumbentRiskSet == bestRiskSet)
							cmp = 0;
						else{
							BigInteger icnt = RiskCounter.getBigUnsolvableDomainCount(incumbentRiskSet);
							BigInteger bcnt = RiskCounter.getBigUnsolvableDomainCount(bestRiskSet);
							cmp = icnt.compareTo(bcnt);
						}
						
						if( cmp < 0 ||
							(cmp == 0 && a.isNoop()) ||
							(cmp == 0 && actionSpike.getActRank(a) < actionSpike.getActRank(bestAct))
						){
							bdd.deref(bestRiskSet);
							bestRiskSet = incumbentRiskSet;
							bdd.ref(bestRiskSet);
							bestAct = a;
						}
						//bdd.deref(incumbentRiskSet);
					}								
				}
				
				int cmp;
				if(possibleRisks == bestRiskSet)
					cmp = 0;
				else{
					BigInteger icnt = RiskCounter.getBigUnsolvableDomainCount(possibleRisks);
					BigInteger bcnt = RiskCounter.getBigUnsolvableDomainCount(bestRiskSet);
					cmp = icnt.compareTo(bcnt);
				}

				
				if(chosenSupportingActions.size() == 0 ||						
						bestRiskSet != 0 && cmp > 0 
				){

					possibleRisks = bestRiskSet;
					chosenSupportingActions.add(bestAct);
					actPossibleRisks.remove(bestAct);

					int tmp = bdd.ref(bdd.or(criticalRisks, actCriticalRisks.get(bestAct)));
					bdd.deref(criticalRisks);
					criticalRisks = tmp;
				}
				else{
					break;
				}

				if(!getSolverOptions().isUseMultipleSupportersInPlanningGraph()){
					break;
				}
				else if(chosenSupportingActions.size() > 1){
					break;
				}

			}

//			bdd.printSet(possibleRisks);
			fli.setBddCriticalRisks(criticalRisks);
			fli.setBddPossibleRisks(possibleRisks);
			fli.setChosenSupporters(chosenSupportingActions);

			if(!fliPrev.getChosenSupporters().equals(fli.getChosenSupporters()) ||
					fliPrev.getBddCriticalRisks() != fli.getBddCriticalRisks() ||
					fliPrev.getBddPossibleRisks() != fli.getBddPossibleRisks()
			){
				fli.setChanged(true);
			}


		}
	}


	protected boolean reachedFixedPoint(boolean addedLevel){
		boolean hasConverged = false;

		boolean goalsMet = containsSolution();
		
		if(!goalsMet
				//addedLevel
				) {
		}
		else{ //couldn't add new facts, check if risks level off

			levelsPastGoalsMet++;



			hasConverged = true;
			for(FactHeader factHeader : this.getFactSpike().getFactsByRank(this.getFactSpike().getCurrentRank() - 1)) {
				FactLevelInfo fliNow = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, factHeader.getPropositionIndex());
				FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
				//int critRisks1 = fliNow.getCriticalRisks();
				//int critRisks2 = fliPrev.getCriticalRisks();
				int possRisks1 = fliNow.getBddPossibleRisks();
				int possRisks2 = fliPrev.getBddPossibleRisks();
				//				if(!critRisks1.equals(critRisks2)) {
				//					hasConverged = false;
				//					break;
				//				}
				if(possRisks1 != possRisks2) {
					hasConverged = false;
					break;
				}
			}

		}
		if(levelsPastGoalsMet > 5){
			hasConverged = true;
		}
		return hasConverged;
	}


	protected void initializePlanningGraph(StateNode node) {
		super.initializePlanningGraph(node);
		if(node instanceof RiskCounterNode){
			RiskCounterNode fn = (RiskCounterNode)node;
			for (Proposition proposition : fn.getPropositions().keySet()) {
				int priorRisks = fn.getPropositions().get(proposition);
				priorRisks = bdd.and(priorRisks, fn.getCriticalRisks());
				FactLevelInfo fli =this.getFactSpike().getFactLevelInfo(0, proposition.getIndex()); 
				if(priorRisks != 0){
					fli.setBddPossibleRisks(bdd.ref(priorRisks));					
				}
				fli.setBddCriticalRisks(bdd.ref(fn.getCriticalRisks()));
			}
		}
		levelsPastGoalsMet = 0;
	}


	//final static int MAX_LEVELS = 100;
	public int getBddGoalRiskSet() {
		// Once it has converged, we're almost done
		// We just need to get all the critical risks in the goal action preconditions
		int goalCriticalRisks = 1;
		for(Proposition subgoal : this.getProblem().getGoalAction().getPreconditions()) {
			FactHeader precHeader = this.getFactSpike().get(subgoal.getIndex());

			// If precHeader isn't in the propositions, there is no solution
			if(precHeader == null) {
				return 0;
			}

			// Add the critical risks from the subgoal
			//			goalCriticalRisks.addAll(precHeader.getCriticalRisks(this.getActionSpike().getCurrentRank()));
			//			goalCriticalRisks.addAll(precHeader.getPossibleRisks(this.getActionSpike().getCurrentRank()));
			FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, precHeader.getPropositionIndex());
			//goalCriticalRisks = bdd.and(goalCriticalRisks, fli.getBddCriticalRisks());
			int tmp = bdd.ref(bdd.and(goalCriticalRisks, fli.getBddPossibleRisks()));
			bdd.deref(goalCriticalRisks);
			goalCriticalRisks =  tmp;
		}

//		BigInteger b = RiskCounter.getBigUnsolvableDomainCount(goalCriticalRisks);
//		System.out.println();
//		System.out.println(RiskCounter.getSolvableDomains(goalCriticalRisks));
//		bdd.printSet(goalCriticalRisks);
		
		
		return goalCriticalRisks;
	}


}
