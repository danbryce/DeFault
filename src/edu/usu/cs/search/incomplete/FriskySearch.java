package edu.usu.cs.search.incomplete;

import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FriskyHeuristic;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FriskySearch extends AStarSearch{
//	private final PriorityQueue<FFRiskyNode> open;
//	private final Set<FFRiskyNode> closed = new HashSet<FFRiskyNode>();
	private FriskyHeuristic riskHeuristic;
	private StanHeuristic lengthHeuristic;

	public FriskySearch(Domain domain, Problem problem,
			List<IncompleteActionInstance> actionInstances,
			SolutionEvaluator riskySolutionEvaluator,
			SearchStatistics searchStatistics) throws IllDefinedProblemException {
		super(domain,problem, actionInstances, riskySolutionEvaluator, searchStatistics);
		//this.searchStatistics = searchStatistics;
		open = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
			public int compare(StateNode first, StateNode second) {
				boolean alphaCombo = false;
				if(!alphaCombo){
					Double[] diffs = new Double[2];
					for(int i = 0; i < 2; i++){
						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
					}
					if(diffs[0] != 0) {
						return diffs[0].intValue();
					}
					else{
						return diffs[1].intValue(); //same num risks, so compare length
					}
				}
				else{
					double alpha = 0.5;
					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
					return value.intValue();
				}



			}
		});

		this.riskHeuristic = new FriskyHeuristic(problem, domain);
		//this.lengthHeuristic = new StanHeuristic(problem);
	}



//	public FFRiskyNode getNextNode() {
//		boolean isNewNode = false;
//		FFRiskyNode newNode = null;
//
//		while (isNewNode == false) {
//			newNode = open.poll();
//
//			// Check for null
//			if (newNode == null) {
//				break;
//			}
//
//			// Check to see if this node is in closed
//			if (!closed.contains(newNode)) {
//				isNewNode = true;
//				closed.add(newNode);
//			}
//		}
//		return newNode;
//	}

	/**
	 * Calculates the h value then adds it to the priority queue
	 * @param node
	 */
//	public void addNode(FFRiskyNode node) {
//		//		if (!closed.contains(node)) {
//		//
//		//			// Calculate the h value
//		//			double[] hvalues = this.riskHeuristic.getValues(node);
//		//			for(int i = 0; i < hvalues.length; i++){
//		//				node.setHValues(i, hvalues[i]);
//		//			}
//		//
//		//			//node.setHValues(1, this.lengthHeuristic.getValue(node));
//		//
//		//			node.setGValues(0, node.getCriticalRisks().size());
//		//			if(node.getParent() != null)
//		//				node.setGValues(1, node.getParent().getGValues(1) + 1);
//		//			open.add(node);
//		//		}
//	}

//	public void addNodes(Collection<FFRiskyNode> nodes) {
//		for (FFRiskyNode node : nodes) {
//			addNode(node);
//		}
//	}
//
//	@Override
//	public long getHeuristicTimeTaken() {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public int getNodesExpandedCount() {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public PriorityQueue<StateNode> getOpen() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<IncompleteActionInstance> getPath() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public long getTotalTimeTaken() {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	@Override
	public void initialize() {
		open.add(new FFRiskyNode(problem.getInitialState(), new FriskyHeuristic(problem, domain)));
	}




}
