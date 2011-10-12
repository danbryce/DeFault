package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;

public class AbstractStateNode implements StateNode {

	//protected Set<Proposition> state = null;
	protected ActionInstance action = null;
	protected StateNode parent = null;

	//protected Problem problem = null;

	// Cost to get to this action
	protected PlanMetric[] gvalue = null;
	protected PlanMetric[] hvalue = null;
	protected PlanMetric[] fvalue = null;
	//protected Heuristic heuristic = null;
	//protected List<StateNode> subsequentNodes = null;
	//protected List<ActionInstance> relevantActions = null;
	protected int hash;
	protected boolean hashInitialized = false;
	//protected SolverOptions solverOptions = null;
	protected Solver solver = null;
	protected boolean heuristicComputed = false;
	
	
	public AbstractStateNode(ActionInstance action, StateNode parent, Solver solver) {
		super();
		this.action = action;
		this.parent = parent;
		this.solver = solver;
		int dimension = solver.getMetricDimension();
		//gvalue = new PlanMetric[dimension];
		hvalue = new PlanMetric[dimension];
		//fvalue = new PlanMetric[dimension];
		//this.subsequentNodes = new ArrayList<StateNode>();
	}

	public AbstractStateNode(StateNode node) {
		this.solver  = ((AbstractStateNode)node).solver;
		int dimension = solver.getMetricDimension();
		//gvalue = new PlanMetric[dimension];
		hvalue = new PlanMetric[dimension];
		//fvalue = new PlanMetric[dimension];
	}

//	protected void setRelevantActions(List<ActionInstance> relevantActions) {
//		this.relevantActions = relevantActions;
//	}
//
//	public List<ActionInstance> getRelevantActions() {
//		return relevantActions;
//	}

	//	protected double[] H_WEIGHT = null;


	public AbstractStateNode() {
		// TODO Auto-generated constructor stub
	}

	public boolean isHeuristicComputed(){
		return heuristicComputed;
	}

	public PlanMetric[] getHeuristicValue() {
		return hvalue;
	}

	public PlanMetric[] getFValue() {
		for (int i = 0; i < fvalue.length; i++) {				
			fvalue[i] = getGValue()[i].aggregate(getHeuristicValue()[i]);
		}
		return fvalue;
	}

	public PlanMetric[] getGValue() {
		return gvalue;
	}

	// public ConsistentLiteralSet getState() {
	// return state;
	// }

	public ActionInstance getAction() {
		return action;
	}

	public StateNode getParent() {
		return parent;
	}

	public int compareTo(StateNode o) {
		return 0;
	}

	public  StateNode getSuccessorNode(ActionInstance action1) {
		return null;
	}
	
	public List<StateNode> createSubsequentNodes(Set<ActionInstance> subsequentActions,
												 Set<ActionInstance> toIgnore) {
		//Set<ActionInstance> toIgnore = new HashSet<ActionInstance>();
//		if(actionsToIgnore != null)
//			toIgnore.addAll(actionsToIgnore);
		List<StateNode> newNodes = new ArrayList<StateNode>();
		for(ActionInstance act : subsequentActions){
			if(toIgnore != null && toIgnore.contains(act)){
				continue;
			}
			StateNode node = getSuccessorNode(act);
			if(node != null && !node.equals(this) && (node.getParent() == null || node.getParent().getParent() == null || !node.getParent().getParent().equals(node)) ){
				newNodes.add(node);
				//subsequentNodes.add(node);
			}
		}
		return newNodes;
	}

	
	public List<StateNode> getSubsequentNodes() {
		//return subsequentNodes;
		return null;
	}

	public boolean isActionApplicable(ActionInstance action) {
		// TODO Auto-generated method stub
		return false;
	}

//	public void setHeuristic(Heuristic heuristic) {
//		this.heuristic = heuristic;
//	}

	public void setAction(ActionInstance action2) {
		this.action = action2;
	}

	public void setParent(StateNode parent) {
		this.parent = parent;
	}


	@Override
	public int hashCode() {
		if (hashInitialized) {
			return hash;
		}

		hash = Proposition.getNodeHash(this.getState());

		hashInitialized = true;
		return hash;
	}

	@Override
	public boolean equals(StateNode o) {
		return true;
	}
	@Override
	public boolean equals(Object o) {
		return equals((StateNode)o);
	}

	@Override
	public Set<Proposition> getState() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean satisfies(Set<Proposition> goal) {
		// TODO Auto-generated method stub
		return false;
	}

	
	@Override
	public String getPlanString() {
		
		StringBuilder s = new StringBuilder();
		if(parent != null){
			s.append(parent.getPlanString());
			s.append(action.getName()).append("\n");
			s.append(getFailureExplanationString()).append("\n");
			//s.append(getStateString()).append("\n");
		}
		else{
			s.append(getFailureExplanationString()).append("\n");
			//s.append(getStateString()).append("\n");
		}

		return s.toString();
	}

	public String getStateString() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getFailureExplanationString() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
