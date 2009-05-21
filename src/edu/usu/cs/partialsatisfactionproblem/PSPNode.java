package edu.usu.cs.partialsatisfactionproblem;

import java.util.*;

import edu.usu.cs.heuristic.IHeuristic;
import edu.usu.cs.pddl.domain.*;

public class PSPNode{

	protected final ConsistentLiteralSet state;
	protected final ActionInstance action;
	protected final PSPNode parent;
	
	protected final Problem problem;
	protected final List<ActionInstance> actionInstances;
	
	// Cost to get to this action
	protected final double gvalue;
	protected double hvalue = -1; // -1 means unititialized
	
	protected IHeuristic heuristic;
	
	protected double utilityUpToNow;
	protected double costUpToNow;
	
	protected final HashMap<LiteralInstance, Boolean> goalsAchieved;
	protected final HashMap<LiteralInstance, Double> goalUtilities;

	public PSPNode(ConsistentLiteralSet currentState,
			ActionInstance actionToGetHere, PSPNode parent, Problem problem,
			HashMap<LiteralInstance, Double> goalUtilities, List<ActionInstance> actionInstances,
			IHeuristic heuristic) {

		this.state = currentState;
		this.action = actionToGetHere;
		this.parent = parent;
		this.problem = problem;
		this.actionInstances = actionInstances;
		this.heuristic = heuristic;
		this.goalUtilities = goalUtilities;
		
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
			this.utilityUpToNow = parent.utilityUpToNow;
		}
		
		// TODO: Figure out which goals have been achieved by the action (that haven't been achieved yet)
		// Set them to true, add the utility to utilityUpToNow
		
		
		// Calculate costUpToNow
		if(this.parent == null) {
			costUpToNow = 0;
		} else {
			costUpToNow = this.parent.costUpToNow + action.getCost();
		}
		
		if(this.parent == null) {
			gvalue = 0;
		} else {
			gvalue = utilityUpToNow - costUpToNow;
		}
	}
	
	public double getHeuristicValue() {
		if(hvalue == -1) {
			hvalue = heuristic.getValue(state);
		}
		return hvalue;
	}
	
	public double getFValue() {
		return gvalue + getHeuristicValue();
	}
	
	public double getGValue() {
		return gvalue;
	}

}
