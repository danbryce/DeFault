package edu.usu.cs.search.psp;

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
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PSPSearch extends DefaultSearch implements Search {
	
	protected static Logger logger = Logger.getLogger(PSPSearch.class.getName());
	
	protected final Search search;
	protected UtilityFunction goalUtilities;

	
	public PSPSearch(Domain domain, Problem problem, List<IncompleteActionInstance> actionInstances) throws IllDefinedProblemException {
		//super(domain, problem, actionInstances, new PSPSolutionEvaluator());
		search = new AStarSearch(domain, problem, actionInstances, new PSPSolutionEvaluator(), searchStatistics);
		
		//TODO hack, should move this into the problem and parse it from problem file
		Map<Proposition, Double> goalUtils = new HashMap<Proposition, Double>();
			for(Proposition goal : problem.getGoalAction().getPreconditions()){
					goalUtils.put(goal, 100.0);
				
			}
		this.goalUtilities = new AdditiveUtilityFunction(goalUtils);

		
	}

	public void initialize(){
		search.getOpen().add(new PSPNode(problem.getInitialState(), null, null, problem, goalUtilities, heuristic));
	}
	
	public List<IncompleteActionInstance> getPath() {
		return search.getPath();
	}
	
	
	

}
