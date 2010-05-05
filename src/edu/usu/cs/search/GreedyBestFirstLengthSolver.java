package edu.usu.cs.search;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffvanilla.AStarSolver;
import edu.usu.cs.search.astar.ClassicalSolutionEvaluator;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class GreedyBestFirstLengthSolver extends AStarSolver implements Solver {

	public GreedyBestFirstLengthSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
			throws IllDefinedProblemException {
		//super(domain, problem, searchStatistics, solverOptions);
		super();
		search = new PreferredOperatorDeferredEvaluationClassicalSearch(
				domain, problem, problem.getActions(), 
				new ClassicalSolutionEvaluator(), 
				searchStatistics, solverOptions);
		search.initialize();
	}

}
