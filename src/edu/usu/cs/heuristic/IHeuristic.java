package edu.usu.cs.heuristic;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;

public interface IHeuristic {
	public double getValue(ConsistentLiteralSet state);
}
