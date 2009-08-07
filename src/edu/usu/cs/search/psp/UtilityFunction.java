package edu.usu.cs.search.psp;

import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Proposition;

public interface UtilityFunction {

	double evaluate(Set<Proposition> goalsAchieved);
}
