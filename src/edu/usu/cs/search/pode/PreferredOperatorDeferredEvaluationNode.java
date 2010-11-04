package edu.usu.cs.search.pode;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;

public interface PreferredOperatorDeferredEvaluationNode extends StateNode
{

	Set<ActionInstance> getPreferredOperators();
	void setPreferredOperators (Set<ActionInstance> acts);
	boolean deadEnd();
	boolean equals(PreferredOperatorDeferredEvaluationNode node);
	boolean equals(StateNode node);

}
