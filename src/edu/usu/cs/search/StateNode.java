package edu.usu.cs.search;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public interface StateNode extends Comparable<StateNode>{

	public double[] getHeuristicValue();	
	public double[] getFValue();
	public double[] getGValue();

	public int getDimension();
	public ActionInstance getAction();
	public StateNode getParent();
	public Set<Proposition> getState();
	public List<StateNode> getSubsequentNodes();
	public List<StateNode> createSubsequentNodes(
			List<ActionInstance> actionInstances);
	public List<ActionInstance> getRelevantActions();

	
	
}
