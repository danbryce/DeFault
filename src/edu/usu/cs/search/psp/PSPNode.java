package edu.usu.cs.search.psp;

import java.util.*;

import edu.usu.cs.heuristic.IHeuristic;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarNode;

public class PSPNode extends AbstractStateNode {


	public UtilityFunction getGoalUtilityFunction() {
		return goalUtilityFunction;
	}

	protected double utilityUpToNow;
	protected double costUpToNow;

	protected final HashMap<LiteralInstance, Boolean> goalsAchieved;
	protected final UtilityFunction goalUtilityFunction;

	public PSPNode(ConsistentLiteralSet currentState,
			ActionInstance actionToGetHere, PSPNode parent, Problem problem,
			UtilityFunction goalUtilityFunction, IHeuristic heuristic) {

		this.state = currentState;
		this.action = actionToGetHere;
		this.parent = parent;
		this.problem = problem;
		this.heuristic = heuristic;
		this.goalUtilityFunction = goalUtilityFunction;

		// Calculate utilityUpToNow
		if(this.parent == null) {
			// Set goalsAchieved to false for all subgoals
			Set<LiteralInstance> resultSet = new HashSet<LiteralInstance>();
			problem.getGoal().getLiteralsUsed(resultSet);
			goalsAchieved = new HashMap<LiteralInstance, Boolean>(resultSet.size());
			for(LiteralInstance instance : resultSet) {
				goalsAchieved.put(instance, new Boolean(false));
			}

			// No utility so far because no goals have been satisfied
			utilityUpToNow = 0;
		} else {
			// Copy all achieved 
			goalsAchieved = new HashMap<LiteralInstance, Boolean>(parent.goalsAchieved.size());
			for(LiteralInstance key : parent.goalsAchieved.keySet()) {
				goalsAchieved.put(key, parent.goalsAchieved.get(key));
			}

			// Set cumulative utility to the parent's and we'll add any utility from goals achieved by the action
			//this.utilityUpToNow = parent.utilityUpToNow;
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

		gvalue = utilityUpToNow - costUpToNow;
	}
	private void findAchievedGoals(
			HashMap<LiteralInstance, Boolean> goalsAchieved, Problem problem) {
		if(problem.getGoal() instanceof ConjunctionGoalDesc){
			ConjunctionGoalDesc cGoal = (ConjunctionGoalDesc)problem.getGoal();
			for(GoalDesc goal : cGoal.getSubGoals()){
				if(goal instanceof PredicateInstance){
					PredicateInstance pi = (PredicateInstance)goal;
					for(PredicateLiteral spi : state.getPredicateLiterals()){
						if(spi.getInstance().equals(pi)){
							goalsAchieved.put(pi, true);
						}
					}
				}
			}
		}
	}
	public double getHeuristicValue() {
		if(hvalue == -1)
			hvalue = heuristic.getValue(this);
		return hvalue;
	}
	public double getGValue() {
		return gvalue;
	}
	public double getFValue() {
		//System.out.println("PSP Fvalue");
		return gvalue + H_WEIGHT * getHeuristicValue();
	}



	protected List<StateNode> createSubsequentNodes(
			List<ConsistentLiteralSet> subsequentStates,
			List<ActionInstance> subsequentActions){
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
		double cmp = this.getFValue() - o.getFValue();
		return (cmp < 0 ? 1 : (cmp > 0 ? -1 : 0));
	}

}
