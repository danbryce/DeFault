package edu.usu.cs.planner.ffrisky;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.incomplete.FriskySearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class UniformCostFFriskySolver extends DefaultSolver {
	private static Logger logger = Logger.getLogger(UniformCostFFriskySolver.class.getName()); 
	
	//protected IncompleteProblem incompleteProblem = null; 
	public UniformCostFFriskySolver(Domain domain, Problem problem, SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException
	{
		super(domain, problem,searchStatistics, solverOptions);
		//this.incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		if (solverOptions.isUseJDDGValue()) {
			List<ActionInstance> newActions = new ArrayList<ActionInstance>();
			for (ActionInstance action : actionInstances) {
				newActions.add(action);
			}
			actionInstances = newActions;
		}
		
		search = new FriskySearch(domain, problem, actionInstances, new FFRiskySolutionEvaluator(domain, problem, actionInstances,problem,searchStatistics), searchStatistics, solverOptions);
		search.initialize();
		
//		logger.debug("Search algorithm: " + search.getClass().getSimpleName());
//		//search.addNode(this.problem.getInitialNode());
//
//		// Create initial node
//		logger.debug("Initial Node:\n" + this.problem.getInitialNode());
//
//		// Create goal node
//		logger.debug("Goal:\n" + this.problem.getGoalAction());
//
//		// Get actions
//		logger.debug("Action count: " + this.problem.getActions().size());
//
//		// Get the plan
//		//logger.debug("Branching factor for each iteration: ");

	}
	
//	public List<IncompleteActionInstance> run() {
//		return search.getPath();
//	}
//	

}
