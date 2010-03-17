package edu.usu.cs.search.incomplete.psp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.usu.cs.heuristic.stanplangraph.incomplete.psp.FFRiskyPSPRelaxedPlanHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.psp.AdditiveUtilityFunction;
import edu.usu.cs.search.psp.UtilityFunction;

public class FriskyPSPSearch extends DefaultSearch implements Search {
	
	protected static Logger logger = LoggerFactory.getLogger(FriskyPSPSearch.class.getName());
	
	protected final Search search;
	protected UtilityFunction goalUtilities;

	
	public FriskyPSPSearch(
			Domain domain, Problem problem, List<ActionInstance> actionInstances, SolutionEvaluator solutionEvaluator, SearchStatistics searchStatistics,
			SolverOptions solverOptions
			) throws IllDefinedProblemException {
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics, solverOptions);
		search = new AStarSearch(domain, problem, actionInstances, solutionEvaluator, searchStatistics, solverOptions);
		
		//TODO hack, should move this into the problem and parse it from problem file
		Map<Proposition, Double> goalUtils = new HashMap<Proposition, Double>();
			for(Proposition goal : problem.getGoalAction().getPreconditions()){
					goalUtils.put(goal, 100.0);
				
			}
		this.goalUtilities = new AdditiveUtilityFunction(goalUtils);
		this.heuristic = new FFRiskyPSPRelaxedPlanHeuristic(problem, domain, goalUtilities, solverOptions);
		
	}

	public void initialize(){
		
		StateNode startNode = new FFRiskyPSPNode(problem.getInitialState(), goalUtilities, heuristic, problem, solverOptions);
		startNode.getFValue();
		search.setRelevantActions(startNode.getRelevantActions());
		logger.info("# acts = " + startNode.getRelevantActions().size());
		search.getOpen().add(startNode);
	}
	
	public List<ActionInstance> getPath() {
		return search.getPath();
	}
	
	
	

}
