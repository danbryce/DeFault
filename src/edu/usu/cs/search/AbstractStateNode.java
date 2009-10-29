package edu.usu.cs.search;

import java.util.BitSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class AbstractStateNode implements StateNode {

	protected Set<Proposition> state = null;
	protected ActionInstance action = null;
	protected StateNode parent = null;
	
	protected Problem problem = null;
	
	// Cost to get to this action
	protected double[] gvalue = null;
	protected double[] hvalue = null; 
	protected double[] fvalue = null; 
	protected Heuristic heuristic = null;
	protected List<StateNode> subsequentNodes = null;
	protected Set<ActionInstance> preferredOperators = null;
	protected List<ActionInstance> relevantActions = null;
	protected int hash;
	protected boolean hashInitialized = false;
	
	protected void setRelevantActions(List<ActionInstance> relevantActions) {
		this.relevantActions = relevantActions;
	}

	public List<ActionInstance> getRelevantActions() {
		return relevantActions;
	}

	protected double[] H_WEIGHT = null;
	protected int dimension = 1;
	
	public int getDimension() {
		return dimension;
	}

	public void setDimension(int dimension) {
		this.dimension = dimension;
	}

	public double[] getHeuristicValue() {
		if(hvalue == null){
			hvalue = heuristic.getValue(this);
			preferredOperators = heuristic.getHelpfulActions();
			if(parent == null){
				List<ActionInstance> mRelevantActions = heuristic.getRelevantActions();
				if(mRelevantActions != null){
					relevantActions =  mRelevantActions;
				}
			}
			H_WEIGHT = new double[dimension];
			for(int i = 0; i < dimension; i++){
				H_WEIGHT[i] = 1;
			} 
		}
		return hvalue;
	}
	
	public double[] getFValue() {
		if(fvalue == null){
			fvalue = new double[dimension];
			for(int i = 0; i < dimension; i++){
				fvalue[i] = getGValue()[i] + getHeuristicValue()[i] * H_WEIGHT[i];
			}
		}
		return fvalue;
	}
	
	public double[] getGValue() {
		if(gvalue == null){
			gvalue = new double[dimension];
			for(int i =0 ; i < dimension ; i++){
				if(parent == null){
					gvalue[i] = 0.0;
				}
				else{
					gvalue[i] = parent.getGValue()[i] + action.getCost();
				}
			}
		}
		return gvalue;
	}

//	public ConsistentLiteralSet getState() {		
//		return state;
//	}

	public ActionInstance getAction() {
		// TODO Auto-generated method stub
		return action;
	}

	public StateNode getParent() {
		// TODO Auto-generated method stub
		return parent;
	}


	
	public int compareTo(StateNode o) {
		double cmp = this.getFValue()[0] - o.getFValue()[0];
		return (cmp < 0 ? -1 : (cmp > 0 ? 1 : 0));
	}

	@Override
	public Set<Proposition> getState() {
		// TODO Auto-generated method stub
		return state;
	}

	
	public List<StateNode> createSubsequentNodes(
			List<ActionInstance> actionInstances) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StateNode> getSubsequentNodes() {
		// TODO Auto-generated method stub
		return subsequentNodes;
	}

	public Heuristic getHeuristic() {
		return heuristic;
	}

	public void setHeuristic(Heuristic heuristic) {
		this.heuristic = heuristic;
	}

	public void setAction(ActionInstance action2) {
		this.action = action2;
	}

	public void setParent(StateNode parent) {
		this.parent = parent;
	}

	public void setState(Set<Proposition> keySet) {
		state=keySet;	
	}

//	@Override
//	public int hashCode() {
//		if(hashInitialized) {
//			return hash;
//		}
//		
//		BitSet bitSet = new BitSet(32);
//		
//		// Get the first 32 propositions
//		List<PredicateDef> predicates = problem.getDomain().getPredicates();
//		for(int i = 0; i < 32; i++) {
//			if(state.contains(predicates.get(i))) {
//				bitSet.set(i);
//			}
//		}
//		
//		hash = bitSetToInt(bitSet);
//		
//		hashInitialized = true;
//		return hash;
//	}
//	
//	private int bitSetToInt(BitSet bitSet) {
//	    int temp = 0;
//
//	    for (int i = 0; i < 32; i++) {
//	    	if (bitSet.get(i)) {
//	    		temp |= 1 << i;
//	    	}
//	    }
//
//	    return temp;
//	}
//	
//	@Override
//	public boolean equals(Object o) {
//		// TODO Auto-generated method stub
//		return false;
//	}
}
