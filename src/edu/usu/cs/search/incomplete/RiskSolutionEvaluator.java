package edu.usu.cs.search.incomplete;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.planner.util.RiskCounterNode;
import edu.usu.cs.search.DefaultFaultSet;
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
	protected Solver solver;
	protected long solutionEvaluationTime = 0;
	
	//private List<ActionInstance> actionInstances;
	
	
	public long getSolutionEvaluationTime() {
		return solutionEvaluationTime;
	}

	public RiskSolutionEvaluator(Domain domain,
									Problem problem,
									//List<ActionInstance> actionInstances,									
									SearchStatistics searchStatistics,
									Solver solver) {
		this.domain = domain;
		this.problem = problem;
//		this.actionInstances = actionInstances;
//		this.incompleteProblem = incompleteProblem;
		this.searchStatistics  = searchStatistics;
		this.bestSolution = null;
		this.solver = solver;
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
		return solver.getSolverOptions().getSearchType() != SolverOptions.SEARCHTYPE.ANYTIME || bestSolution.getCriticalRisks().isFalse();
		
		//solutions.size()==1;
	}

	

	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		FaultStateNode fcn = ((FaultStateNode)currentNode);
		
		FaultSet criticalAndGoal;
		if(solver.getSolverOptions().isStrictSemantics()){
			criticalAndGoal = DefaultFaultSet.makeNew(fcn.getCriticalRisks(), solver.getSolverOptions());
		}
		else{
			criticalAndGoal = DefaultFaultSet.makeNew(solver.getSolverOptions());
		}
		for(Proposition p : problem.getGoalAction().getPreconditions()){
			criticalAndGoal.or(fcn.getPropositions().get(p));
		}
		
		
		int cmp = (bestSolution == null ? -1 : criticalAndGoal.compareTo(bestFaultSet));
		if(  cmp == -1 
				//|| (cmp ==0 && fcn.getGValue()[0].strictlyBetter(bestSolution.getGValue()[0]))
				){
			//logger.debug("Found Better Solution");//((PIRiskSet)criticalAndGoal).getSet().size());
			//logger.debug(currentNode.getPlanString());
//			logger.debug("# Fail Models: " + RiskCounter.getBigUnSolvableDomainCount(criticalAndGoal));
			
			
			searchStatistics.pauseTime();
			long startEvalTime = System.currentTimeMillis();
			
			List<ActionInstance> plan = currentNode.getPlan();
			BigInteger total =BigInteger.valueOf(1).shiftLeft(FaultCounter.getNumRisks());
			BigInteger solvable = FaultCounter.getModelCount(domain, problem, plan, solver); 
			BigDecimal probability = new BigDecimal(solvable);
			probability = probability.divide(new BigDecimal(total));
			
			
			solutionEvaluationTime += System.currentTimeMillis() - startEvalTime;
			
			StringBuilder b = new StringBuilder();
			b.append(searchStatistics.getElapsedTime()/1000.0).append("\t");
			b.append(searchStatistics.getNodesExpanded()).append("\t");
			b.append(plan.size()).append("\t");
			b.append(probability).append("\t");
			b.append(solutionEvaluationTime/1000.0).append("\t");
			//b.append("\n");
			logger.debug(b.toString());
			bestSolution = fcn;
			bestFaultSet = criticalAndGoal;
			
			
			searchStatistics.resumeTime();
			
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
//			return new FriskySearch(domain, problem, actionInstances, this, searchStatistics, new solver.getSolverOptions()());
//		} catch (IllDefinedProblemException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//	}


	
	
	
}
