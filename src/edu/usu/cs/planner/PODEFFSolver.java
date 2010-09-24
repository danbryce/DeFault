package edu.usu.cs.planner;

import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.ClassicalSolutionEvaluator;
import edu.usu.cs.search.IncompletePINode;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class PODEFFSolver extends DefaultSolver implements Solver {

	public PODEFFSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
		metricDimension = 1;
		heuristic = new StanHeuristic(problem, domain, this);
		search = new PreferredOperatorDeferredEvaluationSearch(
				domain, 
				problem, 
				actionInstances, 
				new ClassicalSolutionEvaluator(), 
				searchStatistics, 
				this
				);
//		IncompletePINode startNode = new IncompletePINode(problem.getInitialState(), null, null, this);
//		startNode.
		ClassicalNode startNode = new ClassicalNode(problem.getInitialState(), null, null, this);
		search.initialize(startNode);
		
	}

	

}
