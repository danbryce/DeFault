package edu.usu.cs.search;

import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class AbstractStateNode implements StateNode {

	public Heuristic getHeuristic() {
		return heuristic;
	}

	public void setHeuristic(Heuristic heuristic) {
		this.heuristic = heuristic;
	}

	public void setAction(IncompleteActionInstance action2) {
		this.action = action2;
	}

	public void setParent(StateNode parent) {
		this.parent = parent;
	}

	public void setState(Set<Proposition> keySet) {
		state=keySet;	
	}
	protected Set<Proposition> state = null;
	protected IncompleteActionInstance action = null;
	protected StateNode parent = null;
	
	protected Problem problem = null;
	
	// Cost to get to this action
	protected double[] gvalue = null;
	protected double[] hvalue = null; 
	protected double[] fvalue = null; 
	protected Heuristic heuristic = null;
	protected List<StateNode> subsequentNodes = null;
	protected Set<IncompleteActionInstance> helpfulActions = null;
	
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
			helpfulActions = heuristic.getHelpfulActions();
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

	public IncompleteActionInstance getAction() {
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

	@Override
	public List<StateNode> createSubsequentNodes(
			List<IncompleteActionInstance> actionInstances) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StateNode> getSubsequentNodes() {
		// TODO Auto-generated method stub
		return subsequentNodes;
	}

	

}
