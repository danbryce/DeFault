package edu.usu.cs.search;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.search.psp.PSPNode;

public interface StateNode extends Comparable<StateNode>{

	public double getHeuristicValue();	
	public double getFValue();
	public double getGValue();

	public ConsistentLiteralSet getState();

	public ActionInstance getAction();

	public StateNode getParent();
	public List<StateNode> getSubsequentNodes(List<ActionInstance> actions);

	
}
