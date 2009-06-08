package edu.usu.cs.search.astar;

import java.util.*;

import edu.usu.cs.heuristic.IHeuristic;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;

/**
 * Node holds the current state and a link to its parent node, 
 * as well as the action taken to get to this state from parent.
 * @author jrobertson
 *
 */
public class AStarNode extends AbstractStateNode {


	protected final Problem problem;

	// Cost to get to this action
	protected final double gvalue; // TODO: currently cost is just 1 per action and needs to change
	protected double hvalue = -1; // -1 means unititialized

	protected IHeuristic heuristic;

	public AStarNode(
			ConsistentLiteralSet currentState, 
			ActionInstance actionToGetHere, 
			AStarNode parent, 
			Problem problem, 
			IHeuristic heuristic) {
		this.state = currentState;
		this.action = actionToGetHere;
		this.parent = parent;
		this.problem = problem;
		if(this.parent == null) {
			gvalue = 0;
		} else {
			gvalue = parent.gvalue + 1;
		}
		this.heuristic = heuristic;
	}


	protected List<StateNode> createSubsequentNodes(
			List<ConsistentLiteralSet> subsequentStates,
			List<ActionInstance> subsequentActions){
		List<StateNode> subsequentNodes = new ArrayList<StateNode>();
		for(int stateIndex = 0; stateIndex < subsequentStates.size(); stateIndex++){
			subsequentNodes.add(new AStarNode(
					subsequentStates.get(stateIndex),
					subsequentActions.get(stateIndex),
					this, 
					problem, 
					heuristic));
		}


		return subsequentNodes;
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
		return gvalue + H_WEIGHT * getHeuristicValue();
	}

}
