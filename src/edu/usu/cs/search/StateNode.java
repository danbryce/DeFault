package edu.usu.cs.search;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.PlanMetric;

public interface StateNode extends Comparable<StateNode>{

	public PlanMetric[] getHeuristicValue();	
	public PlanMetric[] getFValue();
	public PlanMetric[] getGValue();
	
	public boolean isHeuristicComputed();

	public ActionInstance getAction();
	public StateNode getParent();
//	public Set<Proposition> getState();
	public List<StateNode> getSubsequentNodes();
	public List<StateNode> createSubsequentNodes(
			Set<ActionInstance> set, Set<ActionInstance> actionsToIgnore);
	//public List<ActionInstance> getRelevantActions();
	StateNode getSuccessorNode(ActionInstance action);
	public boolean satisfies(Set<Proposition> goal);
	public Set<Proposition> getState();
	public boolean equals(StateNode node);
	public int compareTo(StateNode node);

	
	
}
