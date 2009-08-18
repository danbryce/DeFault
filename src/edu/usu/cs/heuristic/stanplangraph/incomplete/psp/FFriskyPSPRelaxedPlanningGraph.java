package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.ActionSpike;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactSpike;
import edu.usu.cs.heuristic.stanplangraph.StanPlanningGraph;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFriskyRelaxedPlanningGraph;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.psp.UtilityFunction;

public class FFriskyPSPRelaxedPlanningGraph extends FFriskyRelaxedPlanningGraph {


	UtilityFunction utilityFunction = null;
	private List<IncompleteActionInstance> plan = null;
	double benefit = Double.MAX_VALUE;
	double cost = 0;
	
	public FFriskyPSPRelaxedPlanningGraph(Problem problem, Domain domain, UtilityFunction utilityFunction) {
		super(problem, domain);
		this.utilityFunction = utilityFunction;
	}


	protected void initializePlanningGraph(StateNode node) {
		this.remainingActions = new ArrayList<ActionInstance>(problem.getActions());
		this.factSpike = new FFRiskyPSPFactSpike(globalFactHeaders, this);
		this.actionSpike = new FFRiskyPSPActionSpike(factSpike, globalActionHeaders, globalFactHeaders, this);
		this.helpfulActions = new HashSet<ActionInstance>();
		//reset fact indices
		currentFactIndex = 0;
		for(Integer header : globalFactHeaders.keySet()){
			globalFactHeaders.get(header).setIndex(-1);
		}

		// Create the fact spike rank 0
		for (Proposition proposition : node.getState()) {
			this.getFactSpike().addFact(proposition);
			globalFactHeaders.get(proposition.getIndex()).setIndex(getAndIncrementFactIndex(proposition));
		}	
		this.getFactSpike().incrementRank();
		if(node instanceof FFRiskyNode){
			FFRiskyNode fn = (FFRiskyNode)node;
			for (Proposition proposition : fn.getPropositions().keySet()) {
				Set<Risk> priorRisks = fn.getPropositions().get(proposition);
				if(priorRisks.size() > 0){
					this.getFactSpike().getFactLevelInfo(0, proposition.getIndex()).setPossibleRisks(priorRisks);
				}
			}
		}
		levelsPastClassicalLevelOff = 0;
		this.benefit = Double.MAX_VALUE;
		this.cost = 0;
		this.plan = null;
	}

	protected void setActionLevelInfo() {
		//System.out.println("Level: " + (actionSpike.getCurrentRank()-1));

		super.setActionLevelInfo();

		for(ActionHeader actionHeader : actionSpike.getActionsByRank(actionSpike.getCurrentRank()-1)){


			FFRiskyPSPActionLevelInfo ali = (FFRiskyPSPActionLevelInfo) actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());

			if(actionHeader.isNoop()){
				int index = actionHeader.getPreconditions().nextSetBit(0);
				FFRiskyPSPFactLevelInfo fli = (FFRiskyPSPFactLevelInfo) factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, index);
				ali.setCost(fli.getCost());
			}
			else{

				//take union of precondition possible and critical risks
				for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
					FFRiskyPSPFactLevelInfo fli = (FFRiskyPSPFactLevelInfo) factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
					ali.setCost(ali.getCost()+fli.getCost());
				}
				for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
					FactHeader factHeader = factSpike.get(possPre.getName());
					if(factHeader == null){
					}
					else{
						FFRiskyPSPFactLevelInfo fli = (FFRiskyPSPFactLevelInfo) factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
						ali.setCost(ali.getCost()+fli.getCost());
					}
				}

			}
			//			System.out.println("Act Supported by: " + ali.getActionHeader().getName());
			//			for(FactHeader fh : ali.getSupportingFacts()){
			//				System.out.println(fh.getName());
			//			}
		}
	}



	protected void setPropositionLevelInfo() {



		List<FactHeader> applicableFacts = this.getFactSpike().getFactsByRank(
				this.getFactSpike().getCurrentRank()-1);

		for (FactHeader fact : applicableFacts) {
			FactLevelInfo fli = factSpike.getFactLevelInfo(getFactSpike().getCurrentRank()-1, fact.getPropositionIndex());

			//copy previous supporters, new supporters were taken care of when they were added
			FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());


			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());
			fli.getTrueSupporters().addAll(fliPrev.getTrueSupporters());
			fli.getPossibleSupporters().addAll(fliPrev.getPossibleSupporters());

			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();


			double leastCost = Double.MAX_VALUE;
			List<ActionHeader> actionsWithLeastCost = new ArrayList<ActionHeader>();

			// Get all actions with fewest critical risks
			for (ActionHeader actionHeader : supportingActions) {
				FFRiskyPSPActionLevelInfo ali = (FFRiskyPSPActionLevelInfo) actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
				if (ali.getCost() < leastCost) {
					actionsWithLeastCost.clear();
					actionsWithLeastCost.add(actionHeader);
					leastCost = ali.getCost();
				} else if (ali.getCost() == leastCost) {
					actionsWithLeastCost.add(actionHeader);

				}
			}


			int fewestCriticalRisks = Integer.MAX_VALUE;
			List<ActionHeader> actionsWithFewestCriticalRisks = new ArrayList<ActionHeader>();

			// Get all actions with fewest critical risks
			for (ActionHeader actionHeader : actionsWithLeastCost) {
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

			Set<Risk> criticalRisks = new HashSet<Risk>(alim.getCriticalRisks());
			Set<Risk> possibleRisks = new HashSet<Risk>(alim.getPossibleRisks());
			//possibleRisks.addAll(alim.getPossibleRisks()); //don't propagate possiblerisks

			Set<ActionHeader> possSupporters = fli.getPossibleSupporters();
			if(possSupporters.contains(actionWithFewestPossibleRisks)){
				Risk r = Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, actionWithFewestPossibleRisks.getName(), fact.getName());
				possibleRisks.add(r);
			}



			//			// If there are any actionsWithFewestCriticalRisks that have the
			//			// same critical risk set as actionsWithFewestPossibleRisks, the
			//			// possible risks are the intersection of all these possible risk
			//			// sets
			//			for (ActionHeader actionHeader : actionsWithFewestCriticalRisks) {
			//				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
			//		
			//				Set<Risk> actPossRisks = new HashSet<Risk>(ali.getPossibleRisks());
			//				if(fli.getPossibleSupporters().contains(actionHeader)){
			//					String s = "UnlistedEffect " + actionHeader.getName() + " " + fact.getName();
			//					Risk r = null;
			//					if(!globalRiskHeaders.containsKey(s)) {
			//						r = new Risk(Risk.UNLISTEDEFFECT, actionHeader.getName(), fact.getName());
			//						globalRiskHeaders.put(s, r);
			//					}
			//					r = globalRiskHeaders.get(s);
			//					actPossRisks.add(r);
			//				}
			//				
			//				Set<Risk> intersectRisks = new HashSet<Risk>();
			//				intersectRisks.addAll(actPossRisks);
			//				intersectRisks.retainAll(possibleRisks);
			//				
			//				Set<Risk> interSectCriticalRisk = new HashSet<Risk>(criticalRisks);
			//				interSectCriticalRisk.retainAll(ali.getCriticalRisks());
			//				
			//				if (criticalRisks.size() == interSectCriticalRisk.size() &&
			//						intersectRisks.size() < possibleRisks.size()) {
			//
			//					
			//
			//					possibleRisks.retainAll(intersectRisks);
			//					//criticalRisks.addAll(criticalRisks);
			//					chosenSupportingActions.add(actionHeader);
			//				}
			//			}
			//			


			// Add the critical/possible risks to the fact
			fli.setCriticalRisks(criticalRisks);
			fli.setPossibleRisks(possibleRisks);
			fli.setChosenSupporters(chosenSupportingActions);


			//			if(fli.getCriticalRisks().size() > 0 || fli.getPossibleRisks().size() > 0){
			//				System.out.println("Fact " + fli.fact.getName() + " " + fli.criticalRisks.size() + " " + fli.possibleRisks.size());
			//			}

		}
	}







	protected boolean reachedFixedPoint(boolean addedLevel){
		boolean hasConverged = false;

		if(addedLevel) {
		}
		else{ //couldn't add new facts, check if risks level off

			levelsPastClassicalLevelOff++;



			hasConverged = true;
			for(FactHeader factHeader : this.getFactSpike().getFactsByRank(this.getFactSpike().getCurrentRank() - 1)) {
				FFRiskyPSPFactLevelInfo fliNow = (FFRiskyPSPFactLevelInfo) factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, factHeader.getPropositionIndex());
				FFRiskyPSPFactLevelInfo fliPrev = (FFRiskyPSPFactLevelInfo) factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
				Set<Risk> critRisks1 = fliNow.getCriticalRisks();
				Set<Risk> critRisks2 = fliPrev.getCriticalRisks();
				Set<Risk> possRisks1 = fliNow.getPossibleRisks();
				Set<Risk> possRisks2 = fliPrev.getPossibleRisks();
				double cost1 = fliNow.getCost();
				double cost2 = fliPrev.getCost();
				if(!critRisks1.equals(critRisks2)) {
					hasConverged = false;
					break;
				}
				if(!possRisks1.equals(possRisks2)) {
					hasConverged = false;
					break;
				}
				if(cost1 != cost2) {
					hasConverged = false;
					break;
				}
			}

		}
		if(levelsPastClassicalLevelOff > 10){
			hasConverged = true;
		}
		return hasConverged;
	}


	public Set<Risk> getGoalRiskSet(Map<Proposition, Set<Risk>> goalsAchieved) {
		// Once it has converged, we're almost done
		// We just need to get all the critical risks in the goal action preconditions
		Set<Risk> allGoalsCriticalRisks = new HashSet<Risk>();
		for(Proposition subgoal : this.getProblem().getGoalAction().getPreconditions()) {
			FactHeader precHeader = this.getFactSpike().get(subgoal.getName());

			// If precHeader isn't in the propositions, there is no solution
			if(precHeader == null) {
				continue;
			}

			// Add the critical risks from the subgoal
			//			goalCriticalRisks.addAll(precHeader.getCriticalRisks(this.getActionSpike().getCurrentRank()));
			//			goalCriticalRisks.addAll(precHeader.getPossibleRisks(this.getActionSpike().getCurrentRank()));
			FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-1, precHeader.getPropositionIndex());
			
			Set<Risk> goalCriticalRisks = new HashSet<Risk>();			
			goalCriticalRisks.addAll(fli.getCriticalRisks());
			goalCriticalRisks.addAll(fli.getPossibleRisks());
			Set<Risk> priorRisks = goalsAchieved.get(subgoal);
			if(priorRisks != null){
				goalCriticalRisks.removeAll(priorRisks); //don't count risks already committed to goals
			}
			allGoalsCriticalRisks.addAll(goalCriticalRisks);
		}

		return allGoalsCriticalRisks;
	}


	private void getRelaxedPlan(Map<Proposition, Set<Risk>> goalsAcheived) {

		int level = this.getFactSpike().getCurrentRank()-1;
		Set<Proposition> goalAsPropositions = this.getProblem().getGoalAction().getPreconditions();
		Set<FactHeader> goal = new HashSet<FactHeader>();

		double utility = 0;

		//System.out.println("Extracting relaxed plan from level: " + level);


		// Convert the goal from propositions to factHeaders
		Set<Proposition> achievedGoals = new HashSet<Proposition>(); 
		for(Proposition proposition : goalAsPropositions) {
			//goal.add(factSpike.get(proposition.getName()));
			if(!goalsAcheived.keySet().contains(proposition)){
				FactHeader header = globalFactHeaders.get(proposition.getIndex());
				if(header != null){
					goal.add(header); 
					achievedGoals.add(proposition);
				}
			}
		}
		this.benefit = utilityFunction.evaluate(achievedGoals);


		// Get the relaxed plan as a parallel plan
		List<Set<ActionHeader>> parallelPlan = new ArrayList<Set<ActionHeader>>();
		for(int i = 0; i <= level; i++) {
			parallelPlan.add(new HashSet<ActionHeader>());
		}
		parallelPlan = solutionExtraction(goal, level, parallelPlan);

		// Testing only - output the parallel plan
		//		System.out.println("\nOutputting parallel plan");

		// Convert it from a parallel ActionHeader plan to a sequence of Actions

		plan = new ArrayList<IncompleteActionInstance>();
		for(int l = 0; l < parallelPlan.size(); l++) {
			//		for (Set<ActionHeader> parallelActions : parallelPlan) {
			//			System.out.print("rank " + l + " ");
			for (ActionHeader actionHeader : parallelPlan.get(l)) {
				if(!actionHeader.isNoop()) {
					IncompleteActionInstance action = actionHeaderToAction(actionHeader);
					//					System.out.print(action.getName() + " ");
					plan.add(action);
				}
			}
			//			System.out.println();
		}

		
		for(IncompleteActionInstance act : plan){
			this.cost += act.getCost();
		}

		//	System.out.println(plan.size());

		

	}

	private List<Set<ActionHeader>> solutionExtraction(Set<FactHeader> goal, int level, List<Set<ActionHeader>> parallelPlan) {
		if(level == 0) {
			//			Collections.reverse(parallelPlan);
			return parallelPlan;
		}

		//System.out.println("extract from: " + level);

		Set<FactHeader> subGoalsToBeAdded = new HashSet<FactHeader>();

		for (FactHeader subGoal : goal) {
			boolean hasNoop = false;

			FactLevelInfo fli = factSpike.getFactLevelInfo(level, subGoal.getPropositionIndex());

			if(level == 1){
				for(ActionHeader act : fli.getAllSupporters()){

					if(!act.isNoop()){
						helpfulActions.add(act.getAction());
					}
				}
			}

			for(ActionHeader actionHeader : fli.getChosenSupporters()){
				// Add the actions to the plan
				parallelPlan.get(level).add(actionHeader);

				// Add the preconditions of the actions to the goal
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(level-1, actionHeader.getIndex());
				subGoalsToBeAdded.addAll(ali.getSupportingFacts());
				//System.out.println("# crisks: " + ali.getCriticalRisks().size());
			}
		}

		return solutionExtraction(subGoalsToBeAdded, level - 1, parallelPlan);
	}


	public double getRelaxedPlanBenefit(
			Map<Proposition, Set<Risk>> goalsAchieved) {
		if(plan == null){
			getRelaxedPlan(goalsAchieved);
		}
		return benefit;
	}


	public double getRelaxedPlanCost(Map<Proposition, Set<Risk>> goalsAchieved) {
		if(plan == null){
			getRelaxedPlan(goalsAchieved);
		}
		return cost;
	}





}
