package edu.usu.cs.search.astar;

import java.util.*;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;

/**
 * Node holds the current state and a link to its parent node, 
 * as well as the action taken to get to this state from parent.
 * @author jrobertson
 *
 */
public class AStarNode extends AbstractStateNode {


	public AStarNode(
			Set<Proposition> currentState, 
			IncompleteActionInstance actionToGetHere, 
			AStarNode parent, 
			Problem problem, 
			Heuristic heuristic) {
		this.state = currentState;
		this.action = actionToGetHere;
		this.parent = parent;
		this.problem = problem;
		gvalue = new double[1];
		if(this.parent == null) {
			gvalue[0] = 0;
		} else {
			gvalue[0] = parent.gvalue[0] + 1;
		}
		this.heuristic = heuristic;
	}

	public AStarNode(){

	}




	public List<StateNode> createSubsequentNodes(
				List<IncompleteActionInstance> subsequentActions){
		subsequentNodes = new ArrayList<StateNode>();
		for(IncompleteActionInstance action : subsequentActions){
			Set<Proposition> newState = new HashSet<Proposition>(this.state);
			newState.removeAll(action.getDeleteEffects());
			newState.addAll(action.getAddEffects());
			subsequentNodes.add(new AStarNode(
					newState,
					action,
					this, 
					problem, 
					heuristic));
		}


		return subsequentNodes;
	}




}
