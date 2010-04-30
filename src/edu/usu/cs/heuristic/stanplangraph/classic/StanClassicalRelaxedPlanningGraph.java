package edu.usu.cs.heuristic.stanplangraph.classic;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.StanPlanningGraph;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.SolverOptions;

public class StanClassicalRelaxedPlanningGraph extends StanPlanningGraph {



	// boolean areNewFacts = true; // False if no more actions/facts can be
	// added to the solver

	//	public StanSolver(Problem problem, Node startNode) {
	//		super(problem);
	////		this.remainingActions = new ArrayList<Action>(problem.getActions());
	////		// this.remainingPropositions = getAllExistingPropositions();
	////		this.factSpike = new FactSpike(globalFactHeaders, this);
	////		this.actionSpike = new ActionSpike(factSpike, globalActionHeaders, globalFactHeaders, globalRiskHeaders, this);
	////
	////		// Create the fact spike rank 0 and action spike rank 1
	////		for (Proposition proposition : startNode.getPropositions().keySet()) {
	////			this.getFactSpike().addFact(proposition);
	////		}
	////		this.getFactSpike().incrementRank();
	//	}

//	public StanClassicalRelaxedPlanningGraph(IncompleteProblem problem) {
//		super(problem);
//
//	}


	//	/**
	//	 * Adds a level to the spikes. Returns true if any new facts are added to
	//	 * the fact spike. If false, no facts were added and therefore no new action
	//	 * will be added in the future, so it will forever return false and will no
	//	 * longer add more levels.
	//	 */
	//	public boolean addLevel() {
	//
	//		// // If there are no more facts that were added the last time, there
	//		// // cannot be any more actions or facts added, so just return.
	//		// if (!areNewFacts) {
	//		// return false;
	//		// }
	//
	//		// Get the number of facts before adding the level
	//		int factCount = this.getFactSpike().size();
	//
	//		// Add all new propositions' noop actions
	//		List<FactHeader> newFactHeaders = this.getFactSpike()
	//				.getNewFactsByRank(this.getFactSpike().getCurrentRank() - 1);
	//		for (FactHeader factHeader : newFactHeaders) {
	//			actionSpike.addNoopAction(factHeader);
	//		}
	//
	//		// Add all new applicable actions (doing this adds all new add/possAdd
	//		// effects)
	//		addApplicableActionsAndFacts();
	//
	//		// Increment ranks of factSpike and actionSpike
	//		factSpike.incrementRank();
	//		actionSpike.incrementRank();
	//
	//		// If the number of facts before this level is the same as the current
	//		// number of facts, no facts were added and therefore no new action will
	//		// be added.
	//		if (factCount == factSpike.size()) {
	//			return false;
	//		}
	//		return true;
	//	}



	public StanClassicalRelaxedPlanningGraph(Problem problem, Domain domain, SolverOptions solverOptions) {
		super(problem, domain, solverOptions);
	}


	protected void setActionLevelInfo() {
	//	System.out.println("Level: " + (actionSpike.getCurrentRank()-1));


		for(ActionHeader actionHeader : actionSpike.getActionsByRank(actionSpike.getCurrentRank()-1)){

			ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());

			if(actionHeader.isNoop()){
				//risks to action are same as risks to fact
				int index = actionHeader.getPreconditions().nextSetBit(0);
				FactHeader prec = globalFactHeaders.get(index);
				ali.getSupportingFacts().add(prec);
			}
			else{
				//Set<FactHeader> supportingFacts = ali.getSupportingFacts();

				//take union of precondition possible and critical risks
				for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
					ali.getSupportingFacts().add(factHeader);
				}
//				for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
//					FactHeader factHeader = factSpike.get(possPre.getName());
//
//					if(factHeader == null){
//					}
//					else {
//						ali.getSupportingFacts().add(factHeader);
//					}
//				}
				//				ali.setSupportingFacts(supportingFacts);
			}
//			System.out.println("Act Supported by: " + ali.getActionHeader().getName());
//			for(FactHeader fh : ali.getSupportingFacts()){
//				System.out.println(fh.getName());
//			}
		}
	}



	protected void setPropositionLevelInfo() {

		// All facts from the previous state and applicableActions'
		// addEffects/possAddEffects
		Collection<FactHeader> applicableFacts = this.getFactSpike().getFactsByRank(
				this.getFactSpike().getCurrentRank()-1);

		for (FactHeader fact : applicableFacts) {
			FactLevelInfo fli = factSpike.getFactLevelInfo(getFactSpike().getCurrentRank()-1, fact.getPropositionIndex());

			//copy previous supporters, new supporters were taken care of when they were added
			FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());


			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());

			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();



			ActionHeader actionsWithLowestCost = null;

			// Get all actions with fewest critical risks
			for (ActionHeader actionHeader : supportingActions) {
				if (actionHeader.isNoop() || actionsWithLowestCost == null) {
					actionsWithLowestCost = actionHeader;										
				} 
			}
			chosenSupportingActions.add(actionsWithLowestCost);

//			if(chosenSupportingActions.size() == 0){
//				System.out.println("no support");
//			}
//			else{
//				System.out.println("Supporting " + fact.getName() + " with " + actionsWithLowestCost.getName());
//			}

			// Add the critical/possible risks to the fact
			fli.setChosenSupporters(chosenSupportingActions);
		}
	}



	//	public List<Action> getRelaxedPlan() {
	//
	//		while (!containsSolution()) {
	//			int rank = this.getFactSpike().getCurrentRank();
	//			if(!addLevel()) {
	//				return null;
	//			}
	//			if(this.getFactSpike().getCurrentRank() == rank) {
	//				// Adding levels won't do anything anymore, so return null
	//				return null;
	//			}
	//		}
	//		
	//		return super.getRelaxedPlan();
	//
	//
	//	}

	@Override
	public String toString() {
		String str = "Stan Solver:\n";
		str += factSpike.toString();
		str += actionSpike.toString();
		return str;
	}

	protected boolean reachedFixedPoint(boolean addedLevel){
		return containsSolution() || !addedLevel;
	}


	


}
