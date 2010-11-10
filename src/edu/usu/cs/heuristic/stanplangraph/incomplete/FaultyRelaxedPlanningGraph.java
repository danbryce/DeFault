package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import javax.swing.text.html.HTMLDocument.Iterator;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.AbstractPlanningGraph;
import edu.usu.cs.heuristic.stanplangraph.classic.ClassicalActionSpike;
import edu.usu.cs.heuristic.stanplangraph.classic.ClassicalFactSpike;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.FaultStateNode;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.PIRiskSet;

public class FaultyRelaxedPlanningGraph extends AbstractPlanningGraph {

	protected int levelsPastGoalsMet= 0;



	//	public FFriskyRelaxedPlanningGraph(IncompleteProblem problem) {
	//		super(problem);
	//
	//	}

	public FaultyRelaxedPlanningGraph(Problem problem, Domain domain, Solver solver) {
		super(problem, domain, solver);
	}

	protected void initializePlanningGraph(StateNode node) {
		super.initializePlanningGraph(node);
		this.factSpike = new FaultyFactSpike(globalFactHeaders, this, tempPreconditionActionCountMap, preconditionActionMap, solver);
		this.actionSpike = new FaultyActionSpike(factSpike, globalActionHeaders, globalFactHeaders, this, solver);
		// Create the fact spike rank 0
		for (Proposition proposition : node.getState()) {
			this.getFactSpike().addFact(proposition, remainingActions);
		}	
		this.getFactSpike().incrementRank();

		if(node instanceof FaultStateNode){
			FaultStateNode fn = (FaultStateNode)node;
			for (Proposition proposition : fn.getPropositions().keySet()) {
				if(solver.getRelevantFacts() == null || solver.getRelevantFacts().contains(proposition.getIndex())){

					FaultSet priorRisks = fn.getPropositions().get(proposition);
					//priorRisks.removeAll(fn.getCriticalRisks());
					//				if(priorRisks.size() > 0){
					((FaultyFactLevelInfo)this.getFactSpike().getFactLevelInfo(0, proposition.getIndex())).setFaults(priorRisks);
					//				}
				}
			}
		}
		levelsPastGoalsMet = 0;		
	}




	protected void setActionLevelInfo() {
		//System.out.println("Level: " + (actionSpike.getCurrentRank()-1));

		for(ActionHeader actionHeader : actionSpike.getActionsByRank(actionSpike.getCurrentRank()-1)){

			FaultyActionLevelInfo ali = (FaultyActionLevelInfo)actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
			FaultyActionLevelInfo aliPrev = (FaultyActionLevelInfo)actionSpike.getExistingActionLevelInfo(actionSpike.getCurrentRank()-2, actionHeader.getIndex());

			if(!actionLevelInfoChanged(actionHeader) && aliPrev != null){				
				ali.setFaults(aliPrev.getFaults());
				//ali.setPossibleFaults(aliPrev.getPossibleFaults());
				ali.getSupportingFacts().addAll(aliPrev.getSupportingFacts());
				ali.setChanged(false);
				ali.setCost(aliPrev.getCost());
				continue;
			}

			if(actionHeader.isNoop()){
				int index = actionHeader.getPreconditions().nextSetBit(0);
				FactHeader prec = globalFactHeaders.get(index);
				FaultyFactLevelInfo fli = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, index);
				FaultSet faults = fli.getFaults();
				ali.setFaults(faults);
				//ali.setPossibleFaults(faults);
				ali.getSupportingFacts().add(prec);			
				ali.setCost(fli.getCost());
			}
			else{
				FaultSet actionFaults = ali.getFaults(); 
				int cost = 1; //cost of action
				//take union of precondition possible and critical risks
				for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
					FaultyFactLevelInfo fli = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
					actionFaults.or(fli.getFaults());
					ali.getSupportingFacts().add(factHeader);
					cost += fli.getCost();
				}
				for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
					FaultyFactLevelInfo fli = (FaultyFactLevelInfo)factSpike.getExistingFactLevelInfo(factSpike.getCurrentRank()-2, possPre.getIndex());
					FactHeader factHeader = null;
					if(fli != null){
						factHeader = fli.getFact();
					}
					if(factHeader == null){
						//If precondition is not present, then incur a fault
						Fault r = Fault.getRiskFromIndex(Fault.PRECOPEN, actionHeader.getName(), possPre.getName());
						actionFaults.or(r);
					}
					else { 
						//precondition is present,
						//if no possible faults for precondition, then add no faults
						//else if precondition is at fault, there is a higher order interaction
						if(!fli.getFaults().empty()){
							Fault r = Fault.getRiskFromIndex(Fault.PRECOPEN, actionHeader.getName(), possPre.getName());
							FaultSet factFaults = fli.getFaults().copy();							
							factFaults.and(r);							
							actionFaults.or(factFaults);
						}
						ali.getSupportingFacts().add(factHeader);
						cost += fli.getCost();
					}
				}
				//ali.setFaults(actionFaults);
				ali.setCost(cost);
				if(aliPrev != null){
					ali.setChanged(!aliPrev.getFaults().equals(ali.getFaults()));
				}

			}
			//			System.out.println("Act Supported by: " + ali.getActionHeader().getName());
			//			for(FactHeader fh : ali.getSupportingFacts()){
			//				System.out.println(fh.getName());
			//			}
		}
	}


	protected void setPropositionLevelInfo() {

		Collection<FactHeader> applicableFacts = this.getFactSpike().getFactsByRank(
				this.getFactSpike().getCurrentRank()-1);

		for (FactHeader fact : applicableFacts) {
			FaultyFactLevelInfo fli = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(getFactSpike().getCurrentRank()-1, fact.getPropositionIndex());
			FaultyFactLevelInfo fliPrev = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());

			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());

			boolean changed = propositionLevelInfoChanged(fli, fliPrev);

			fli.getTrueSupporters().addAll(fliPrev.getTrueSupporters());
			fli.getPossibleSupporters().addAll(fliPrev.getPossibleSupporters());


			if(!changed){
				fli.setFaults(fliPrev.getFaults());
				fli.setChosenSupporters(new HashSet<ActionHeader>(fliPrev.getChosenSupporters()));
				fli.setChanged(false);
				continue;
			}

			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();

			Map<ActionHeader, FaultSet> actFaults = new HashMap<ActionHeader, FaultSet>();

			ActionHeader noop = null;
			for (ActionHeader actionHeader : supportingActions) {
				FaultyActionLevelInfo ali = (FaultyActionLevelInfo)actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());

				if(actionHeader.isNoop()){
					noop = actionHeader;
				}


				if(fli.getPossibleSupporters().contains(actionHeader)){
					Fault r = Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, actionHeader.getName(), fact.getName());
					FaultSet faults = ali.getFaults().copy();
					faults.or(r);
					actFaults.put(actionHeader, faults);
				}
				else{
					actFaults.put(actionHeader, ali.getFaults());
				}
			}

			FaultSet faults = fli.getFaults(); //new GeneralizedRiskSet(riskSize);
			faults.setFaults(1);
			int supportCost = 0;

			//if(noop == null){

				while (actFaults.size() > 0) {
					FaultSet bestFaultSet = null;
					ActionHeader bestAct = null;
					int 	bestCost = Integer.MAX_VALUE;

					for(ActionHeader a : supportingActions){
						if(chosenSupportingActions.contains(a)){
							continue;
						}

						FaultSet incumbentFaultSet = null;
						FaultSet actFaultSet = actFaults.get(a);
						ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, a.getIndex());
						int incumbentCost = ali.getCost(); 


						if(bestFaultSet == null){
							bestFaultSet = actFaultSet.copy();
							bestFaultSet.and(faults);
							bestAct = a;
							bestCost = incumbentCost;

						}
						else {
							incumbentFaultSet = actFaultSet.copy();
							incumbentFaultSet.and(faults);

							//						if(fact.getName().equals("goal9_")){
							//							RiskCounter.getBDD().printSet(((BDDRiskSet)bestFaultSet).getFaults());
							//							BigInteger i = RiskCounter.getBigUnSolvableDomainCount(bestFaultSet);
							//							RiskCounter.getBDD().printSet(((BDDRiskSet)incumbentFaultSet).getFaults());
							//							BigInteger j = RiskCounter.getBigUnSolvableDomainCount(incumbentFaultSet);
							//							BigInteger k = i.subtract(j);
							//							int z = 0;
							//							z++;
							//							}

							int cmp = incumbentFaultSet.compareTo(bestFaultSet);
//							if( a.isNoop() ||
//									cmp == -1 ||
//									(cmp == 0 && a.isNoop()) ||
//									(cmp == 0 && !bestAct.isNoop() 
//											&& incumbentCost < bestCost)
//							){
							if(//a.isNoop() ||
									(//!bestAct.isNoop() && 
											((cmp == -1 //&& incumbentCost <= bestCost
													)||  
											 (//cmp == 0 &&
													 incumbentCost < bestCost)) )
											 //||
//									(cmp == 0 && a.isNoop()) ||
//									(//cmp == 0 && 
//											!bestAct.isNoop() 
//											&& incumbentCost < bestCost)
							){
//0.0001220703125
//0.0000152587890625
							bestFaultSet = incumbentFaultSet;
								bestAct = a;
								bestCost = incumbentCost;
//								if(a.isNoop()){
//									break;
//								}
							}
						}								
					}

					//				if(fact.getName().equals("goal9_")){
					//				RiskCounter.getBDD().printSet(((BDDRiskSet)bestFaultSet).getFaults());
					//				RiskCounter.getBDD().printSet(((BDDRiskSet)faults).getFaults());
					//				}
					if(chosenSupportingActions.size() == 0 ||
							bestFaultSet.compareTo(faults) < 0){

						faults = bestFaultSet;
						chosenSupportingActions.add(bestAct);
						actFaults.remove(bestAct);
						supportCost += bestCost;
					}
					else{
						actFaults.remove(bestAct);
						break;
					}

					if(!solver.getSolverOptions().isUseMultipleSupportersInPlanningGraph()){
						break;
					}
					else if(chosenSupportingActions.size() > 0){
						break;
					}

				}
//			}
//			else{
//				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, noop.getIndex());
//				
//				faults = ((FaultyActionLevelInfo)ali).getFaults();
//				chosenSupportingActions.add(noop);
//				supportCost = ali.getCost();
//			}

			fli.setFaults(faults);
			fli.setChosenSupporters(chosenSupportingActions);
			fli.setCost(supportCost);


			if(!fliPrev.getChosenSupporters().equals(fli.getChosenSupporters()) ||
					!fliPrev.getFaults().equals(fli.getFaults())){
				fli.setChanged(true);
			}


		}
	}

	public FaultSet getGoalRiskSet() {
		FaultSet goalFaults = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS 
					?
							new PIRiskSet(solver.getSolverOptions().getRiskArity()) 
			: 
				new BDDRiskSet());
		for(Proposition subgoal : this.getProblem().getGoalAction().getPreconditions()) {
			FactHeader precHeader = this.getFactSpike().get(subgoal.getIndex());

			// If precHeader isn't in the propositions, there is no solution
			if(precHeader == null) {
				goalFaults = 
					(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS 
							?
									new PIRiskSet(solver.getSolverOptions().getRiskArity()) 
					: 
						new BDDRiskSet());
				break;
			}

			FaultyFactLevelInfo fli = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, precHeader.getPropositionIndex());

			goalFaults.or(fli.getFaults());
		}

		return goalFaults;
	}





	protected boolean reachedFixedPoint(boolean addedLevel){
		boolean hasConverged = false;

		boolean goalsMet = containsSolution();

		//fixed point if: goalsMet and labels static or goalsMet and 5 after

		if(levelsPastGoalsMet > 5) {
			return true;
		}
		else if(goalsMet){	
			levelsPastGoalsMet++;
			for(FactHeader factHeader : this.getFactSpike().getFactsByRank(this.getFactSpike().getCurrentRank() - 1)) {
				FaultyFactLevelInfo fliNow = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, factHeader.getPropositionIndex());
				FaultyFactLevelInfo fliPrev = (FaultyFactLevelInfo)factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
				FaultSet faults1 = fliNow.getFaults();
				FaultSet faults2 = fliPrev.getFaults();
				if(!faults1.equals(faults2)) {
					return false;					
				}
			}
			return true;
		}
		return !addedLevel;
	}





	@Override
	public String toString() {
		String str = "Frisky Solver:\n";
		str += factSpike.toString();
		str += actionSpike.toString();
		return str;
	}





}
