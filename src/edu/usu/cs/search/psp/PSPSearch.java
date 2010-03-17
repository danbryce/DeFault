package edu.usu.cs.search.psp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import edu.usu.cs.heuristic.PSPUpperBound;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PSPSearch extends DefaultSearch implements Search {
	
	protected static Logger logger = Logger.getLogger(PSPSearch.class.getName());
	
	protected final Search search;
	protected UtilityFunction goalUtilities;

	
	public PSPSearch(Domain domain, Problem problem, List<ActionInstance> actionInstances, SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException {
		super(domain, problem, actionInstances, new PSPSolutionEvaluator(), searchStatistics, solverOptions);
		search = new AStarSearch(domain, problem, actionInstances, new PSPSolutionEvaluator(), searchStatistics, solverOptions);
		
		//TODO hack, should move this into the problem and parse it from problem file
		Map<Proposition, Double> goalUtils = new HashMap<Proposition, Double>();
			for(Proposition goal : problem.getGoalAction().getPreconditions()){
					goalUtils.put(goal, 100.0);
				
			}
		this.goalUtilities = new AdditiveUtilityFunction(goalUtils);
		this.heuristic = new PSPUpperBound();
		
	}

	public void initialize(){
		search.getOpen().add(new PSPNode(problem.getInitialState(), null, null, problem, goalUtilities, heuristic));
	}
	
	public List<ActionInstance> getPath() {
		return search.getPath();
	}
	
	
	

}
