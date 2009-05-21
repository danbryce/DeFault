package edu.usu.cs.partialsatisfactionproblem;

import java.util.*;
import java.util.logging.Logger;

import edu.usu.cs.astar.Node;
import edu.usu.cs.heuristic.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.plangraph.IllDefinedProblemException;

public class PSP {
	
	protected static Logger logger = Logger.getLogger(PSP.class.getName());
	
	protected final Domain domain;
	protected final Problem problem;
	protected final List<ActionInstance> actionInstances;
	
	protected final PriorityQueue<Node> open;
	protected final HashSet<ConsistentLiteralSet> closed;
	
	protected final int whichHeuristic = 1;
	protected final IHeuristic heuristic;
	
	protected HashMap<LiteralInstance, Double> goalUtilities;
	
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
	
	public PSP(Domain domain, Problem problem, List<ActionInstance> actionInstances) throws IllDefinedProblemException {
		
		if(domain == null || problem == null) {
			throw new IllegalArgumentException("null domain/problem");
		}
		this.domain = domain;
		this.problem = problem;
		this.actionInstances = actionInstances;
		
		switch(whichHeuristic) {
		case 0:
			heuristic = new BFSHeuristic();
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
		
		open = new PriorityQueue<Node>(20,
				new Comparator<Node>(){
					public int compare(Node first, Node second) {
						return (int)(first.getFValue() - 
								second.getFValue());
					}
				}
		);
		open.add(new Node(problem.getStartState(), null, null, problem, actionInstances, heuristic));
		
		closed = new HashSet<ConsistentLiteralSet>();
	}
	
	public List<ActionInstance> getPath() {
		
		Date startTotal = new Date();
		
		// If there are no actions left in the priority queue, there's no solution
		while(true) {
			if(open.isEmpty()) {
				return null;
			}
			
			// Try the next available action in the queue
			Node currentNode = open.remove();
			
			// If we have already tested this node, ignore it and keep trying.
			if(closed.contains(currentNode.getState())) {
				continue;
			}
			
			closed.add(currentNode.getState());
			
			// Check to see if we have the goal state and (for now) return if we do
			// TODO: If this is going to be an A* search using an admissible heuristic, 
			// we really should return the optimal solution, not the first one found.
			if(problem.getGoal().evaluate(currentNode.getState())) {
				Date stopTotal = new Date();
				totalTimeTaken = stopTotal.getTime() - startTotal.getTime();
				List<ActionInstance> actionsToGoal = new ArrayList<ActionInstance>();
				
				while(currentNode != null && currentNode.getAction() != null) {
					actionsToGoal.add(0, currentNode.getAction());
					currentNode = currentNode.getParent();
				}
				
				return actionsToGoal;
			}
			
			// We are now expanding the node
			nodesExpandedCount++;
			
			// Add subsequent nodes to the queue if they aren't a repeated state
			List<Node> subsequentNodes = currentNode.getSubsequentNodes();
			for(int nodeIndex = 0; nodeIndex < subsequentNodes.size(); nodeIndex++) {
				if(!closed.contains(subsequentNodes.get(nodeIndex).getState())) {
					Date startHeuristic = new Date();
					open.add(subsequentNodes.get(nodeIndex));
					Date stopHeuristic = new Date();
					heuristicTimeTaken += (stopHeuristic.getTime() - startHeuristic.getTime());
				}
			}
		}
	}
}
