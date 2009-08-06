package edu.usu.cs.search.incomplete;

import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FriskyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.ehc.EnforcedHillClimbingSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FriskyEHCSearch extends EnforcedHillClimbingSearch{
	private FriskyHeuristic riskHeuristic;

	public FriskyEHCSearch(Domain domain, Problem problem,
			List<IncompleteActionInstance> actionInstances,
			FFRiskySolutionEvaluator riskySolutionEvaluator,
			SearchStatistics searchStatistics) throws IllDefinedProblemException {
		super(domain,problem, actionInstances, riskySolutionEvaluator, searchStatistics);
		//this.searchStatistics = searchStatistics;

		this.riskHeuristic = new FriskyHeuristic(problem, domain);
	}



	@Override
	public void initialize() {
		startNode =  new FFRiskyNode(problem.getInitialState(), new FriskyHeuristic(problem, domain));
	}




}
