package edu.usu.cs.planner;

import edu.usu.cs.heuristic.stanplangraph.incomplete.FaultyHeuristic;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.IncompletePINode;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.RiskSolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;



public class RelaxedPlanSolver extends DefaultSolver implements Solver {
	IncompleteBDDNode startNode;
	public RelaxedPlanSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
		heuristic = new FaultyHeuristic(problem, domain, this);
		startNode = new IncompleteBDDNode(problem.getInitialState(), null, null, this);
	
	}

	public FaultSet getExplanation(){
		return startNode.getExplanation();
	}

}
