package edu.usu.cs.heuristic;

import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.StateNode;

public interface Heuristic {
	public double[] getValue(StateNode abstractStateNode);

	public Set<ActionInstance> getHelpfulActions();
}
