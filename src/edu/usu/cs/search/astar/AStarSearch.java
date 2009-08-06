package edu.usu.cs.search.astar;

import java.util.*;
import java.util.logging.Logger;

import edu.usu.cs.heuristic.BFSHeuristic;
import edu.usu.cs.heuristic.GoalCountHeuristic;
import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class AStarSearch extends DefaultSearch implements Search 
{
	private static Logger logger = Logger.getLogger(AStarSearch.class.getName());
	
	public AStarSearch(){}
	
	public AStarSearch(
			Domain domain, 
			Problem problem, 
			List<IncompleteActionInstance> actionInstances, 
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics
			) 
	throws IllDefinedProblemException
	{
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics);
	}
	
	
	public void initialize(){
		open.add(new AStarNode(problem.getInitialState(), null, null, problem, heuristic));
	}
	

	
	public List<IncompleteActionInstance> getPath(){
//		System.out.println("G\tH\tF");
		Date startTotal = new Date();
//		System.out.println("Starting timer..." + start.getTime());
		while(true){
			
//			System.out.println("\n\n*************************************************");
			
			// If there are no actions left in the priority queue, there's no solution
			if(open.isEmpty()){
				//System.out.println("Open List Empty");
				return extractSolution(solutions);
			}
			
			// Try the next available action in the queue
//			System.out.println("\nPulling state from queue...");
			StateNode currentNode = open.remove();
			
			// If we have already tested this node, ignore it and keep trying.
			if(solutionEvaluator.closedContains(closed, currentNode)){
				//System.out.println("State already visited:\n" + currentNode.getState().toString());
				continue;
			}
//			else {
//				System.out.println("New state:\n" + currentNode.getState().toString());
//			}
			closed.add(currentNode);
			
			// Check to see if we have the goal state and (for now) return if we do
			// TODO: If this is going to be an A* search using an admissible heuristic, 
			// we really should return the optimal solution, not the first one found.
			if(solutionEvaluator.isSolution(problem, currentNode)){

				if(solutionEvaluator.keepSolution(currentNode, solutions)){
					// Apply the goal action
					List<IncompleteActionInstance> goal = new ArrayList<IncompleteActionInstance>();
					goal.add(this.problem.getGoalAction());
					StateNode goalNode = currentNode.createSubsequentNodes(goal).get(0);
					
					System.out.print("Found Solution, g = ");
					for(int i = 0; i < goalNode.getDimension(); i++){
						System.out.print(goalNode.getGValue()[i] + "\t");
					}
					System.out.println("");
					
					solutions.add(goalNode);
				}

				if(solutionEvaluator.isSolutionSetComplete(solutions)){
					Date stopTotal = new Date();
//					System.out.println("Stopping timer..." + stop.getTime());
					totalTimeTaken = stopTotal.getTime() - startTotal.getTime();
//					System.out.println("Soultion Set Complete");
					return extractSolution(solutions);
				}

			}
			
			// We are now expanding the node
			
			// Add subsequent nodes to the queue if they aren't a repeated state
			List<StateNode> subsequentNodes = currentNode.createSubsequentNodes(actionInstances);
			for(int nodeIndex = 0; nodeIndex < subsequentNodes.size(); nodeIndex++) {
//				System.out.println("\nCreated State ready to be added to queue...");
//				if(!closed.contains(subsequentNodes.get(nodeIndex).getState())) {
					//Date startHeuristic = new Date();
					open.add(subsequentNodes.get(nodeIndex));
					//Date stopHeuristic = new Date();
					//heuristicTimeTaken += (stopHeuristic.getTime() - startHeuristic.getTime());
//					System.out.println("State added to queue:\n" + subsequentNodes.get(nodeIndex).getState().toString());
//				}
//				else {
//					System.out.println("State already visited:\n" + subsequentNodes.get(nodeIndex).getState().toString());
//				}
			}
			
//						System.out.println(
//					searchStatistics.getTimeSinceStart() + "\t" + 
//					subsequentNodes.size() + "\t" +
//					nodesExpandedCount + "\t" + 
//					currentNode.getGValue()[0] + "\t" + 
//					currentNode.getHeuristicValue()[0] + "\t" + 
//					currentNode.getFValue()[0] );
			searchStatistics.processNode(currentNode);
			System.out.println(searchStatistics.toString());
			
		}
	}

	private List<IncompleteActionInstance> extractSolution(List<StateNode> solutions) {

		StateNode currentNode = solutionEvaluator.getBestSolution(solutions);
		
		List<IncompleteActionInstance> actionsToGoal = new ArrayList<IncompleteActionInstance>();
		
		while(currentNode != null && currentNode.getAction() != null) {
			actionsToGoal.add(0, currentNode.getAction());
			currentNode = currentNode.getParent();
		}
		
		return actionsToGoal;
	}


}
