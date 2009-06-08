package edu.usu.cs.search.psp;

import java.util.HashMap;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.LiteralInstance;

public interface UtilityFunction {

	double evaluate(HashMap<LiteralInstance, Boolean> goals);
}
