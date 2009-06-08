package edu.usu.cs.heuristic;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.search.StateNode;

public interface IHeuristic {
	public double getValue(StateNode node);
}
