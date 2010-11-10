package edu.usu.cs.heuristic.stanplangraph.classic;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.AbstractActionSpike;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.AbstractFactSpike;
import edu.usu.cs.heuristic.stanplangraph.AbstractPlanningGraph;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;

public class ClassicalRelaxedPlanningGraph extends AbstractPlanningGraph {





	public ClassicalRelaxedPlanningGraph(Problem problem, Domain domain, Solver solver) {
		super(problem, domain, solver);
	}

	protected void initializePlanningGraph(StateNode node) {
		super.initializePlanningGraph(node);
		this.factSpike= null;
		this.factSpike = new ClassicalFactSpike(globalFactHeaders, this, tempPreconditionActionCountMap, preconditionActionMap, solver);
		this.actionSpike = null;
		this.actionSpike = new ClassicalActionSpike(factSpike, globalActionHeaders, globalFactHeaders, this, solver);

		// Create the fact spike rank 0
		for (Proposition proposition : node.getState()) {
			//if(solver.getRelevantFacts() == null || solver.getRelevantFacts().contains(proposition.getIndex()))
				this.getFactSpike().addFact(proposition, remainingActions);
		}	
		this.getFactSpike().incrementRank();

	}


	protected void setActionLevelInfo() {
		//	System.out.println("Level: " + (actionSpike.getCurrentRank()-1));


		for(ActionHeader actionHeader : actionSpike.getActionsByRank(actionSpike.getCurrentRank()-1)){

			ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
			ActionLevelInfo aliPrev = actionSpike.getExistingActionLevelInfo(actionSpike.getCurrentRank()-2, actionHeader.getIndex());
			if(!actionLevelInfoChanged(actionHeader) && aliPrev != null){				
				ali.getSupportingFacts().addAll(aliPrev.getSupportingFacts());
				ali.setChanged(false);
				ali.setCost(aliPrev.getCost());
				continue;
			}


			if(actionHeader.isNoop()){
				//risks to action are same as risks to fact
				int index = actionHeader.getPreconditions().nextSetBit(0);
				FactHeader prec = globalFactHeaders.get(index);
				ali.getSupportingFacts().add(prec);
				FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, prec.getPropositionIndex());
				ali.setCost(fli.getCost());
			}
			else{
				int cost = 1; //cost of action
				for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
					ali.getSupportingFacts().add(factHeader);
					FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
					cost += fli.getCost();
				}
				ali.setCost(cost);
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
			FactLevelInfo fliPrev = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, fact.getPropositionIndex());


			fli.getAllSupporters().addAll(fliPrev.getAllSupporters());


			boolean changed = propositionLevelInfoChanged(fli, fliPrev);

			if(!changed){
				fli.setChosenSupporters(new HashSet<ActionHeader>(fliPrev.getChosenSupporters()));
				fli.setChanged(false);
				fli.setCost(fliPrev.getCost());
				continue;
			}


			Set<ActionHeader> supportingActions = fli.getAllSupporters();
			Set<ActionHeader> chosenSupportingActions = new HashSet<ActionHeader>();

			int supporterCost = Integer.MAX_VALUE;
			ActionHeader prevSupporter = null;
			if(fliPrev.getChosenSupporters().size() == 1){
				prevSupporter = fliPrev.getChosenSupporters().iterator().next(); 
			}
			if(prevSupporter != null && prevSupporter.isNoop()){
				chosenSupportingActions.add(prevSupporter);
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, prevSupporter.getIndex());
				supporterCost = ali.getCost();
			}
			else{
				ActionHeader actionsWithLowestCost = null;

				for (ActionHeader actionHeader : supportingActions) {
					ActionLevelInfo ali = actionSpike.getActionLevelInfo(actionSpike.getCurrentRank()-1, actionHeader.getIndex());
					int cost = ali.getCost();
					if ( actionsWithLowestCost == null ||
							//actionHeader.isNoop() || 
							//( !actionsWithLowestCost.isNoop() && 
									cost < supporterCost
									//) 
					) {
						supporterCost = cost;
						actionsWithLowestCost = actionHeader;										
					} 
				}

				chosenSupportingActions.add(actionsWithLowestCost);
			}
			//			if(chosenSupportingActions.size() == 0){
			//				System.out.println("no support");
			//			}
			//			else{
			//				System.out.println("Supporting " + fact.getName() + " with " + actionsWithLowestCost.getName());
			//			}

			// Add the critical/possible risks to the fact
			fli.setChosenSupporters(chosenSupportingActions);
			fli.setCost(supporterCost);
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
		return //containsSolution() ||
		!addedLevel;
	}






}
