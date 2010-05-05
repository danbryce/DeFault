package edu.usu.cs.search;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.GreedyBestFirstFFriskySolver;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class GreedyBestFirstJDDFFriskySolver extends
		GreedyBestFirstFFriskySolver implements Solver {

	public GreedyBestFirstJDDFFriskySolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
			throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
	
	}

	@Override
	public List<ActionInstance> run() {
		try {
			search = new PreferredOperatorDeferredEvaluationBddSearch(
					domain, problem, actionInstances, 
					new FFRiskySolutionEvaluator(domain, problem, actionInstances,problem,searchStatistics), 
					searchStatistics, solverOptions);
		} catch (IllDefinedProblemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		search.initialize();
		return search.getPath();
	}
}
