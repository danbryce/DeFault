package edu.usu.cs.search.astar;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Problem;
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
			ActionInstance actionToGetHere, 
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
				List<ActionInstance> subsequentActions){
		subsequentNodes= new ArrayList<StateNode>();
		for(ActionInstance maction : subsequentActions){
			IncompleteActionInstance action = (IncompleteActionInstance)maction;
			Set<Proposition> newState = new HashSet<Proposition>(this.state);
			newState.removeAll(action.getDeleteEffects());
			newState.addAll(action.getAddEffects());
			newState.addAll(action.getPossibleAddEffects());
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
