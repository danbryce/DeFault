package edu.usu.cs.search.psp;

import java.util.*;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public class PSPNode extends FFRiskyNode {


	public UtilityFunction getGoalUtilityFunction() {
		return goalUtilityFunction;
	}

	protected double utilityUpToNow;
	protected double costUpToNow;

	protected final Set<Proposition> goalsAchieved;
	protected final UtilityFunction goalUtilityFunction;

	public PSPNode(Set<Proposition> currentState,
			IncompleteActionInstance actionToGetHere, PSPNode parent, Problem problem,
			UtilityFunction goalUtilityFunction, Heuristic heuristic) {

		this.state = currentState;
		this.action = actionToGetHere;
		this.parent = parent;
		this.problem = problem;
		this.heuristic = heuristic;
		this.goalUtilityFunction = goalUtilityFunction;

		// Calculate utilityUpToNow
		if(this.parent == null) {
			// Set goalsAchieved to false for all subgoals
			
			goalsAchieved = new HashSet<Proposition>();
		

		} else {
			// Copy all achieved 
			goalsAchieved = new HashSet<Proposition>(parent.goalsAchieved.size());
			goalsAchieved.addAll( parent.goalsAchieved);
			}

		//set goals achieved in this state
		findAchievedGoals(goalsAchieved, problem);
		
		//set utility for all goals achieved so far
		this.utilityUpToNow += goalUtilityFunction.evaluate(goalsAchieved);

		// Calculate costUpToNow
		if(this.parent == null) {
			costUpToNow = 0;
		} else {
			costUpToNow = ((PSPNode)this.parent).costUpToNow + action.getCost();
		}
		gvalue = new double[1];
		gvalue[0] = utilityUpToNow - costUpToNow;
	}
	private void findAchievedGoals(
			Set<Proposition> goalsAchieved2, Problem problem) {
		for(Proposition goal : problem.getGoalAction().getPreconditions()) {
			if(state.contains(goal)){
				goalsAchieved.add(goal);
			}
		}		
	}
	



	protected List<StateNode> createSubsequentNodes(
			List<Set<Proposition>> subsequentStates,
			List<IncompleteActionInstance> subsequentActions){
		List<StateNode> subsequentNodes = new ArrayList<StateNode>();
		for(int stateIndex = 0; stateIndex < subsequentStates.size(); stateIndex++){
			subsequentNodes.add(new PSPNode(
					subsequentStates.get(stateIndex),
					subsequentActions.get(stateIndex),
					this, 
					problem, 
					goalUtilityFunction,
					heuristic));
		}


		return subsequentNodes;
	}

	@Override
	public int compareTo(StateNode o) {
		double cmp = this.getFValue()[0] - o.getFValue()[0];
		return (cmp < 0 ? 1 : (cmp > 0 ? -1 : 0));
	}

}
