package edu.usu.cs.search.incomplete;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFRiskyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FriskySearch extends AStarSearch{
//	private final PriorityQueue<FFRiskyNode> open;
//	private final Set<FFRiskyNode> closed = new HashSet<FFRiskyNode>();
	private FFRiskyHeuristic riskHeuristic;
	private StanHeuristic lengthHeuristic;

	public FriskySearch(Domain domain, Problem problem,
			List<ActionInstance> actionInstances,
			SolutionEvaluator riskySolutionEvaluator,
			SearchStatistics searchStatistics,
			SolverOptions solverOptions
			) throws IllDefinedProblemException {
		super(domain,problem, actionInstances, riskySolutionEvaluator, searchStatistics, solverOptions);
		//this.searchStatistics = searchStatistics;
		
//		if(!solverOptions.isUseQuadQueue()) {
			// There was a lot of debate on whether we should make risk count have 
			// first priority and length the tiebreaker of vice versa. This flag 
			// in SolverOptions determines it.
			final int main, tiebreaker;
			if(solverOptions.isRiskHeuristicFirst()) {
				main = 0; tiebreaker = 1;
			} else {
				main = 1; tiebreaker = 0;
			}
		
			if(!solverOptions.isUCS()) {
				open = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
					public int compare(StateNode first, StateNode second) {
						boolean alphaCombo = false;
						if(!alphaCombo){
							Double[] diffs = new Double[2];
							for(int i = 0; i < 2; i++){
								diffs[i] = first.getFValue()[i] - second.getFValue()[i];
							}
							if(diffs[main] != 0) {
								return diffs[main].intValue(); //same num risks, so compare length
							}
							else{
								return diffs[tiebreaker].intValue();
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
			else {
				open = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
					public int compare(StateNode first, StateNode second) {
						return (int)(first.getGValue()[1] - second.getGValue()[1]);
					}
				});
			}
//		} else {
//			quadQueue = new ArrayList<PriorityQueue<StateNode>>();
//
//			// Create each of the queues
//			// 1. risk + non-preferred
//			initializeRiskNonPreferred();
//			
//			// 2. risk + preferred
//			initializeRiskPreferred();
//			
//			// 3. length + non-preferred
//			initializeLengthNotPreferred();
//			
//			// 4. length + preferred
//			initializeLengthPreferred();
//			
//			currentQueue = 0;
//			open = quadQueue.get(currentQueue);
//			
//		}


		this.riskHeuristic = new FFRiskyHeuristic(problem, domain, solverOptions);
		//this.lengthHeuristic = new StanHeuristic(problem);
	}




	@Override
	public void initialize() {
//		if(!solverOptions.isUseQuadQueue()) {
			open.add(new FFRiskyNode(problem.getInitialState(), new FFRiskyHeuristic(problem, domain, solverOptions), solverOptions));
//		}
	}

//	private void initializeRiskNonPreferred() {
//		quadQueue.add(new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
//			public int compare(StateNode first, StateNode second) {
//				boolean alphaCombo = false;
//				if(!alphaCombo){
//					Double[] diffs = new Double[2];
//					for(int i = 0; i < 2; i++){
//						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
//					}
//					if(diffs[0] != 0) {
//						return diffs[0].intValue(); //same num risks, so compare length
//					}
//					else{
//						return diffs[1].intValue();
//					}
//				}
//				else{
//					double alpha = 0.6;
//					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
//					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
//					return value.intValue();
//				}
//
//
//
//			}
//		}));
//		
//		quadQueue.get(quadQueue.size()-1).add(new FFRiskyNode(problem.getInitialState(), new FFRiskyHeuristic(problem, domain, solverOptions), solverOptions));
//	}
	
//	private void initializeRiskPreferred() {
//		riskQueue = new ArrayList<PriorityQueue<StateNode>>();
//		riskQueue.add(new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
//			public int compare(StateNode first, StateNode second) {
//				boolean alphaCombo = false;
//				if(!alphaCombo){
//					Double[] diffs = new Double[2];
//					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
//					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
//					if(diffs[0] != 0) {
//						return diffs[0].intValue();
//					}
//					else{
//						return diffs[1].intValue();
//					}
//				}
//				else{
//					double alpha = 0.6;
//					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
//					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
//					return value.intValue();
//				}
//			}
//		}));
//
//		// Comparisons are based on the parent heuristic only
//		riskQueue.add(new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
//			public int compare(StateNode first, StateNode second) {
//				boolean alphaCombo = false;
//				if(!alphaCombo){
//					Double[] diffs = new Double[2];
//					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
//					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
//					if(diffs[0] != 0) {
//						return diffs[0].intValue();
//					}
//					else{
//						return diffs[1].intValue();
//					}
//				}
//				else{
//					double alpha = 0.6;
//					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
//					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
//					return value.intValue();
//				}
//			}
//		}));
//		
//		quadQueue.add(riskQueue.get(1));
//		quadQueue.get(quadQueue.size()-1).add(new FFRiskyNode(problem.getInitialState(), new FFRiskyHeuristic(problem, domain, solverOptions), solverOptions));
//	}
	
//	private void initializeLengthNotPreferred() {
//		quadQueue.add(new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
//			public int compare(StateNode first, StateNode second) {
//				boolean alphaCombo = false;
//				if(!alphaCombo){
//					Double[] diffs = new Double[2];
//					for(int i = 0; i < 2; i++){
//						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
//					}
//					if(diffs[1] != 0) {
//						return diffs[1].intValue();
//					}
//					else{
//						return diffs[0].intValue(); //same num risks, so compare length
//					}
//				}
//				else{
//					double alpha = 0.6;
//					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
//					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
//					return value.intValue();
//				}
//
//
//
//			}
//		}));
//		
//		quadQueue.get(quadQueue.size()-1).add(new FFRiskyNode(problem.getInitialState(), new FFRiskyHeuristic(problem, domain, solverOptions), solverOptions));
//	}
	
//	private void initializeLengthPreferred() {
//		lengthQueue = new ArrayList<PriorityQueue<StateNode>>();
//		lengthQueue.add(new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
//			public int compare(StateNode first, StateNode second) {
//				boolean alphaCombo = false;
//				if(!alphaCombo){
//					Double[] diffs = new Double[2];
////					for(int i = 0; i < 2; i++) {
////						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
////					}
//					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
//					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
//					if(diffs[1] != 0) {
//						return diffs[1].intValue();
//					}
//					else{
//						return diffs[0].intValue(); //same num risks, so compare length
//					}
//				}
//				else{
//					double alpha = 0.6;
//					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
//					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
//					return value.intValue();
//				}
//			}
//		}));
//
//		// Comparisons are based on the parent heuristic only
//		lengthQueue.add(new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
//			public int compare(StateNode first, StateNode second) {
//				boolean alphaCombo = false;
//				if(!alphaCombo){
//					Double[] diffs = new Double[2];
////					for(int i = 0; i < 2; i++){
////						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
////					}
//					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
//					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
//					if(diffs[1] != 0) {
//						return diffs[1].intValue();
//					}
//					else{
//						return diffs[0].intValue(); //same num risks, so compare length
//					}
//				}
//				else{
//					double alpha = 0.6;
//					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
//					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
//					return value.intValue();
//				}
//			}
//		}));
//		
//		quadQueue.add(lengthQueue.get(1));
//		quadQueue.get(quadQueue.size()-1).add(new FFRiskyNode(problem.getInitialState(), new FFRiskyHeuristic(problem, domain, solverOptions), solverOptions));
//	}
}
