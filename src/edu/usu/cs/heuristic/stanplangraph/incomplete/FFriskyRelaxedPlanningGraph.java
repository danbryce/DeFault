package edu.usu.cs.heuristic.stanplangraph.incomplete;

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
import edu.usu.cs.heuristic.stanplangraph.StanPlanningGraph;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;

public class FFriskyRelaxedPlanningGraph extends StanPlanningGraph {

	protected int levelsPastGoalsMet= 0;



	//	public FFriskyRelaxedPlanningGraph(IncompleteProblem problem) {
	//		super(problem);
	//
	//	}

	public FFriskyRelaxedPlanningGraph(Problem problem, Domain domain, SolverOptions solverOptions) {
		super(problem, domain, solverOptions);
	}


	private boolean actionLevelInfoChanged(ActionHeader actionHeader){
		if(actionSpike.getCurrentRank() < 2)
			return true;

		boolean changed = false;
		for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
			FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
			if(fli.isChanged()){
				changed = true;
				break;
			}
		}
		for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
			FactHeader factHeader = factSpike.get(possPre.getIndex());
			if(factHeader == null){	}
			else { 
				//precondition is present,
				FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
				if(fli.isChanged()){
					changed = true;
					break;
				}
			}
		}		
		return changed;
	}

	protected void setActionLevelInfo() {
		//System.out.println("Level: " + (actionSpike.getCurrentRank()-1));


		for(ActionHeader actionHeader : actionSpike.getActionsByRank(actionSpike.getCurrentRank()-1)){

			//			if(!actionSpike.preconditionRisksChanged(actionHeader, actionSpike.getCurrentRank())){
			//				actionSpike.copyRisksFromPreviousLevel(actionHeader, actionSpike.getCurrentRank());
			//				continue;
			//			}



			ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
			ActionLevelInfo aliPrev = actionSpike.getExistingActionLevelInfo(actionSpike.getCurrentRank()-2, actionHeader.getIndex());
			if(!actionLevelInfoChanged(actionHeader) && aliPrev != null){				
				//ali.setCriticalRisks(new GeneralizedRiskSet(aliPrev.getCriticalRisks()));
				ali.setCriticalRisks(aliPrev.getCriticalRisks());
				//ali.setPossibleRisks(new GeneralizedRiskSet(aliPrev.getPossibleRisks()));				
				ali.setPossibleRisks(aliPrev.getPossibleRisks());
				ali.getSupportingFacts().addAll(aliPrev.getSupportingFacts());
				ali.setChanged(false);


				continue;
			}


			if(actionHeader.isNoop()){
				//risks to action are same as risks to fact
				int index = actionHeader.getPreconditions().nextSetBit(0);
				FactHeader prec = globalFactHeaders.get(index);
				FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, index);
				GeneralizedRiskSet criticalRisks = fli.getCriticalRisks();
				GeneralizedRiskSet possibleRisks = fli.getPossibleRisks();

				ali.setCriticalRisks(criticalRisks);
				ali.setPossibleRisks(possibleRisks);
				ali.getSupportingFacts().add(prec);



				if(ali.getCriticalRisks().size() > 0 || ali.getPossibleRisks().size() > 0){
					logger.debug("Noop " + actionHeader + " has risks: " + criticalRisks.size() +  " " + possibleRisks.size());
				}
			}
			else{
				GeneralizedRiskSet criticalRisks = ali.getCriticalRisks(); 
				//new GeneralizedRiskSet(getSolverOptions().getRiskArity());
				//GeneralizedRiskSet possibleRisks = new GeneralizedRiskSet();

				//take union of precondition possible and critical risks
				for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
					FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
					criticalRisks.union(fli.getCriticalRisks());
					criticalRisks.union(fli.getPossibleRisks());
					ali.getSupportingFacts().add(factHeader); 
				}
				for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
					FactHeader factHeader = factSpike.get(possPre.getIndex());
					if(factHeader == null){
						//If precondition is not present, then incur a risk
						Risk r = Risk.getRiskFromIndex(Risk.PRECOPEN, actionHeader.getName(), possPre.getName());
						criticalRisks.add(r);
					}
					else { 
						//precondition is present,
						FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());

						//if no possible risks for precondition, then add no risks
						//else if precondition is at risk, there is a higher order interaction
						if(fli.getPossibleRisks().size() == 0){
							criticalRisks.union(fli.getCriticalRisks());
						}
						else {
							Risk r = Risk.getRiskFromIndex(Risk.PRECOPEN, actionHeader.getName(), possPre.getName());
							GeneralizedRiskSet oprs = new GeneralizedRiskSet(fli.getPossibleRisks().getMaxEltSize());
							oprs.add(r);
							GeneralizedRiskSet grs = new GeneralizedRiskSet(fli.getPossibleRisks());
							//grs.union(fli.getCriticalRisks());
							oprs.crossProduct(grs);
							criticalRisks.union(oprs);

						}

						ali.getSupportingFacts().add(factHeader);
					}
				}
				//ali.setSupportingFacts(supportingFacts);
				ali.setCriticalRisks(criticalRisks);
				//ali.getCriticalRisks().addAll(possibleRisks); //all precondition possible risks become critical because action is executed 
				//ali.setPossibleRisks(possibleRisks); 

				if(aliPrev != null){
					//ActionLevelInfo aliPrev = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-2, actionHeader.getIndex());
					ali.setChanged(!aliPrev.getCriticalRisks().equals(ali.getCriticalRisks()));
				}



				if(ali.getCriticalRisks().size() > 0 || ali.getPossibleRisks().size() > 0){
					logger.debug("Act " + actionHeader.getName() + " " + ali.getCriticalRisks().size() + " " + ali.getPossibleRisks().size());
				}
			}
			//			System.out.println("Act Supported by: " + ali.getActionHeader().getName());
			//			for(FactHeader fh : ali.getSupportingFacts()){
			//				System.out.println(fh.getName());
			//			}
		}
	}

	private boolean propositionLevelInfoChanged(FactLevelInfo fli, FactLevelInfo fliPrev){
		boolean changed = false;
		if(factSpike.getCurrentRank() == 2){//prev level was initial level
			changed = true;
		}
		else if(fli.getAllSupporters().size() == fliPrev.getAllSupporters().size()){ 
			//same number of supporters, need to check if supporters changed
			for(ActionHeader a : fli.getAllSupporters()){
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(getActionSpike().getCurrentRank()-1, a.getIndex()); 
				if(ali.isChanged()){
					changed = true;
					break;
				}					
			}
		}
		else{//got new supporters
			changed = true;
		}

		return changed;
	}

	protected void setPropositionLevelInfo() {

		Collection<FactHeader> applicableFacts = this.getFactSpike().getFactsByRank(
				this.getFactSpike().getCurrentRank()-1);

		for (FactHeader fact : applicableFacts) {
			FactLevelInfo fli = factSpike.getFactLevelInfo(getFactSpike().getCurrentRank()-1, fact.getPropositionIndex());

			//copy previous supporters, new supporters were taken care of when they were added
			FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());

			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());

			boolean changed = propositionLevelInfoChanged(fli, fliPrev);

			fli.getTrueSupporters().addAll(fliPrev.getTrueSupporters());
			fli.getPossibleSupporters().addAll(fliPrev.getPossibleSupporters());


			if(!changed){
				fli.setCriticalRisks(fliPrev.getCriticalRisks());
				fli.setPossibleRisks(fliPrev.getPossibleRisks());
				fli.setChosenSupporters(new HashSet<ActionHeader>(fliPrev.getChosenSupporters()));
				continue;
			}

			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();

			Map<ActionHeader, GeneralizedRiskSet> actCriticalRisks = new HashMap<ActionHeader, GeneralizedRiskSet>();
			Map<ActionHeader, GeneralizedRiskSet> actPossibleRisks = new HashMap<ActionHeader, GeneralizedRiskSet>();

			int riskSize = getSolverOptions().getRiskArity();
			for (ActionHeader actionHeader : supportingActions) {
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
				actCriticalRisks.put(actionHeader, ali.getCriticalRisks());
				actPossibleRisks.put(actionHeader, new GeneralizedRiskSet(ali.getCriticalRisks()));
				if(fli.getPossibleSupporters().contains(actionHeader)){
					Risk r = Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, actionHeader.getName(), fact.getName());
					actPossibleRisks.get(actionHeader).add(r);
				}
			}

			//Map<ActionHeader, GeneralizedRiskSet> sortedCriticalRisks = sortActionsWithRisks(unsortedCriticalRisks);
			GeneralizedRiskSet criticalRisks = fli.getCriticalRisks(); //new GeneralizedRiskSet(riskSize);
			//criticalRisks.addEmpty();
			GeneralizedRiskSet possibleRisks = fli.getPossibleRisks();//new GeneralizedRiskSet(riskSize);
			possibleRisks.addEmpty();
			while (actPossibleRisks.size() > 0) {
				GeneralizedRiskSet bestRiskSet = null;
				ActionHeader bestAct = null;

				for(ActionHeader a : actPossibleRisks.keySet()){
					GeneralizedRiskSet incumbentRiskSet = null;
					GeneralizedRiskSet aRiskSet = actPossibleRisks.get(a);


					if(bestRiskSet == null){
						bestRiskSet = new GeneralizedRiskSet(aRiskSet);
						bestRiskSet.crossProduct(possibleRisks);
						bestAct = a;
					}
					else {

						incumbentRiskSet = new GeneralizedRiskSet(aRiskSet);
						incumbentRiskSet.crossProduct(possibleRisks);

						int cmp = incumbentRiskSet.compareTo(bestRiskSet);
						if( cmp == -1 ||
							(cmp == 0 && a.isNoop()) ||
							(cmp == 0 && actionSpike.getActRank(a) < actionSpike.getActRank(bestAct))
						){
							bestRiskSet = incumbentRiskSet;
							bestAct = a;
						}
					}								
				}
				if(chosenSupportingActions.size() == 0 ||						
						bestRiskSet != null && bestRiskSet.compareTo(possibleRisks) == -1 
				){

					possibleRisks = bestRiskSet;
					chosenSupportingActions.add(bestAct);
					actPossibleRisks.remove(bestAct);

					criticalRisks.union(actCriticalRisks.get(bestAct));
					if(possibleRisks.onlyEmpty() && criticalRisks.onlyEmpty()){
						break;
					}
				}
				else{
					break;
				}

				if(!getSolverOptions().isUseMultipleSupportersInPlanningGraph()){
					break;
				}
				else if(chosenSupportingActions.size() > 0){
					break;
				}

			}

			fli.setCriticalRisks(criticalRisks);
			fli.setPossibleRisks(possibleRisks);
			fli.setChosenSupporters(chosenSupportingActions);

			if(!fliPrev.getChosenSupporters().equals(fli.getChosenSupporters()) ||
					!fliPrev.getCriticalRisks().equals(fli.getCriticalRisks()) ||
					!fliPrev.getPossibleRisks().equals(fli.getPossibleRisks())
			){
				fli.setChanged(true);
			}


		}
	}



	protected void setPropositionLevelInfo_old() {

		// All actions who's preconditions are satisfied by the current level's
		// props
		// We are assuming at this time that the actions have their risks set
		//		List<ActionHeader> applicableActions = this.getActionSpike()
		//		.getActionsByRank(this.getActionSpike().getCurrentRank() - 1);

		// All facts from the previous state and applicableActions'
		// addEffects/possAddEffects
		Collection<FactHeader> applicableFacts = this.getFactSpike().getFactsByRank(
				this.getFactSpike().getCurrentRank()-1);

		for (FactHeader fact : applicableFacts) {
			FactLevelInfo fli = factSpike.getFactLevelInfo(getFactSpike().getCurrentRank()-1, fact.getPropositionIndex());

			//copy previous supporters, new supporters were taken care of when they were added
			FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());

			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());


			boolean changed = false;
			if(factSpike.getCurrentRank() == 2){//prev level was initial level
				changed = true;
			}
			else if(fli.getAllSupporters().size() == fliPrev.getAllSupporters().size()){ 
				//same number of supporters, need to check if supporters changed
				for(ActionHeader a : fli.getAllSupporters()){
					ActionLevelInfo ali = actionSpike.getActionLevelInfo(getActionSpike().getCurrentRank()-1, a.getIndex()); 
					if(ali.isChanged()){
						changed = true;
						break;
					}					
				}
			}
			else{//got new supporters
				changed = true;
			}

			fli.getTrueSupporters().addAll(fliPrev.getTrueSupporters());
			fli.getPossibleSupporters().addAll(fliPrev.getPossibleSupporters());


			if(!changed){
				fli.setCriticalRisks(fliPrev.getCriticalRisks());
				fli.setPossibleRisks(fliPrev.getPossibleRisks());
				fli.setChosenSupporters(new HashSet<ActionHeader>(fliPrev.getChosenSupporters()));
				continue;
			}

			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();

			//			if(supportingActions.size() == 0){
			//				supportingActions = null;
			//			}

			// All actions with fact in addEffects/possAddEffects
			//			Set<ActionHeader> actions = new HashSet<ActionHeader>();
			//			for (ActionHeader actionHeader : fact.getSupporterHeaders()) {
			//				// If the action has the fact as a precondition or possible
			//				// precondition,
			//				// add it to actions
			//				//				if (actionHeader.getAddEffects().get(fact.getPropositionIndex()) == true
			//				//						|| actionHeader.getPossAddEffects()
			//				//						.get(fact.getPropositionIndex()) == true) {
			//				if(applicableActions.contains(actionHeader)){
			//					actions.add(actionHeader);
			//				}
			//			}
			//fli.setPossibleSupporters(actions);  //includes unlisted effect supporters

			int fewestCriticalRisks = Integer.MAX_VALUE;
			List<ActionHeader> actionsWithFewestCriticalRisks = new ArrayList<ActionHeader>();

			// Get all actions with fewest critical risks
			for (ActionHeader actionHeader : supportingActions) {
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
				if (ali.getCriticalRisks().size() < fewestCriticalRisks) {
					actionsWithFewestCriticalRisks.clear();
					actionsWithFewestCriticalRisks.add(actionHeader);
					fewestCriticalRisks = ali.getCriticalRisks().size();										
				} else if (ali.getCriticalRisks().size() == fewestCriticalRisks) {
					actionsWithFewestCriticalRisks.add(actionHeader);
				}
			}

			int fewestPossibleRisks = Integer.MAX_VALUE;
			ActionHeader actionWithFewestPossibleRisks = null;

			// TODO: Change this so that instead of picking the fewest possible risks
			// Select the critical risk set that has the fewest possible risks associated
			// with it.
			// Of the actionsWithFewestCriticalRisks, pick the one with the
			// fewest possible risks
			for (ActionHeader actionHeader : actionsWithFewestCriticalRisks) {
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
				int numPossibleRisks = ali.getPossibleRisks().size();
				if(fli.getPossibleSupporters().contains(actionHeader)){
					numPossibleRisks += 1;
				}

				if (numPossibleRisks < fewestPossibleRisks || 
						(numPossibleRisks <= fewestPossibleRisks && actionHeader.isNoop())) {
					actionWithFewestPossibleRisks = actionHeader;
					fewestPossibleRisks = numPossibleRisks;
				}
			}
			chosenSupportingActions.add(actionWithFewestPossibleRisks);

			ActionLevelInfo alim = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionWithFewestPossibleRisks.getIndex());

			GeneralizedRiskSet criticalRisks = new GeneralizedRiskSet(alim.getCriticalRisks());
			GeneralizedRiskSet possibleRisks = new GeneralizedRiskSet(alim.getPossibleRisks());
			//possibleRisks.addAll(alim.getPossibleRisks()); //don't propagate possiblerisks

			Set<ActionHeader> possSupporters = fli.getPossibleSupporters();
			if(possSupporters.contains(actionWithFewestPossibleRisks)){
				//				String s = "UnlistedEffect " + actionWithFewestPossibleRisks.getName() + " " + fact.getName();
				//				Risk r = null;
				//				if(!globalRiskHeaders.containsKey(s)) {
				Risk r = Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, actionWithFewestPossibleRisks.getName(), fact.getName());
				//					globalRiskHeaders.put(s, r);
				//				}
				//				r = globalRiskHeaders.get(s);
				possibleRisks.add(r);
			}


			if(getSolverOptions().isUseMultipleSupportersInPlanningGraph()){
				// If there are any actionsWithFewestCriticalRisks that have the
				// same critical risk set as actionsWithFewestPossibleRisks, the
				// possible risks are the intersection of all these possible risk
				// sets
				for (ActionHeader actionHeader : actionsWithFewestCriticalRisks) {
					ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());

					GeneralizedRiskSet actPossRisks = new GeneralizedRiskSet(ali.getPossibleRisks());
					if(fli.getPossibleSupporters().contains(actionHeader)){
						Risk r = Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, actionHeader.getName(), fact.getName());
						actPossRisks.add(r);
					}

					GeneralizedRiskSet intersectRisks = new GeneralizedRiskSet(getSolverOptions().getRiskArity());
					intersectRisks.union(actPossRisks);
					intersectRisks.crossProduct(possibleRisks);

					GeneralizedRiskSet interSectCriticalRisk = new GeneralizedRiskSet(criticalRisks);
					interSectCriticalRisk.crossProduct(ali.getCriticalRisks());

					if (criticalRisks.size() == interSectCriticalRisk.size() &&
							intersectRisks.size() < possibleRisks.size()) {



						possibleRisks.crossProduct(intersectRisks);
						//criticalRisks.addAll(criticalRisks);
						chosenSupportingActions.add(actionHeader);
					}
				}

			}

			// Add the critical/possible risks to the fact
			fli.setCriticalRisks(criticalRisks);
			fli.setPossibleRisks(possibleRisks);
			fli.setChosenSupporters(chosenSupportingActions);

			if(!fliPrev.getChosenSupporters().equals(fli.getChosenSupporters()) ||
					!fliPrev.getCriticalRisks().equals(fli.getCriticalRisks()) ||
					!fliPrev.getPossibleRisks().equals(fli.getPossibleRisks())
			){
				fli.setChanged(true);
			}

			for(ActionHeader a : chosenSupportingActions){
				if(!a.isNoop()){
					logger.debug("Fact " + fact.getName() + " supported by " + a.getName());
				}
			}


			if(fli.getCriticalRisks().size() > 0 || fli.getPossibleRisks().size() > 0){
				logger.debug("Fact " + fli.getFact().getName() + " " + fli.getCriticalRisks().size() + " " + fli.getPossibleRisks().size());
			}

		}
	}





	//final static int MAX_LEVELS = 100;
	public GeneralizedRiskSet getGoalRiskSet() {
		// Once it has converged, we're almost done
		// We just need to get all the critical risks in the goal action preconditions
		GeneralizedRiskSet goalCriticalRisks = new GeneralizedRiskSet(getSolverOptions().getRiskArity());
		for(Proposition subgoal : this.getProblem().getGoalAction().getPreconditions()) {
			FactHeader precHeader = this.getFactSpike().get(subgoal.getIndex());

			// If precHeader isn't in the propositions, there is no solution
			if(precHeader == null) {
				return null;
			}

			// Add the critical risks from the subgoal
			//			goalCriticalRisks.addAll(precHeader.getCriticalRisks(this.getActionSpike().getCurrentRank()));
			//			goalCriticalRisks.addAll(precHeader.getPossibleRisks(this.getActionSpike().getCurrentRank()));
			FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, precHeader.getPropositionIndex());
			goalCriticalRisks.union(fli.getCriticalRisks());
			goalCriticalRisks.union(fli.getPossibleRisks());
		}

		return goalCriticalRisks;
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
				GeneralizedRiskSet critRisks1 = fliNow.getCriticalRisks();
				GeneralizedRiskSet critRisks2 = fliPrev.getCriticalRisks();
				GeneralizedRiskSet possRisks1 = fliNow.getPossibleRisks();
				GeneralizedRiskSet possRisks2 = fliPrev.getPossibleRisks();
				//				if(!critRisks1.equals(critRisks2)) {
				//					hasConverged = false;
				//					break;
				//				}
				if(!possRisks1.equals(possRisks2)) {
					hasConverged = false;
					break;
				}
			}

		}
		if(levelsPastGoalsMet > 0){
			hasConverged = true;
		}
		return hasConverged;
	}


	protected void initializePlanningGraph(StateNode node) {
		super.initializePlanningGraph(node);
		if(node instanceof FFRiskyNode){
			FFRiskyNode fn = (FFRiskyNode)node;
			for (Proposition proposition : fn.getPropositions().keySet()) {
				GeneralizedRiskSet priorRisks = fn.getPropositions().get(proposition);
				priorRisks.removeAll(fn.getCriticalRisks());
				if(priorRisks.size() > 0){
					this.getFactSpike().getFactLevelInfo(0, proposition.getIndex()).setPossibleRisks(priorRisks);
				}
			}
		}
		levelsPastGoalsMet = 0;
	}



	@Override
	public String toString() {
		String str = "Frisky Solver:\n";
		str += factSpike.toString();
		str += actionSpike.toString();
		return str;
	}





}
