package edu.usu.cs.search;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class ClassicalSolutionEvaluator implements SolutionEvaluator {

	public boolean isSolution(Problem problem, StateNode node) {
		//Set<Proposition> state = node.getState();
		Set<Proposition> goal = problem.getGoalAction().getPreconditions(); 
		
		return 	node.satisfies(goal);
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

	@Override
	public boolean getFoundSolution() {
		// TODO Auto-generated method stub
		return false;
	}

//	@Override
//	public boolean closedContains(Set<StateNode> closed, StateNode currentNode) {
//		for(StateNode node : closed){
//			if(node.getState().containsAll(currentNode.getState()) && currentNode.getState().containsAll(node.getState())){
//				return true;
//			}
//		}
//		return false;
//	}

//	@Override
//	public boolean isBetter(StateNode childNode, StateNode parentNode) {
//		return childNode.getHeuristicValue()[0] < parentNode.getHeuristicValue()[0];
//	}

//	@Override
//	public Search getFallBackSearch() {
//		// TODO Auto-generated method stub
//		return null;
//	}

	

}
