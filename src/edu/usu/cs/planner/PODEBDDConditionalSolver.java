package edu.usu.cs.planner;

import java.util.List;
import java.util.Set;

import jdd.bdd.BDD;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FaultyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.IncompleteBDDConditionalNode;
import edu.usu.cs.search.PreferredOperatorDeferredEvaluationConditionalSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.RiskSolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class PODEBDDConditionalSolver extends DefaultSolver implements Solver {
public PODEBDDConditionalSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
			throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
		metricDimension = 2;
		heuristic = new FaultyHeuristic(problem, domain, this);
		search = new PreferredOperatorDeferredEvaluationConditionalSearch(
				domain, 
				problem, 
				actionInstances, 
				new RiskSolutionEvaluator(domain, problem, searchStatistics), 
				searchStatistics, 
				this
				);
//		IncompletePINode startNode = new IncompletePINode(problem.getInitialState(), null, null, this);
//		startNode.
			IncompleteBDDConditionalNode startNode = new IncompleteBDDConditionalNode(problem.getInitialState(), null, null, this);
		search.initialize(startNode);
		
	}
}
