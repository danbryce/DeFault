/**
 * 
 */
package edu.usu.cs.search.ehc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

/**
 * @author danbryce
 *
 */
public class EnforcedHillClimbingSearch extends DefaultSearch implements Search {

	protected StateNode startNode = null;
	
	/**
	 * 
	 */
	public EnforcedHillClimbingSearch() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param domain
	 * @param problem
	 * @param actionInstances
	 * @param solutionEvaluator
	 * @param searchStatistics
	 * @throws IllDefinedProblemException
	 */
	public EnforcedHillClimbingSearch(Domain domain, Problem problem,
			List<IncompleteActionInstance> actionInstances,
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics)
			throws IllDefinedProblemException {
		super(domain, problem, actionInstances, solutionEvaluator,
				searchStatistics);
		open = null;
		
	}

	public List<IncompleteActionInstance> getPath(){
		StateNode solution = greedyFindBetterNode(startNode);
		
		if(solution == null){
			Search fallBack = solutionEvaluator.getFallBackSearch();
			fallBack.initialize();
			return fallBack.getPath();
		}
		else {
			searchStatistics.setSolutionNode(solution);
		}
		
		
				
		return extractSolution(solution);
	}

	private StateNode greedyFindBetterNode(StateNode parentNode) {
		
		if(solutionEvaluator.isSolution(problem, parentNode)){
			return parentNode;
		}

					
		List<StateNode> subsequentNodes = parentNode.createSubsequentNodes(actionInstances);
		
		searchStatistics.processNode(parentNode);
		System.out.println(searchStatistics.toString());
	for(StateNode childNode : subsequentNodes) {
			if(solutionEvaluator.isBetter(childNode, parentNode)){
				return greedyFindBetterNode(childNode);
			}				
		}
		
		//couldn't find a better node
		return globalFindBetterNode(parentNode);
	}
	
	
	
	
	
	private StateNode globalFindBetterNode(StateNode parentNode) {
		LinkedList<StateNode> openBFS = new LinkedList<StateNode>();
		openBFS.addAll(parentNode.getSubsequentNodes());
		Set<StateNode> closedBFS = new HashSet<StateNode>();
		
		
		while(openBFS.size() > 0){
			StateNode currentNode = openBFS.getFirst();
			openBFS.remove(currentNode);
			
			List<StateNode> subsequentNodes = currentNode.createSubsequentNodes(actionInstances);
			searchStatistics.processNode(currentNode);
			System.out.println(searchStatistics.toString());
			for(StateNode childNode : subsequentNodes) {
				if(solutionEvaluator.closedContains(closedBFS, childNode)){
					continue;
				}
				if(solutionEvaluator.isSolution(problem, currentNode)){
					return currentNode;
				}
				else if(solutionEvaluator.isBetter(childNode, parentNode)){
					return greedyFindBetterNode(childNode);
				}			
				else{
					openBFS.addLast(childNode);
				}
					
			}

		}
		
		return null;
	}

	private List<IncompleteActionInstance> extractSolution(StateNode currentNode) {

		
		List<IncompleteActionInstance> actionsToGoal = new ArrayList<IncompleteActionInstance>();
		
		while(currentNode != null && currentNode.getAction() != null) {
			actionsToGoal.add(0, currentNode.getAction());
			currentNode = currentNode.getParent();
		}
		
		return actionsToGoal;
	}

	
	
	
}
