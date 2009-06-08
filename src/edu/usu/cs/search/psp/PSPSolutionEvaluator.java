package edu.usu.cs.search.psp;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;

public class PSPSolutionEvaluator implements SolutionEvaluator {

	private final int MAX_NUM_SOLUTIONS = 10;

	@Override
	public StateNode getBestSolution(List<StateNode> solutions) {
		if(solutions.size() > 0){
		Collections.sort(solutions);
		return solutions.get(0);
		}
		else{
			return null;
		}
	}

	@Override
	public boolean isSolution(Problem problem, StateNode node) {
		return true;
	}

	@Override
	public boolean isSolutionSetComplete(List<StateNode> solutions) {
		return solutions.size() >= MAX_NUM_SOLUTIONS;
	}


	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		boolean keep = true;

		//is solution better than all those found so far
		if(solutions.size() > 0){
			for(StateNode solution : solutions){
				if(currentNode.getGValue() <= solution.getGValue()){
					keep = false;
					break;
				}
			}
		}
		return keep;
	}

}
