package edu.usu.cs.search;

import java.util.List;

import edu.usu.cs.pddl.domain.Problem;

public interface SolutionEvaluator {
	boolean isSolution(Problem problem, StateNode node);
	boolean isSolutionSetComplete(List<StateNode> solutions);
	StateNode getBestSolution(List<StateNode> solutions);
	boolean keepSolution(StateNode currentNode, List<StateNode> solutions);
}
