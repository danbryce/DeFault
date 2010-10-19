package edu.usu.cs.search.incomplete;

import java.util.Collections;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounterNode;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFRiskySolutionEvaluator implements SolutionEvaluator {

	
	Problem incompleteProblem = null;
	private SearchStatistics searchStatistics = null;
	private Domain domain;
	private Problem problem;
	private List<ActionInstance> actionInstances;
	
	
	public FFRiskySolutionEvaluator(Domain domain,
									Problem problem,
									List<ActionInstance> actionInstances,
									Problem incompleteProblem, 
									SearchStatistics searchStatistics) {
		this.domain = domain;
		this.problem = problem;
		this.actionInstances = actionInstances;
		this.incompleteProblem = incompleteProblem;
		this.searchStatistics  = searchStatistics;
	}
	
	@Override
	public StateNode getBestSolution(List<StateNode> solutions) {
		if(solutions.size() > 0){
		Collections.sort(solutions);
		searchStatistics.setSolutionNode(solutions.get(0));
		return solutions.get(0);
		}
		else{
			return null;
		}
	}


	@Override
	public boolean isSolutionSetComplete(List<StateNode> solutions) {
		return solutions.size()==1;
	}


	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		return true;
	}

	@Override
	public boolean isSolution(Problem problem, StateNode node) {
		// TODO Auto-generated method stub
		if(node instanceof FFRiskyNode)
		{			
//			if(((FFRiskyNode)node).isActionApplicable(problem.getGoalAction()))
//			{
//				System.out.println("****************************************************************************");
//				System.out.println("IN FFRiskySolutionEvaluator.isSolution");
//				System.out.println("Node's state: " + node.getState());
//				System.out.println("Problem.getGoalAction().getPreconditions(): " + problem.getGoalAction().getPreconditions());
//				System.out.println("****************************************************************************");
//				
//			}	
			return ((FFRiskyNode)node).isActionApplicable(problem.getGoalAction());
		
		} else if (node instanceof RiskCounterNode) {
			return ((RiskCounterNode)node).isActionApplicable(problem.getGoalAction());
		}
		return false;

//Original version. Above version had option to check if node was presenting solution state.
//		if(node instanceof FFRiskyNode){
//			
//			return ((FFRiskyNode)node).isActionApplicable(problem.getGoalAction());
//		
//		} else if (node instanceof RiskCounterNode) {
//			return ((RiskCounterNode)node).isActionApplicable(problem.getGoalAction());
//		}
//		return false;
	}

	@Override
	public boolean closedContains(Set<StateNode> closed, StateNode currentNode) {
		//TODO need a hash here
		FFRiskyNode fcn = (FFRiskyNode)currentNode;
		for(StateNode stateNode : closed){
			if(stateNode instanceof FFRiskyNode){
				FFRiskyNode fsn = (FFRiskyNode)stateNode;
				if(fcn.equals(fsn));
			}
		}
		return false;
	}

	@Override
	public boolean isBetter(StateNode childNode, StateNode parentNode) {
		double[]  diff = new double[childNode.getDimension()];
		
		boolean strictlyBetter = false;
		
		for(int i = 0; i < childNode.getDimension(); i++){
			diff[i] = childNode.getHeuristicValue()[i] - parentNode.getHeuristicValue()[i];
			if(diff[i] > 0){
				return false;
			}
			else if(diff[i] < 0.0 ){
				strictlyBetter = true;
			}
		}
				
		return strictlyBetter;
	}

	@Override
	public Search getFallBackSearch() {
		try {
			return new FriskySearch(domain, problem, actionInstances, this, searchStatistics, new SolverOptions());
		} catch (IllDefinedProblemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


	
	
	
}
