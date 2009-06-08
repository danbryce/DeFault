package edu.usu.cs.search.psp;

import java.util.*;
import java.util.logging.Logger;

import edu.usu.cs.heuristic.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;

import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PSPSearch {
	
	protected static Logger logger = Logger.getLogger(PSPSearch.class.getName());
	
	protected final AStarSearch astar;
	
	protected final Domain domain;
	protected final Problem problem;
	protected final List<ActionInstance> actionInstances;

	protected final int whichHeuristic = 0;
	protected final IHeuristic heuristic;
	
	protected UtilityFunction goalUtilities;
	
	protected int nodesExpandedCount = 0;
	public int getNodesExpandedCount() {
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
	
	public PSPSearch(Domain domain, Problem problem, List<ActionInstance> actionInstances) throws IllDefinedProblemException {
		
		astar = new AStarSearch(domain, problem, actionInstances, new PSPSolutionEvaluator());
		
		this.domain = domain;
		this.problem = problem;
		this.actionInstances = actionInstances;

		//TODO hack, should move this into the problem and parse it from problem file
		Map<LiteralInstance, Double> goalUtils = new HashMap<LiteralInstance, Double>();
		if(problem.getGoal() instanceof ConjunctionGoalDesc){
			ConjunctionGoalDesc cGoal = (ConjunctionGoalDesc)problem.getGoal();
			for(GoalDesc goal : cGoal.getSubGoals()){
				if(goal instanceof PredicateInstance){
					goalUtils.put((PredicateInstance)goal, 100.0);
				}
			}
		}

		this.goalUtilities = new AdditiveUtilityFunction(goalUtils);

		
		switch(whichHeuristic) {
		case 0:
			heuristic = new PSPUpperBound();
			break;
		case 1:
			heuristic = new RelaxedPlanGraphHeuristic(domain, problem);
			System.out.println("Relaxed Plan Graph");
			break;
		case 2:
			heuristic = new GoalCountHeuristic(problem.getGoal());
			System.out.println("Goal Count");
			break;
		default:
			heuristic = new BFSHeuristic();
			break;
		}
		
		
	}

	public void initializePSPSearch(){
		astar.getOpen().add(new PSPNode(problem.getStartState(), null, null, problem, this.goalUtilities, heuristic));
	}
	
	public List<ActionInstance> getPath() {
		return astar.getPath();
	}
	
	
	
//	public List<ActionInstance> getPath() {
//		
//		Date startTotal = new Date();
//		
//		// If there are no actions left in the priority queue, there's no solution
//		while(true) {
//			if(open.isEmpty()) {
//				return null;
//			}
//			
//			// Try the next available action in the queue
//			PSPNode currentNode = open.remove();
//			
//			// If we have already tested this PSPNode, ignore it and keep trying.
//			if(closed.contains(currentNode.getState())) {
//				continue;
//			}
//			
//			closed.add(currentNode.getState());
//			
//			// Check to see if we have the goal state and (for now) return if we do
//			// TODO: If this is going to be an A* search using an admissible heuristic, 
//			// we really should return the optimal solution, not the first one found.
//			if(problem.getGoal().evaluate(currentNode.getState())) {
//				Date stopTotal = new Date();
//				totalTimeTaken = stopTotal.getTime() - startTotal.getTime();
//				List<ActionInstance> actionsToGoal = new ArrayList<ActionInstance>();
//				
//				while(currentNode != null && currentNode.getAction() != null) {
//					actionsToGoal.add(0, currentNode.getAction());
//					currentNode = currentNode.getParent();
//				}
//				
//				return actionsToGoal;
//			}
//			
//			// We are now expanding the PSPNode
//			nodesExpandedCount++;
//			
//			// Add subsequent nodes to the queue if they aren't a repeated state
//			List<PSPNode> subsequentNodes = currentNode.getSubsequentNodes();
//			for(int nodeIndex = 0; nodeIndex < subsequentNodes.size(); nodeIndex++) {
//				if(!closed.contains(subsequentNodes.get(nodeIndex).getState())) {
//					Date startHeuristic = new Date();
//					open.add(subsequentNodes.get(nodeIndex));
//					Date stopHeuristic = new Date();
//					heuristicTimeTaken += (stopHeuristic.getTime() - startHeuristic.getTime());
//				}
//			}
//		}
//	}
}
