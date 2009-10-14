package edu.usu.cs.planner.ffrisky;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class GreedyBestFirstFFriskySolver extends DefaultSolver {
	public GreedyBestFirstFFriskySolver(Domain domain, Problem problem, SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics, solverOptions);
		
		search = new PreferredOperatorDeferredEvaluationSearch(
				domain, problem, actionInstances, 
				new FFRiskySolutionEvaluator(domain, problem, actionInstances,problem,searchStatistics), 
				searchStatistics, solverOptions);
		search.initialize();
	}
}
