package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

import edu.usu.cs.heuristic.BFSHeuristic;
import edu.usu.cs.heuristic.GoalCountHeuristic;
import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class DefaultSearch implements Search {

	protected Domain domain = null;
	protected Problem problem = null;
	protected List<IncompleteActionInstance> actionInstances = null;
	
	protected PriorityQueue<StateNode> open = null;
	protected Set<StateNode> closed = null;
	
	protected final int whichHeuristic = 1;
	protected Heuristic heuristic = null;
	
	protected SolutionEvaluator solutionEvaluator = null;
	protected List<StateNode> solutions = null;
	protected SearchStatistics searchStatistics = null;
	
	public DefaultSearch(){
		
	}
			
	
	public DefaultSearch(
			Domain domain, 
			Problem problem, 
			List<IncompleteActionInstance> actionInstances, 
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics
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
		
		System.out.print("Heuristic: ");
		switch(whichHeuristic) {
		case 0:
			heuristic = new BFSHeuristic();
			System.out.println("Breadth First Search");
			break;
		case 1:
			heuristic = new StanHeuristic(problem, domain);
			System.out.println("Relaxed Plan Graph");
			break;
		case 2:
			heuristic = new GoalCountHeuristic(problem.getGoalAction());
			System.out.println("Goal Count");
			break;
		default:
			heuristic = new BFSHeuristic();
			break;
		}
		
		// Create queue and add comparator
		open = new PriorityQueue<StateNode>(20,
				new Comparator<StateNode>(){
					public int compare(StateNode first, StateNode second){
						return (int)(first.getFValue()[0] - 
								second.getFValue()[0]);
					}
				}
				);
		
		closed = new HashSet<StateNode>();
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
	public List<IncompleteActionInstance> getPath() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void initialize() {
		// TODO Auto-generated method stub
		
	}
}
