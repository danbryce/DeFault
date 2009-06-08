package edu.usu.cs.search.astar;

import java.util.List;

import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;

public class ClassicalSolutionEvaluator implements SolutionEvaluator {

	public boolean isSolution(Problem problem, StateNode node) {
		return 	problem.getGoal().evaluate(node.getState());
	}

	@Override
	public boolean isSolutionSetComplete(List<StateNode> solutions) {
		return solutions.size() > 0;
	}

	@Override
	public StateNode getBestSolution(List<StateNode> solutions) {
		return solutions.get(0);
	}

	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		// TODO Auto-generated method stub
		return true;
	}

}
