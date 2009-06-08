package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.List;

import edu.usu.cs.heuristic.IHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.astar.AStarNode;
import edu.usu.cs.search.psp.PSPNode;

public class AbstractStateNode implements StateNode {

	protected ConsistentLiteralSet state = null;
	protected ActionInstance action = null;
	protected StateNode parent = null;
	
	protected Problem problem = null;
	
	// Cost to get to this action
	protected double gvalue;
	protected double hvalue = -1; // -1 means unititialized
	
	protected IHeuristic heuristic = null;

	protected static final double H_WEIGHT = 5.0;

	
	public double getHeuristicValue() {
		if(hvalue == -1)
			hvalue = heuristic.getValue(this);
		return hvalue;
	}
	
	public double getFValue() {
		return gvalue + H_WEIGHT * getHeuristicValue();
	}
	
	public double getGValue() {
		return gvalue;
	}

	public ConsistentLiteralSet getState() {		
		return state;
	}

	public ActionInstance getAction() {
		// TODO Auto-generated method stub
		return action;
	}

	public StateNode getParent() {
		// TODO Auto-generated method stub
		return parent;
	}

	/**
	 * 
	 * @returnlist of actions that are applicable to the state.
	 */
	public List<StateNode> getSubsequentNodes(List<ActionInstance> actionInstances) {
		List<ActionInstance> subsequentActions = new ArrayList<ActionInstance>();
		List<ConsistentLiteralSet> subsequentStates = new ArrayList<ConsistentLiteralSet>();
		
		// Get the applicable actions
		for(ActionInstance action : actionInstances){
			if(action.preConditionSatisfied(state)) {
				subsequentActions.add(action);
				subsequentStates.add(action.perform(state));
			}
		}
		
		List<StateNode> subsequentNodes = createSubsequentNodes(subsequentStates, subsequentActions);
		List<StateNode> toRemove = new ArrayList<StateNode>();
		for(int stateIndex = 0; stateIndex < subsequentNodes.size(); stateIndex++) {
			StateNode nodeToAdd = subsequentNodes.get(stateIndex);
				
			// Run through the nodes and see if any of them are identical to their grandparent
			// If they are, don't add it
			if (nodeToAdd.getParent() != null && 
					nodeToAdd.getParent().getParent() != null && 
					nodeToAdd.getState().equals(nodeToAdd.getParent().getParent().getState())) {
				toRemove.add(nodeToAdd);
			}
			
			
		}
		
		
		return subsequentNodes;
	}

	protected List<StateNode> createSubsequentNodes(
			List<ConsistentLiteralSet> subsequentStates,
			List<ActionInstance> subsequentActions){
		return new ArrayList<StateNode>();
	}

	@Override
	public int compareTo(StateNode o) {
		double cmp = this.getFValue() - o.getFValue();
		return (cmp < 0 ? -1 : (cmp > 0 ? 1 : 0));
	}

}
