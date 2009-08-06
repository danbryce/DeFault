package edu.usu.cs.search.incomplete.psp;

import java.util.*;
import java.util.logging.Logger;

import javax.sql.rowset.Predicate;

import edu.usu.cs.heuristic.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;

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
	
	protected static Logger logger = Logger.getLogger(FriskyPSPSearch.class.getName());
	
	protected final Search search;
	protected UtilityFunction goalUtilities;

	
	public FriskyPSPSearch(Domain domain, Problem problem, List<IncompleteActionInstance> actionInstances, SolutionEvaluator solutionEvaluator, SearchStatistics searchStatistics) throws IllDefinedProblemException {
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics);
		search = new AStarSearch(domain, problem, actionInstances, solutionEvaluator, searchStatistics);
		
		//TODO hack, should move this into the problem and parse it from problem file
		Map<Proposition, Double> goalUtils = new HashMap<Proposition, Double>();
			for(Proposition goal : problem.getGoalAction().getPreconditions()){
					goalUtils.put(goal, 100.0);
				
			}
		this.goalUtilities = new AdditiveUtilityFunction(goalUtils);
		this.heuristic = new FFRiskyPSPHeuristic();
		
	}

	public void initialize(){
		search.getOpen().add(new FFRiskyPSPNode(problem.getInitialState(), goalUtilities, heuristic, problem));
	}
	
	public List<IncompleteActionInstance> getPath() {
		return search.getPath();
	}
	
	
	

}
