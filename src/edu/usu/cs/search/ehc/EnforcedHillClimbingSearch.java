/**
 * 
 */
package edu.usu.cs.search.ehc;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.DefaultSearch;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
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
			List<ActionInstance> actionInstances,
			SolutionEvaluator solutionEvaluator,
			SearchStatistics searchStatistics)
	throws IllDefinedProblemException {
		super(domain, problem, actionInstances, solutionEvaluator,
				searchStatistics);
		open = null;

	}

	public List<ActionInstance> getPath(){

		while(!solutionEvaluator.isSolutionSetComplete(solutions)){

			StateNode solution = greedyFindBetterNode(startNode);


			if(solution == null){
				Search fallBack = solutionEvaluator.getFallBackSearch();
				fallBack.initialize();
				return fallBack.getPath();
			}
			else {
				solutions.add(solution);
				
			}

		}
		StateNode solution = solutionEvaluator.getBestSolution(solutions);
		searchStatistics.setSolutionNode(solution);



		return extractSolution(solution);
	}

	private StateNode greedyFindBetterNode(StateNode parentNode) {
		System.out.println("Local EHC");
		if(solutionEvaluator.isSolution(problem, parentNode) &&
				solutionEvaluator.keepSolution(parentNode, solutions)){
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
	System.out.println("Global EHC");
		
		LinkedList<StateNode> openBFS = new LinkedList<StateNode>();
		openBFS.addAll(parentNode.getSubsequentNodes());
		Set<StateNode> closedBFS = new HashSet<StateNode>();


		while(openBFS.size() > 0){
			StateNode currentNode = openBFS.getFirst();
			openBFS.remove(currentNode);

			//			if(solutionEvaluator.isSolution(problem, currentNode) &&
			//					solutionEvaluator.keepSolution(currentNode, solutions)){
			//				return currentNode;
			//			}
			List<StateNode> subsequentNodes = null;
			if(currentNode.getSubsequentNodes() == null)
				subsequentNodes = currentNode.createSubsequentNodes(actionInstances);
			searchStatistics.processNode(currentNode);
			System.out.println(searchStatistics.toString());
			for(StateNode childNode : subsequentNodes) {
				
				if(solutionEvaluator.closedContains(closedBFS, childNode)){
					continue;
				}
				else if(solutionEvaluator.isSolution(problem, childNode) &&
						solutionEvaluator.keepSolution(childNode, solutions)){
					return childNode;
				}
				if(solutionEvaluator.isSolution(problem, childNode) &&
						solutionEvaluator.keepSolution(childNode, solutions)){
					return childNode;
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

	private List<ActionInstance> extractSolution(StateNode currentNode) {


		List<ActionInstance> actionsToGoal = new ArrayList<ActionInstance>();

		while(currentNode != null && currentNode.getAction() != null) {
			actionsToGoal.add(0, currentNode.getAction());
			currentNode = currentNode.getParent();
		}

		return actionsToGoal;
	}




}
