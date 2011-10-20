package edu.usu.cs.search.incomplete;

import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.FaultCounter;
import edu.usu.cs.planner.ffrisky.util.RiskCounterNode;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.FaultStateNode;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class RiskSolutionEvaluator implements SolutionEvaluator {

	protected static Logger logger = Logger.getLogger(RiskSolutionEvaluator.class.getName());
	
	private SearchStatistics searchStatistics = null;
	private Domain domain;
	protected Problem problem;
	protected FaultStateNode bestSolution;
	protected FaultSet bestFaultSet;
	protected SolverOptions solverOptions;
	
	//private List<ActionInstance> actionInstances;
	
	
	public RiskSolutionEvaluator(Domain domain,
									Problem problem,
									//List<ActionInstance> actionInstances,									
									SearchStatistics searchStatistics,
									SolverOptions solverOptions) {
		this.domain = domain;
		this.problem = problem;
//		this.actionInstances = actionInstances;
//		this.incompleteProblem = incompleteProblem;
		this.searchStatistics  = searchStatistics;
		this.bestSolution = null;
		this.solverOptions = solverOptions;
	}
	
	@Override
	public StateNode getBestSolution(List<StateNode> solutions) {
//		if(solutions.size() > 0){
//		Collections.sort(solutions);
//		searchStatistics.setSolutionNode(solutions.get(0));
//		return solutions.get(0);
//		}
//		else{
//			return null;
//		}
		return bestSolution;
	}

	public boolean getFoundSolution(){
		return bestSolution != null;
	}

	@Override
	public boolean isSolutionSetComplete(List<StateNode> solutions) {
		return solverOptions.getSearchType() != SolverOptions.SEARCHTYPE.ANYTIME || bestSolution.getCriticalRisks().empty();
		
		//solutions.size()==1;
	}

	

	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		FaultStateNode fcn = ((FaultStateNode)currentNode);
		FaultSet criticalAndGoal = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ? 
										new BDDRiskSet(fcn.getCriticalRisks()) :
										new PIRiskSet(fcn.getCriticalRisks()));	
		for(Proposition p : problem.getGoalAction().getPreconditions()){
			criticalAndGoal.or(fcn.getPropositions().get(p));
		}
		int cmp = (bestSolution == null ? -1 : criticalAndGoal.compareTo(bestFaultSet));
		if(  cmp == -1 
				//|| (cmp ==0 && fcn.getGValue()[0].strictlyBetter(bestSolution.getGValue()[0]))
				){
			logger.debug("Found Better Solution");//((PIRiskSet)criticalAndGoal).getSet().size());
//			logger.debug(currentNode.getPlanString());
//			logger.debug("# Fail Models: " + RiskCounter.getBigUnSolvableDomainCount(criticalAndGoal));
			bestSolution = fcn;
			bestFaultSet = criticalAndGoal;
		return true;
		}
		else{
			return false;
		}
	}

	@Override
	public boolean isSolution(Problem problem, StateNode node) {
		// TODO Auto-generated method stub
		if(node instanceof FaultStateNode){
			
			return ((FaultStateNode)node).isActionApplicable(problem.getGoalAction());
		
		} else if (node instanceof RiskCounterNode) {
			return ((RiskCounterNode)node).isActionApplicable(problem.getGoalAction());
		}
		return false;
	}

	

//	@Override
//	public boolean closedContains(Set<StateNode> closed, StateNode currentNode) {
//		//TODO need a hash here
//		FFRiskyNode fcn = (FFRiskyNode)currentNode;
//		for(StateNode stateNode : closed){
//			if(stateNode instanceof FFRiskyNode){
//				FFRiskyNode fsn = (FFRiskyNode)stateNode;
//				if(fcn.equals(fsn));
//			}
//		}
//		return false;
//	}

//	@Override
//	public boolean isBetter(StateNode childNode, StateNode parentNode) {
//		double[]  diff = new double[childNode.getDimension()];
//		
//		boolean strictlyBetter = false;
//		
//		for(int i = 0; i < childNode.getDimension(); i++){
//			diff[i] = childNode.getHeuristicValue()[i] - parentNode.getHeuristicValue()[i];
//			if(diff[i] > 0){
//				return false;
//			}
//			else if(diff[i] < 0.0 ){
//				strictlyBetter = true;
//			}
//		}
//				
//		return strictlyBetter;
//	}

//	@Override
//	public Search getFallBackSearch() {
//		try {
//			return new FriskySearch(domain, problem, actionInstances, this, searchStatistics, new SolverOptions());
//		} catch (IllDefinedProblemException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//	}


	
	
	
}
