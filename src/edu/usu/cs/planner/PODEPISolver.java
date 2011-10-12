package edu.usu.cs.planner;

import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FaultyHeuristic;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.ClassicalSolutionEvaluator;
import edu.usu.cs.search.IncompletePINode;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.RiskSolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class PODEPISolver extends DefaultSolver implements Solver {

	public PODEPISolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
		metricDimension = 2;
		heuristic = new FaultyHeuristic(problem, domain, this);
		search = new PreferredOperatorDeferredEvaluationSearch(
				domain, 
				problem, 
				actionInstances, 
				new RiskSolutionEvaluator(domain, problem, searchStatistics, solverOptions), 
				searchStatistics, 
				this
				);
//		IncompletePINode startNode = new IncompletePINode(problem.getInitialState(), null, null, this);
//		startNode.
		IncompletePINode startNode = new IncompletePINode(problem.getInitialState(), null, null, this);
		search.initialize(startNode);
		
	}



}
