package edu.usu.cs.search.psp;

import java.util.HashMap;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public interface UtilityFunction {

	double evaluate(Set<Proposition> goalsAchieved);
}
