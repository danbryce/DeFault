package edu.usu.cs.search.pode;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PreferredOperatorDeferredEvaluationSearch extends DefaultSearch implements Search {

	private static Logger logger = LoggerFactory.getLogger(PreferredOperatorDeferredEvaluationSearch.class.getName());

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
				boolean alphaCombo = false;
				if(!alphaCombo){
					Double[] diffs = new Double[2];
//					for(int i = 0; i < 2; i++) {
//						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
//					}
					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
					if(diffs[1] != 0) {
						return diffs[1].intValue();
					}
					else{
						return diffs[0].intValue(); //same num risks, so compare length
					}
				}
				else{
					double alpha = 0.6;
					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
					return value.intValue();
				}
			}
		});

		// Comparisons are based on the parent heuristic only
		openPreferred = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
			public int compare(StateNode first, StateNode second) {
				boolean alphaCombo = false;
				if(!alphaCombo){
					Double[] diffs = new Double[2];
//					for(int i = 0; i < 2; i++){
//						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
//					}
					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
					if(diffs[1] != 0) {
						return diffs[1].intValue();
					}
					else{
						return diffs[0].intValue(); //same num risks, so compare length
					}
				}
				else{
					double alpha = 0.6;
					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
					return value.intValue();
				}
			}
		});
	}

	@Override
	public List<ActionInstance> getPath() {
		while(true) {
			PreferredOperatorDeferredEvaluationNode node;
			
			// If both queues are empty, there is no solution
			if(open.size() == 0 && openPreferred.size() == 0) {
				return null;
			}
			
			// Don't remove anything from an empty queue
			if(open.size() == 0) {
				node = (PreferredOperatorDeferredEvaluationNode)openPreferred.remove();
				preferredPriority--;				
			} else if(openPreferred.size() == 0) {
				node = (PreferredOperatorDeferredEvaluationNode)open.remove();
				notPreferredPriority--;
			}
			// pull node from queue with the greatest value
			else if(preferredPriority >= notPreferredPriority) {
				node = (PreferredOperatorDeferredEvaluationNode)openPreferred.remove();
				preferredPriority--;
			} else {
				node = (PreferredOperatorDeferredEvaluationNode)open.remove();
				notPreferredPriority--;
			}
			
			// Check to see if this is a duplicate node
			if(closed.contains(node)) {
				continue;
			}
			closed.add(node);
			
			// Check to see if the solution is found in the node
			if(solutionEvaluator.isSolution(problem, node)) {
//				logger.debug("Found Solution: " + node);
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
			List<StateNode> notPreferredNodes = node.createSubsequentNodesIgnorePreferredOperators(actionInstances);
			notPreferredNodes.removeAll(preferredNodes);
			open.addAll(notPreferredNodes);
			
			searchStatistics.processNode(node);
			System.out.print(preferredPriority + " " + notPreferredPriority + " ");
			logger.debug(searchStatistics.toString());
		}
	}

	@Override
	public void initialize() {
		openPreferred.add(
			new PreferredOperatorDeferredEvaluationNode(problem.getInitialState(), 
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