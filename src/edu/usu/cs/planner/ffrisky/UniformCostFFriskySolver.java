package edu.usu.cs.planner.ffrisky;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.incomplete.FriskySearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class UniformCostFFriskySolver extends DefaultSolver {
	//protected IncompleteProblem incompleteProblem = null; 
	public UniformCostFFriskySolver(Domain domain, Problem problem, SearchStatistics searchStatistics) throws IllDefinedProblemException
	{
		super(domain, problem,searchStatistics);
		//this.incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		search = new FriskySearch(domain, problem, actionInstances, new FFRiskySolutionEvaluator(domain, problem, actionInstances,problem,searchStatistics), searchStatistics);
		search.initialize();
		
//		System.out.println("Search algorithm: " + search.getClass().getSimpleName());
//		//search.addNode(this.problem.getInitialNode());
//
//		// Create initial node
//		System.out.println("Initial Node:\n" + this.problem.getInitialNode());
//
//		// Create goal node
//		System.out.println("Goal:\n" + this.problem.getGoalAction());
//
//		// Get actions
//		System.out.println("Action count: " + this.problem.getActions().size());
//
//		// Get the plan
//		//System.out.print("Branching factor for each iteration: ");

	}
	
//	public List<IncompleteActionInstance> run() {
//		return search.getPath();
//	}
//	

}
