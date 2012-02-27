package edu.usu.cs.search;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.Problem;

public interface SolutionEvaluator {
	boolean isSolution(Problem problem, StateNode node);
	boolean isSolutionSetComplete(List<StateNode> solutions);
	StateNode getBestSolution(List<StateNode> solutions);
	boolean keepSolution(StateNode currentNode, List<StateNode> solutions);
	//boolean closedContains(Set<StateNode> closed, StateNode currentNode);
	//boolean isBetter(StateNode childNode, StateNode parentNode);
	//Search getFallBackSearch();
	//boolean closedContains(Set<StateNode> closed, StateNode currentNode);
	//boolean isBetter(StateNode childNode, StateNode parentNode);
	//Search getFallBackSearch();
	boolean getFoundSolution();
	long getSolutionEvaluationTime();
}
