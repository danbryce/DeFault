package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;

public class AbstractSearch implements Search {

	protected Domain domain = null;
	protected Problem problem = null;
	protected List<ActionInstance> actionInstances = null;
	
	protected PriorityQueue<StateNode> open = null;
	protected HashSet<StateNode> closed = null;
	
	protected final int whichHeuristic = 1;
	protected Heuristic heuristic = null;
	
	protected SolutionEvaluator solutionEvaluator = null;
	protected List<StateNode> solutions = null;
	protected SearchStatistics searchStatistics = null;
	protected Solver solver = null;
	
	public AbstractSearch(){
		
	}
			
	
	public AbstractSearch(
			Domain domain, 
			Problem problem, 
			List<ActionInstance> actionInstances, 
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics, 
			Solver solver
			) 
	throws IllDefinedProblemException
	{
		if(domain == null || problem == null)
		{
			throw new IllegalArgumentException("null domain/problem");
		}
		this.domain = domain;
		this.problem = problem;
		this.actionInstances = actionInstances;
		this.solutionEvaluator = solutionEvaluator;
		this.searchStatistics = searchStatistics;
		this.solver = solver;
		//this.heuristic = heuristic;
//		//System.out.print("Heuristic: ");
//		switch(whichHeuristic) {
//		case 0:
//			heuristic = new BFSHeuristic();
//			//System.out.println("Breadth First Search");
//			break;
//		case 1:
//			//heuristic = new StanHeuristic(problem, domain, solverOptions);
//			//System.out.println("Relaxed Plan Graph");
//			break;
//		case 2:
//			heuristic = new GoalCountHeuristic(problem.getGoalAction());
//			//System.out.println("Goal Count");
//			break;
//		default:
//			heuristic = new BFSHeuristic();
//			break;
//		}
//		
//		// Create queue and add comparator
//		open = new PriorityQueue<StateNode>();
//		
//		closed = new HashSet<StateNode>(5000);
		solutions = new ArrayList<StateNode>();
	}
	
	
	
	protected int nodesExpandedCount = 0;
	public int getNodesExpandedCount(){
		return nodesExpandedCount;
	}
	
	protected long totalTimeTaken = 0;
	public long getTotalTimeTaken() {
		return totalTimeTaken;
	}
	
	protected long heuristicTimeTaken = 0;
	public long getHeuristicTimeTaken() {
		return heuristicTimeTaken;
	}
	
	public PriorityQueue<StateNode> getOpen() {
		return open;
	}

	@Override
	public List<ActionInstance> getPath() {
		// TODO Auto-generated method stub
		return null;
	}

	protected List<ActionInstance> extractSolution(StateNode node) {
		List<ActionInstance> actionsToGoal = new ArrayList<ActionInstance>();
		
		while(node != null && node.getAction() != null) {
			actionsToGoal.add(0, node.getAction());
			node = node.getParent();
//			System.out.println(node.getAction() + "\n" + ((FFRiskyNode)node).getCriticalRisks());
		}
		
		return actionsToGoal;
	}

	@Override
	public void setRelevantActions(List<ActionInstance> actions) {
		//actionInstances.retainAll(actions);
		actionInstances = actions;
	}


	public void initialize(StateNode node) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Problem getProblem() {
		// TODO Auto-generated method stub
		return problem;
	}


	@Override
	public SearchStatistics getSearchStatistics() {
		// TODO Auto-generated method stub
		return searchStatistics;
	}
}
