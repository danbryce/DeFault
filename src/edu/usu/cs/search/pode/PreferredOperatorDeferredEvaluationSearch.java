package edu.usu.cs.search.pode;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

import edu.usu.cs.heuristic.stanplangraph.incomplete.FFRiskyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PreferredOperatorDeferredEvaluationSearch extends DefaultSearch implements Search {

	// open (in DefaultSearch) is the not preferred operators
	protected PriorityQueue<StateNode> openPreferred = null;

	protected long preferredPriority = 0;
	protected long notPreferredPriority = 0;
	protected double[] currentBestHValue = {Double.MAX_VALUE, Double.MAX_VALUE};

	public PreferredOperatorDeferredEvaluationSearch(
			Domain domain, 
			Problem problem,
			List<ActionInstance> actionInstances,
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics,
			SolverOptions solverOptions
	) throws IllDefinedProblemException
	{
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics, solverOptions);

		heuristic = new FFRiskyHeuristic(problem, domain, solverOptions);

		// Comparisons are based on the parent heuristic only
		open = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
			public int compare(StateNode first, StateNode second) {
				double f = first.getParent().getHeuristicValue()[1];
				double s = second.getParent().getHeuristicValue()[1];
				return (int) (f-s);
			}
		});

		// Comparisons are based on the parent heuristic only
		openPreferred = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
			public int compare(StateNode first, StateNode second) {
				double f = first.getParent().getHeuristicValue()[1];
				double s = second.getParent().getHeuristicValue()[1];
				return (int) (f - s);
			}
		});
	}

	@Override
	public List<ActionInstance> getPath() {
		
		while(true) {
			FFRiskyNode node;
			
			// If both queues are empty, there is no solution
			if(open.size() == 0 && openPreferred.size() == 0) {
				return null;
			}
			
			// Don't remove anything from an empty queue
			if(open.size() == 0) {
				node = (FFRiskyNode)openPreferred.remove();
			} else if(openPreferred.size() == 0) {
				node = (FFRiskyNode)open.remove();
			}
			// pull node from queue with the greatest value
			else if(preferredPriority >= notPreferredPriority) {
				node = (FFRiskyNode)openPreferred.remove();
			} else {
				node = (FFRiskyNode)open.remove();
			}
			
			// Check to see if this is a duplicate node
			if(closed.contains(node)) {
				continue;
			}
			closed.add(node);
			
			// Check to see if the solution is found in the node
			if(solutionEvaluator.isSolution(problem, node)) {
				return extractSolution(node);
			}

			// Compute node's H value
			double[] hvalue = node.getHeuristicValue();
			
			// If the new h value is better than the current h value, add 1000 to 
			// the preferred operator priority counter
			if(hvalue[1] < currentBestHValue[1] || 
					hvalue[1] == currentBestHValue[1] && 
					hvalue[0] < currentBestHValue[0]) {
				currentBestHValue[0] = hvalue[0];
				currentBestHValue[1] = hvalue[1];
				
				preferredPriority += 1000;
			}
			
			// Add the preferredOperator children to openPreferred
			List<StateNode> preferredNodes = node.createSubsequentNodes(actionInstances);
			openPreferred.addAll(preferredNodes);
			
			// Add the notPreferredOperator children to open
			List<StateNode> notPreferredNodes = node.createSubsequentNodesIgnoreHelpfulActions(actionInstances);
			notPreferredNodes.removeAll(preferredNodes);
			open.addAll(notPreferredNodes);
		}
	}

	@Override
	public void initialize() {
		openPreferred.add(
			new FFRiskyNode(problem.getInitialState(), 
			new FFRiskyHeuristic(
				problem, 
				domain, 
				solverOptions),
			solverOptions));
	}
	
	private List<ActionInstance> extractSolution(StateNode node) {
		List<ActionInstance> actionsToGoal = new ArrayList<ActionInstance>();
		
		while(node != null && node.getAction() != null) {
			actionsToGoal.add(0, node.getAction());
			node = node.getParent();
		}
		
		return actionsToGoal;
	}
}
