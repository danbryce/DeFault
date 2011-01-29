package edu.usu.cs.search;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.Observation;
import edu.usu.cs.planner.PODEBDDConditionalSolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.search.incomplete.RiskSolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class PreferredOperatorDeferredEvaluationConditionalSearch extends
		AbstractSearch implements Search {

	private static Logger logger = Logger.getLogger(PreferredOperatorDeferredEvaluationConditionalSearch.class.getName());

	// open (in DefaultSearch) is the not preferred operators
//	protected PriorityQueue<StateNode> openPreferred = null;
//	protected long preferredPriority = 0;
//	protected long notPreferredPriority = 0;
	//protected PlanMetric[] currentBestHValue = null;
//	protected StateNode bestNode = null;
	IncompleteBDDConditionalNode start;

	public PreferredOperatorDeferredEvaluationConditionalSearch(
			Domain domain, 
			Problem problem,
			List<ActionInstance> actionInstances,
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics,
			Solver solver
	) throws IllDefinedProblemException
	{
		super(domain, problem, actionInstances, solutionEvaluator, searchStatistics, solver);
//		closed = new HashSet<StateNode>();
//		open = new PriorityQueue<StateNode>();
//		openPreferred = new PriorityQueue<StateNode>();
	}


	@Override
	public void initialize(StateNode node) {
		//node.getHeuristicValue();
		//solver.getHeuristic()
		//openPreferred.add(node);
		start = (IncompleteBDDConditionalNode) node;
	}


	private void expandSolution(IncompleteBDDConditionalNode node){
	 expandSolution(node, 1);
	}
	
	public static String padLeft(String s, int n) {
		return String.format("%1$#" + n + "s", s);  

	}

	
	private void expandSolution(IncompleteBDDConditionalNode node, int indent){
		logger.debug(padLeft(" ", indent) + "Expand " + node.id);
		if(node.successors == null && !node.solved){
			node.getHeuristicValue();
			node.expand(solver.getRelevantActions(), null);
			logger.debug("*");
		}
		else{
			logger.debug(node.bestAction.toString());
			Map<Observation, StateNode> outcomes = node.successors.get(node.bestAction);
			for(Observation o : outcomes.keySet()){
				IncompleteBDDConditionalNode snode = (IncompleteBDDConditionalNode) outcomes.get(o);
				if(!snode.solved){
					expandSolution(snode, indent +1);
				}
			}
		}
		node.backup();
	}
	

	@Override
	public List<ActionInstance> getPath() {
		long expanded = 0;
		while(true) {
			
			if(start.isSolved()){
				return null;
			}
			else{
				logger.debug("++++++++++");
				expandSolution(start);
			}
			
		}
//			PreferredOperatorDeferredEvaluationNode node;
//
//			// If both queues are empty, there is no solution
//			if(open.size() == 0 && openPreferred.size() == 0) {
//				return null;
//			}
//
//			boolean pulledPreferred = true;
//
//			// Don't remove anything from an empty queue
//			if(open.size() == 0) {
//				node = (PreferredOperatorDeferredEvaluationNode)openPreferred.remove();
//				preferredPriority--;
//				pulledPreferred = true;
//			} else if(openPreferred.size() == 0) {
//				node = (PreferredOperatorDeferredEvaluationNode)open.remove();
//				notPreferredPriority--;
//				pulledPreferred = false;
//			}
//			// pull node from queue with the greatest value
//			else if(//expandPreferred){//
//					preferredPriority >= notPreferredPriority) {
//				node = (PreferredOperatorDeferredEvaluationNode)openPreferred.remove();
//				preferredPriority--;
//				pulledPreferred = true;
//			} else {
//				node = (PreferredOperatorDeferredEvaluationNode)open.remove();
//				notPreferredPriority--;
//				pulledPreferred = false;
//			}
//
//			// Check to see if this is a duplicate node
//			//logger.debug("Check CLosed" + ((FaultStateNode)node).getPropositions().keySet());
//			//			PreferredOperatorDeferredEvaluationNode node = closed.remove(node);
//			if(closed.contains(node)) {
//				continue;
//			}
//
//
//			// Check to see if the solution is found in the node
//			if(solutionEvaluator.isSolution(problem, node)) {
//				//				logger.debug("Found Solution: " + node);
//				searchStatistics.setSolutionNode(node);
//				//				GeneralizedRiskSet crisks = node.getCriticalRisks();
//				//				for(Proposition p : problem.getGoalAction().getPreconditions()){
//				//					crisks.union(node.getPropositions().get(p));
//				//				}
//				return extractSolution(node);
//			}
//
//			//			if(((PreferredOperatorDeferredEvaluationNode)node).isHeuristicComputed()){
//			//				// Add the notPreferredOperator children to open
//			//				List<StateNode> notPreferredNodes = node.createSubsequentNodes(
//			//						solver.getRelevantActions()
//			//						//actionInstances
//			//						, node.getPreferredOperators());
//			//				//				for(StateNode cnode : notPreferredNodes)
//			//				//					cnode.getHeuristicValue();
//			//
//			//				open.addAll(notPreferredNodes);
//			//				((PreferredOperatorDeferredEvaluationNode)bestNode).setPreferredOperators(null);
//			//				closed.add(node);
//			//
//			//			}
//			//			else{
//			//
//			//
//			//				// Compute node's H value
//			//				node.getHeuristicValue();
//			//
//			//				if(((Double)((NumericMetric)node.getHeuristicValue()[0]).getValue()).equals(Double.MAX_VALUE)){
//			//					closed.add(node);
//			//					continue;
//			//				}
//			//
//			//				// Add the preferredOperator children to openPreferred
//			//				//List<ActionInstance> po = new ArrayList<ActionInstance>(node.getPreferredOperators());
//			//				List<StateNode> preferredNodes = node.createSubsequentNodes(node.getPreferredOperators(), null);
//			//
//			//				openPreferred.addAll(preferredNodes);
//			//				open.add(node);
//			//				//				for(StateNode cnode : preferredNodes)
//			//				//					cnode.getHeuristicValue();
//			//
//			//
//			//			}

//			// Compute node's H value
//			node.getHeuristicValue();
//			searchStatistics.processNode(node);
////			logger.debug(((FaultStateNode) node).getPropositions().keySet());
//			if(node.deadEnd()){
//				closed.add( node);
//				continue;
//			}
//			// Add the notPreferredOperator children to open
////			List<StateNode> notPreferredNodes = node.createSubsequentNodes(
////					solver.getRelevantActions(), node.getPreferredOperators());
////
////			open.addAll(notPreferredNodes);
//
//			((IncompleteBDDConditionalNode)node).expand(solver.getRelevantActions(), node.getPreferredOperators());
//
//			// Add the preferredOperator children to openPreferred
////			List<StateNode> preferredNodes =  node.createSubsequentNodes(node.getPreferredOperators(), null);
////			openPreferred.addAll(preferredNodes);
//			((IncompleteBDDConditionalNode)node).expand(node.getPreferredOperators(), null);
//			
//			closed.add(   node);
//
//			// If the new h value is better than the current h value, add 1000 to 
//			// the preferred operator priority counter
//			if(bestNode == null ||
//					node.compareTo(bestNode) < 0 ) {
//				bestNode = node;
//				if(pulledPreferred){
////										for(StateNode cnode : preferredNodes)
////											cnode.getHeuristicValue();
//					
//
//					preferredPriority += 5*preferredNodes.size();
//				}
//				else{
//					//					for(StateNode cnode : notPreferredNodes)
//					//						cnode.getHeuristicValue();
//
//				}
//				logger.debug(searchStatistics.toString()+" " + expanded);
//				expanded = 0;
//			}
//
//
//
//			//logger.debug(searchStatistics.toString());

//		}
	}





}
