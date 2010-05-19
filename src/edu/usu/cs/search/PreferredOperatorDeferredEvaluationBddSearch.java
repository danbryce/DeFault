package edu.usu.cs.search;

import java.math.BigInteger;
import java.security.DomainCombiner;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFRiskyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.planner.ffrisky.util.RiskCounterNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;
import edu.usu.cs.search.incomplete.RiskCounterHeuristic;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class PreferredOperatorDeferredEvaluationBddSearch extends
PreferredOperatorDeferredEvaluationSearch implements Search {
	private static Logger logger = Logger.getLogger(PreferredOperatorDeferredEvaluationSearch.class.getName()); 
	
	public PreferredOperatorDeferredEvaluationBddSearch(Domain domain,
			Problem problem, List<ActionInstance> actionInstances,
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
	throws IllDefinedProblemException {
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics,
				solverOptions);
		// TODO Auto-generated constructor stub
	}
	@Override
	public void initialize() {

		heuristic = new RiskCounterHeuristic(problem, domain, solverOptions);

		// Comparisons are based on the parent heuristic only
		open = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
			public int compare(StateNode first, StateNode second) {
				boolean alphaCombo = false;
				if(!alphaCombo){
					Double[] diffs = new Double[2];
					//					for(int i = 0; i < 2; i++) {
					//						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
					//					}

					StateNode n1 = (first.isHeuristicComputed() ? first : first.getParent());
					StateNode n2 = (second.isHeuristicComputed() ? second : second.getParent());

					diffs[0] = n1.getHeuristicValue()[0] - n2.getHeuristicValue()[0];
					int cmp = ((RiskCounterNode)n1).getDomainCount().compareTo(((RiskCounterNode)n2).getDomainCount());

					if(cmp != 0) {
						return cmp;
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
					//					diffs[1] = first.getParent().getHeuristicValue()[1] - second.getParent().getHeuristicValue()[1];
					//					diffs[0] = first.getParent().getHeuristicValue()[0] - second.getParent().getHeuristicValue()[0];
					//					if(diffs[1] != 0) {
					//						return diffs[1].intValue();
					//					}
					//					else{
					//						return diffs[0].intValue(); //same num risks, so compare length
					//					}

					StateNode n1 = (first.isHeuristicComputed() ? first : first.getParent());
					StateNode n2 = (second.isHeuristicComputed() ? second : second.getParent());

					diffs[0] = n1.getHeuristicValue()[0] - n2.getHeuristicValue()[0];
					int cmp = ((RiskCounterNode)n1).getDomainCount().compareTo(((RiskCounterNode)n2).getDomainCount());

					if(cmp != 0) {
						return cmp;
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


		openPreferred.add(
				new RiskCounterNode(problem, problem.getInitialState(),heuristic, solverOptions));
	}

	
	// open (in DefaultSearch) is the not preferred operators
	protected PriorityQueue<StateNode> openPreferred = null;

	protected long preferredPriority = 0;
	protected long notPreferredPriority = 0;
	protected double[] currentBestHValue = {Double.MAX_VALUE, Double.MAX_VALUE};
	protected BigInteger bestDomainCount = null;

	@Override
	public List<ActionInstance> getPath() {

		while(true) {
			RiskCounterNode node;

			// If both queues are empty, there is no solution
			if(open.size() == 0 && openPreferred.size() == 0) {
				return null;
			}

			boolean pulledPreferred = true;



			// Don't remove anything from an empty queue
			if(open.size() == 0) {
				node = (RiskCounterNode)openPreferred.remove();
				preferredPriority--;
				pulledPreferred = true;
			} else if(openPreferred.size() == 0) {
				node = (RiskCounterNode)open.remove();
				notPreferredPriority--;
				pulledPreferred = false;
			}
			// pull node from queue with the greatest value
			else if(preferredPriority >= notPreferredPriority) {
				node = (RiskCounterNode)openPreferred.remove();
				preferredPriority--;
				pulledPreferred = true;
			} else {
				node = (RiskCounterNode)open.remove();
				notPreferredPriority--;
				pulledPreferred = false;
			}

			// Check to see if this is a duplicate node
			if(closed.contains(node)) {
				continue;
			}
			closed.add(node);

			// Check to see if the solution is found in the node
			if(solutionEvaluator.isSolution(problem, node)) {
				//				logger.debug("Found Solution: " + node);
				searchStatistics.setSolutionNode(node);
				int crisks = node.getCriticalRisks();
				for(Proposition p : problem.getGoalAction().getPreconditions()){
					int tmp = RiskCounter.getBDD().ref(RiskCounter.getBDD().and(node.getPropositions().get(p), crisks));
					RiskCounter.getBDD().deref(crisks);
					crisks = tmp;
				}
				return extractSolution(node);
			}

			//logger.debug("H-computation start");
			
			// Compute node's H value
			double[] hvalue = node.getHeuristicValue();


			// Add the preferredOperator children to openPreferred
			List<StateNode> preferredNodes = node.createSubsequentNodes(actionInstances);
			openPreferred.addAll(preferredNodes);

			// Add the notPreferredOperator children to open
			List<StateNode> notPreferredNodes = node.createSubsequentNodesIgnorePreferredOperators(actionInstances);
			notPreferredNodes.removeAll(preferredNodes);
			open.addAll(notPreferredNodes);
			searchStatistics.processNode(node);


			// If the new h value is better than the current h value, add 1000 to 
			// the preferred operator priority counter
			int cmp;
			if(bestDomainCount != null)
				cmp = node.getDomainCount().compareTo(bestDomainCount);
			else
				cmp = 0;
			if(hvalue[1] < currentBestHValue[1] ||			                                 
					hvalue[1] == currentBestHValue[1] && 
					cmp == -1    
			) {
				//currentBestHValue[0] = hvalue[0];
				bestDomainCount = node.getDomainCount();
				currentBestHValue[1] = hvalue[1];

				if(pulledPreferred){
					preferredPriority += 5;
				}

				//				System.out.print(preferredPriority + " " + notPreferredPriority + " ");
				//				logger.debug(searchStatistics.toString());
				logger.debug(searchStatistics.toString());
//				BigInteger i = BigInteger.valueOf(1).shiftLeft(8);
				logger.debug(bestDomainCount);
//				RiskCounter.getBDD().printSet(node.getCriticalRisks());
				//				logger.debug(node.getCriticalRisks().toString());

			}
			//logger.debug(searchStatistics.toString());

		}
	}

}
