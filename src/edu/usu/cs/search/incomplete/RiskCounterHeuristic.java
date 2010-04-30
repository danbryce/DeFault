package edu.usu.cs.search.incomplete;

import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;

public class RiskCounterHeuristic implements Heuristic {

	public RiskCounterHeuristic(Problem problem, Domain domain,
			SolverOptions solverOptions) {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<ActionInstance> getPreferredOperators() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ActionInstance> getRelevantActions() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public double[] getValue(StateNode abstractStateNode) {
		// TODO Auto-generated method stub
		return null;
	}

}
