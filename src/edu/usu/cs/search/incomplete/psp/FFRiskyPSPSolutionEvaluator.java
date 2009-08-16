package edu.usu.cs.search.incomplete.psp;

import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.incomplete.FriskySearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFRiskyPSPSolutionEvaluator implements SolutionEvaluator {

	
	Problem incompleteProblem = null;
	private SearchStatistics searchStatistics = null;
	private Domain domain;
	private Problem problem;
	private List<ActionInstance> actionInstances;
	private final int MAX_NUM_SOLUTIONS = 5;
	private long maxHeapUsageSize;
	private long initialHeapSize;
	private long maxRunTime;
	private long startTime;
	
	public FFRiskyPSPSolutionEvaluator(Domain domain,
									Problem problem,
									List<ActionInstance> actionInstances,
									Problem incompleteProblem, 
									SearchStatistics searchStatistics, 
									long maxHeapUsageSize,
									long maxRunTime) {
		this.domain = domain;
		this.problem = problem;
		this.actionInstances = actionInstances;
		this.incompleteProblem = incompleteProblem;
		this.searchStatistics  = searchStatistics;
		this.maxHeapUsageSize = maxHeapUsageSize;
		this.initialHeapSize = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
		this.startTime = System.currentTimeMillis();
		this.maxRunTime = maxRunTime;
	}
	
	@Override
	public StateNode getBestSolution(List<StateNode> solutions) {
		if(solutions.size() > 0){

			Queue<FFRiskyPSPNode> sols = new PriorityQueue<FFRiskyPSPNode>(20,
					new Comparator<FFRiskyPSPNode>(){
						public int compare(FFRiskyPSPNode first, FFRiskyPSPNode second){
							return -1*(int)(first.getFValue()[1] - 
									second.getFValue()[1]);
						}
					}
					);
			for(StateNode node : solutions)
				sols.add((FFRiskyPSPNode)node);
			
			return sols.poll();
			
			//			List<FFRiskyPSPNode> mySolutions = new ArrayList<FFRiskyPSPNode>();
//			for(StateNode node : solutions)
//				mySolutions.add((FFRiskyPSPNode)node);
//		Collections.sort(mySolutions);
//		searchStatistics.setSolutionNode(mySolutions.get(0));
//		return mySolutions.get(0);
		}
		else{
			return null;
		}
	}


	@Override
	public boolean isSolutionSetComplete(List<StateNode> solutions) {
		long currentRunTime = System.currentTimeMillis( ) - this.startTime;
		boolean exhaustedTime = currentRunTime > this.maxRunTime; 

		long usedMemory = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory() - initialHeapSize;
		boolean exhaustedMemory = usedMemory >= maxHeapUsageSize;
		return (solutions.size() >= MAX_NUM_SOLUTIONS || exhaustedMemory || exhaustedTime);
	}


	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		boolean keep = true;

		//keep solution if its utility or risk dominates a previous solution
		
		//is solution better than all those found so far
		if(solutions.size() > 0){
			for(StateNode solution : solutions){
				if(currentNode.getGValue()[1] <= solution.getGValue()[1]){
					keep = false;
					break;
				}
			}
		}
		return keep;
	}

	@Override
	public boolean isSolution(Problem problem, StateNode node) {
//		// TODO Auto-generated method stub
//		if(node instanceof FFRiskyPSPNode){
//			
//			return ((FFRiskyPSPNode)node).isActionApplicable(problem.getGoalAction());
//		
//		}
//		return false;
		return true;
	}

	@Override
	public boolean closedContains(Set<StateNode> closed, StateNode currentNode) {
		//TODO need a hash here
		FFRiskyNode fcn = (FFRiskyNode)currentNode;
		for(StateNode stateNode : closed){
			if(stateNode instanceof FFRiskyPSPNode){
				FFRiskyPSPNode fsn = (FFRiskyPSPNode)stateNode;
				if(fcn.equals(fsn));
			}
		}
		return false;
	}

	@Override
	public boolean isBetter(StateNode childNode, StateNode parentNode) {
		double[]  diff = new double[childNode.getDimension()];
		
		boolean strictlyBetter = false;
		
		for(int i = 1; i < childNode.getDimension(); i++){
			diff[i] = childNode.getHeuristicValue()[i] - parentNode.getHeuristicValue()[i];
			if(i == 1){
				diff[i] *= -1; //for net benefit, make it a minimiziation
			}
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
			return new FriskySearch(domain, problem, actionInstances, this, searchStatistics);
		} catch (IllDefinedProblemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


	
	
	
}
