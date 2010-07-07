package edu.usu.cs.search.astar;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.PriorityQueue;

import org.apache.log4j.Logger;

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

public class AStarSearch extends DefaultSearch implements Search 
{
	private static Logger logger = Logger.getLogger(AStarSearch.class.getName());
//	protected List<PriorityQueue<StateNode>> quadQueue = null;
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
	
	//Calls problem get Initial State - can we just manipulate that for updated new initial state
	public void initialize(){
		open.add(new AStarNode(problem.getInitialState(), null, null, problem, heuristic));
	}
	
	//Is using action instances and solution evaluator, which uses... cw 7/1/10
	public List<ActionInstance> getPath(){
//		logger.debug("G\tH\tF");
		Date startTotal = new Date();
//		logger.debug("Starting timer..." + start.getTime());
		while(true){
			
//			logger.debug("\n\n*************************************************");
			
			// If there are no actions left in the priority queue, there's no solution
			if(open.isEmpty()){
				logger.debug("Open List Empty");			
				return extractSolution(solutions);
			}
			
			// Try the next available action in the queue
//			logger.debug("\nPulling state from queue...");
			StateNode currentNode = null;
			currentNode = open.remove();

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
					logger.debug("Found Solution: " + currentNode);
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
					logger.debug(String.format("Found solution using queue %d", currentQueue));
					return extractSolution(solutions);
				}

			}
			
			// We are now expanding the node
			
			// Add subsequent nodes to the queue if they aren't a repeated state
//			if(!solverOptions.isUseQuadQueue() || currentQueue == 0 || currentQueue == 2) {
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
//					else {
//						logger.debug("State already visited:\n" + subsequentNodes.get(nodeIndex).getState().toString());
//					}
				}
//			}
				
//						logger.debug(
//					searchStatistics.getTimeSinceStart() + "\t" + 
//					subsequentNodes.size() + "\t" +
//					nodesExpandedCount + "\t" + 
//					currentNode.getGValue()[0] + "\t" + 
//					currentNode.getHeuristicValue()[0] + "\t" + 
//					currentNode.getFValue()[0] );
			searchStatistics.processNode(currentNode);
//			logger.debug(searchStatistics.toString());
			logger.debug(searchStatistics.toString());
			
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
