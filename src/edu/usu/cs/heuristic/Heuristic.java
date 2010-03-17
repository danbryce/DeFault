package edu.usu.cs.heuristic;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.search.StateNode;

public interface Heuristic {
	public double[] getValue(StateNode abstractStateNode);

	public Set<ActionInstance> getHelpfulActions();

	public List<ActionInstance> getRelevantActions();

	public Set<ActionInstance> getPreferredOperators();
}
