package edu.usu.cs.astar;

import java.util.*;

import edu.usu.cs.heuristic.IHeuristic;
import edu.usu.cs.pddl.domain.*;

/**
 * Node holds the current state and a link to its parent node, 
 * as well as the action taken to get to this state from parent.
 * @author jrobertson
 *
 */
public class Node {

	protected static final double H_WEIGHT = 5.0;
	protected final ConsistentLiteralSet state;
	protected final ActionInstance action;
	protected final Node parent;
	
	protected final Problem problem;
	protected final List<ActionInstance> actionInstances;
	
	// Cost to get to this action
	protected final double gvalue; // TODO: currently cost is just 1 per action and needs to change
	protected double hvalue = -1; // -1 means unititialized
	
	protected IHeuristic heuristic;
	
	public Node(
			ConsistentLiteralSet currentState, 
			ActionInstance actionToGetHere, 
			Node parent, 
			Problem problem, 
			List<ActionInstance> actionInstances, 
			IHeuristic heuristic) {
		this.state = currentState;
		this.action = actionToGetHere;
		this.parent = parent;
		this.problem = problem;
		this.actionInstances = actionInstances;
		if(this.parent == null) {
			gvalue = 0;
		} else {
			gvalue = parent.gvalue + 1;
		}
		this.heuristic = heuristic;
	}
	
	public double getHeuristicValue() {
		if(hvalue == -1)
			hvalue = heuristic.getValue(state);
		return hvalue;
	}
	
	public double getFValue() {
		return gvalue + H_WEIGHT * getHeuristicValue();
	}
	
	public double getGValue() {
		return gvalue;
	}
	
	/**
	 * 
	 * @returnlist of actions that are applicable to the state.
	 */
	public List<Node> getSubsequentNodes() {
		List<ActionInstance> subsequentActions = new ArrayList<ActionInstance>();
		List<ConsistentLiteralSet> subsequentStates = new ArrayList<ConsistentLiteralSet>();
		
		// Get the applicable actions
		for(ActionInstance action : actionInstances){
			if(action.preConditionSatisfied(state)) {
				subsequentActions.add(action);
				subsequentStates.add(action.perform(state));
			}
		}
		
		List<Node> subsequentNodes = new ArrayList<Node>();
		
		for(int stateIndex = 0; stateIndex < subsequentStates.size(); stateIndex++) {
			Node nodeToAdd = new Node(
					subsequentStates.get(stateIndex),
					subsequentActions.get(stateIndex),
					this, 
					problem, 
					actionInstances,
					heuristic);
			
			// Run through the nodes and see if any of them are identical to their grandparent
			// If they are, don't add it
			if (nodeToAdd.parent != null && 
					nodeToAdd.parent.parent != null && 
					nodeToAdd.getState().equals(nodeToAdd.parent.parent.getState())) {
				continue;
			}
			
			subsequentNodes.add(nodeToAdd);
		}
		
		
		return subsequentNodes;
	}

	public ConsistentLiteralSet getState() {
		return state;
	}

	public Node getParent() {
		return parent;
	}

	public ActionInstance getAction() {
		return action;
	}
}
