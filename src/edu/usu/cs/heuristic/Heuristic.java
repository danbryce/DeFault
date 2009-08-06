package edu.usu.cs.heuristic;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public interface Heuristic {
	public double[] getValue(StateNode abstractStateNode);

	public Set<IncompleteActionInstance> getHelpfulActions();
}
