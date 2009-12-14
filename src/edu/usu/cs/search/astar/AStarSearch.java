package edu.usu.cs.search.astar;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.PriorityQueue;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class AStarSearch extends DefaultSearch implements Search 
{
//	private static Logger logger = LoggerFactory.getLogger(AStarSearch.class.getName());
	protected List<PriorityQueue<StateNode>> quadQueue = null;
	protected List<PriorityQueue<StateNode>> riskQueue = null;
	protected List<PriorityQueue<StateNode>> lengthQueue = null;
	protected long riskPreferredPriority = 0;
	protected long riskNotPreferredPriority = 0;
	protected double[] riskCurrentBestHValue = {Double.MAX_VALUE, Double.MAX_VALUE};
	protected long lengthPreferredPriority = 0;
	protected long lengthNotPreferredPriority = 0;
	protected double[] lengthCurrentBestHValue = {Double.MAX_VALUE, Double.MAX_VALUE};
	protected int currentQueue = 0;
	
	public AStarSearch(){}
	
	public AStarSearch(
			Domain domain, 
			Problem problem, 
			List<ActionInstance> actionInstances, 
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics,
			SolverOptions solverOptions
			) 
	throws IllDefinedProblemException
	{
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics, solverOptions);
			}
	
	
	public void initialize(){
		open.add(new AStarNode(problem.getInitialState(), null, null, problem, heuristic));
	}
	

	
	public List<ActionInstance> getPath(){
//		logger.debug("G\tH\tF");
		Date startTotal = new Date();
//		logger.debug("Starting timer..." + start.getTime());
		while(true){
			
//			logger.debug("\n\n*************************************************");
			
			// If there are no actions left in the priority queue, there's no solution
			if(open.isEmpty()){
//				logger.debug("Open List Empty");
				System.out.println("Open List Empty");
				return extractSolution(solutions);
			}
			
			// Try the next available action in the queue
//			logger.debug("\nPulling state from queue...");
			StateNode currentNode = null;
			if(!solverOptions.isUseQuadQueue() || currentQueue == 0 || currentQueue == 2) {
				currentNode = open.remove();
			} else if(currentQueue == 3) {
				// Don't remove anything from an empty queue
				if(lengthQueue.get(0).size() == 0) {
					currentNode = lengthQueue.get(1).remove();
					lengthPreferredPriority--;
				} else if(lengthQueue.get(1).size() == 0) {
					currentNode = lengthQueue.get(0).remove();
					lengthNotPreferredPriority--;
				}
				// Pull node from queue with the greatest value
				else if(lengthPreferredPriority >= lengthNotPreferredPriority) {
					currentNode = lengthQueue.get(1).remove();
					lengthPreferredPriority--;
				} else {
					currentNode = lengthQueue.get(0).remove();
					lengthNotPreferredPriority--;
				}
			} else if(currentQueue == 1) {
				// Don't remove anything from an empty queue
				if(riskQueue.get(0).size() == 0) {
					currentNode = riskQueue.get(1).remove();
					riskPreferredPriority--;
				} else if(riskQueue.get(1).size() == 0) {
					currentNode = riskQueue.get(0).remove();
					riskNotPreferredPriority--;
				}
				// Pull node from queue with the greatest value
				else if(riskPreferredPriority >= riskNotPreferredPriority) {
					currentNode = riskQueue.get(1).remove();
					riskPreferredPriority--;
				} else {
					currentNode = riskQueue.get(0).remove();
					riskNotPreferredPriority--;
				}
			}
			
			// If we have already tested this node, ignore it and keep trying.
//			if(solutionEvaluator.closedContains(closed, currentNode)){
//				//logger.debug("State already visited:\n" + currentNode.getState().toString());
//				continue;
//			}
//			else {
//				logger.debug("New state:\n" + currentNode.getState().toString());
//			}
			closed.add(currentNode);
			
			// Check to see if we have the goal state and (for now) return if we do
			if(solutionEvaluator.isSolution(problem, currentNode)){

				if(solutionEvaluator.keepSolution(currentNode, solutions)){
					// Apply the goal action
//					List<IncompleteActionInstance> goal = new ArrayList<IncompleteActionInstance>();
//					goal.add(this.problem.getGoalAction());
					
//					logger.debug("Found Solution: " + currentNode);
					System.out.println("Found Solution: " + currentNode);
//					for(int i = 0; i < goalNode.getDimension(); i++){
//						logger.debug();
//					}
//					logger.debug("");
//					
					solutions.add(currentNode);
				}

				if(solutionEvaluator.isSolutionSetComplete(solutions)){
					Date stopTotal = new Date();
//					logger.debug("Stopping timer..." + stop.getTime());
					totalTimeTaken = stopTotal.getTime() - startTotal.getTime();
//					logger.debug("Soultion Set Complete");
					System.out.println(String.format("Found solution using queue %d", currentQueue));
					return extractSolution(solutions);
				}

			}
			
			// We are now expanding the node
			
			// Add subsequent nodes to the queue if they aren't a repeated state
			if(!solverOptions.isUseQuadQueue() || currentQueue == 0 || currentQueue == 2) {
				List<StateNode> subsequentNodes = currentNode.createSubsequentNodes(actionInstances);
				for(int nodeIndex = 0; nodeIndex < subsequentNodes.size(); nodeIndex++) {
//					logger.debug("\nCreated State ready to be added to queue...");
//					if(!closed.contains(subsequentNodes.get(nodeIndex).getState())) {
//						Date startHeuristic = new Date();
					if(!currentNode.equals(subsequentNodes.get(nodeIndex)) &&
							(currentNode.getParent() == null || 
							!subsequentNodes.get(nodeIndex).equals(currentNode.getParent()))){
							open.add(subsequentNodes.get(nodeIndex));
						//Date stopHeuristic = new Date();
						//heuristicTimeTaken += (stopHeuristic.getTime() - startHeuristic.getTime());
//						logger.debug("State added to queue:\n" + subsequentNodes.get(nodeIndex).getState().toString());
					}
//					}
//					else {
//						logger.debug("State already visited:\n" + subsequentNodes.get(nodeIndex).getState().toString());
//					}
				}
			}
			
			// Switch queue if the quadQueue is being used
			if(solverOptions.isUseQuadQueue()) {
				if(currentQueue == 0) {
					System.out.print(String.format("queue %d: ", currentQueue, currentQueue+1));
					currentQueue++;
					open = quadQueue.get(currentQueue);
				}
				else if(currentQueue == 1) {
					System.out.print(String.format("queue %d: ", currentQueue, currentQueue+1));
					double[] hvalue = currentNode.getHeuristicValue();
					// If the new h value is better than the current h value, add 1000 to 
					// the preferred operator priority counter
					if(hvalue[0] < riskCurrentBestHValue[0] ||
							hvalue[0] == riskCurrentBestHValue[0] &&
							hvalue[1] < riskCurrentBestHValue[1]) {
						riskCurrentBestHValue[1] = hvalue[1];
						riskCurrentBestHValue[0] = hvalue[0];
						
						riskPreferredPriority += 1000;
					}
					
					// Add the preferredOperator children to openPreferred
					List<StateNode> preferredNodes = currentNode.createSubsequentNodes(actionInstances);
					riskQueue.get(1).addAll(preferredNodes);
					
					// Add the notPreferredOperator children to open
					List<StateNode> notPreferredNodes = null;
					if(solverOptions.isUsePreferredOperators()) {
						notPreferredNodes = currentNode.createSubsequentNodes(actionInstances);
					} else {
						solverOptions.setUsePreferredOperators(false);
						notPreferredNodes = currentNode.createSubsequentNodes(actionInstances);
						solverOptions.setUsePreferredOperators(true);
					}
					notPreferredNodes.removeAll(preferredNodes);
					riskQueue.get(0).addAll(notPreferredNodes);
					
					currentQueue++;
					open = quadQueue.get(currentQueue);
				}
				else if(currentQueue == 2) {
					System.out.print(String.format("queue %d: ", currentQueue, currentQueue+1));
					currentQueue++;
					open = quadQueue.get(currentQueue);
				}
				else if(currentQueue == 3) {
					System.out.print(String.format("queue %d: ", currentQueue, 0));
					double[] hvalue = currentNode.getHeuristicValue();
					// If the new h value is better than the current h value, add 1000 to
					// the preferred operator priority counter
					if(hvalue[1] < lengthCurrentBestHValue[1] ||
							hvalue[1] == lengthCurrentBestHValue[1] &&
							hvalue[0] < lengthCurrentBestHValue[0]) {
						lengthCurrentBestHValue[0] = hvalue[0];
						lengthCurrentBestHValue[1] = hvalue[1];
						
						lengthPreferredPriority += 1000;
					}
					
					// Add the preferredOperator children to openPreferred
					List<StateNode> preferredNodes = currentNode.createSubsequentNodes(actionInstances);
					lengthQueue.get(1).addAll(preferredNodes);
					
					// Add the notPreferredOperator children to open
					List<StateNode> notPreferredNodes = null;
					if(solverOptions.isUsePreferredOperators()) {
						notPreferredNodes = currentNode.createSubsequentNodes(actionInstances);
					} else {
						solverOptions.setUsePreferredOperators(false);
						notPreferredNodes = currentNode.createSubsequentNodes(actionInstances);
						solverOptions.setUsePreferredOperators(true);
					}
					notPreferredNodes.removeAll(preferredNodes);
					lengthQueue.get(0).addAll(notPreferredNodes);
					
					currentQueue = 0;
					open = quadQueue.get(currentQueue);
				}
			}
			
//						logger.debug(
//					searchStatistics.getTimeSinceStart() + "\t" + 
//					subsequentNodes.size() + "\t" +
//					nodesExpandedCount + "\t" + 
//					currentNode.getGValue()[0] + "\t" + 
//					currentNode.getHeuristicValue()[0] + "\t" + 
//					currentNode.getFValue()[0] );
			searchStatistics.processNode(currentNode);
//			logger.debug(searchStatistics.toString());
			System.out.println(searchStatistics.toString());
			
		}
	}

	private List<ActionInstance> extractSolution(List<StateNode> solutions) {

		StateNode currentNode = solutionEvaluator.getBestSolution(solutions);
		
		List<ActionInstance> actionsToGoal = new ArrayList<ActionInstance>();
		
		while(currentNode != null && currentNode.getAction() != null) {
			actionsToGoal.add(0, currentNode.getAction());
			currentNode = currentNode.getParent();
		}
		
		return actionsToGoal;
	}

}
