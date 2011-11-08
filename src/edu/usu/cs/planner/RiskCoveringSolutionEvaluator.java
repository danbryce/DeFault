package edu.usu.cs.planner;

import java.util.List;

import jdd.bdd.BDD;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.planner.util.RiskCounterNode;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.FaultStateNode;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.PIFaultSet;
import edu.usu.cs.search.incomplete.RiskSolutionEvaluator;

public class RiskCoveringSolutionEvaluator extends RiskSolutionEvaluator
		implements SolutionEvaluator {
	//int possibleDomains = 1;
	FaultSet faultsToCover = null; //intersection of faults of previous plans
	
public FaultSet getFaultsToCover() {
		return faultsToCover;
	}
	public void setFaultsToCover(FaultSet faultsToCover) {
		this.faultsToCover = faultsToCover;
	}
	//	public int getPossibleDomains() {
//		return possibleDomains;
//	}
//	public void setPossibleDomains(int possibleDomains) {
//		this.possibleDomains = possibleDomains;
//	}
	public RiskCoveringSolutionEvaluator(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions) {
		super(domain, problem, searchStatistics, solverOptions);

	}
	@Override
	public boolean keepSolution(StateNode currentNode, List<StateNode> solutions) {
		FaultStateNode fcn = ((FaultStateNode)currentNode);
		FaultSet criticalAndGoal = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ? 
										new BDDFaultSet(fcn.getCriticalRisks()) :
										new PIFaultSet(fcn.getCriticalRisks()));	
		for(Proposition p : problem.getGoalAction().getPreconditions()){
			criticalAndGoal.or(fcn.getPropositions().get(p));
		}
		//logger.debug(FaultCounter.getBDD().printSetToString(((BDDRiskSet)criticalAndGoal).getFaults()));
	//	logger.debug("Succeeds In: \t\t" +  FaultCounter.getBigSolvableDomainCount(criticalAndGoal));

		//criticalAndGoal.and(faultsToCover); //possible domains where it fails
//		logger.debug("Succeeds in New: \t" +  FaultCounter.getBigSolvableDomainCount(criticalAndGoal));
		FaultSet uncoveredFaults = null;
		if(faultsToCover != null){
			uncoveredFaults = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ? 
					new BDDFaultSet(faultsToCover) :
						new PIFaultSet(faultsToCover));
			
			uncoveredFaults.andNot(criticalAndGoal);
		}
		//		int cmp = (bestSolution == null ? -1 : criticalAndGoal.compareTo(bestFaultSet));
		if(faultsToCover == null || !uncoveredFaults.empty() //if plan does not contain some faults that are in faultsToCover -- faultsToCover\plan is non empty
				// ((BDDRiskSet)criticalAndGoal).getFaults() != possibleDomains //succeeds in at least one domain
				//cmp == -1 
				//|| (cmp ==0 && fcn.getGValue()[0].strictlyBetter(bestSolution.getGValue()[0]))
				){
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
				if(!((FaultStateNode)node).isActionApplicable(problem.getGoalAction()))
					return false;

			FaultStateNode fcn = ((FaultStateNode)node);
			FaultSet criticalAndGoal = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ? 
											new BDDFaultSet(fcn.getCriticalRisks()) :
											new PIFaultSet(fcn.getCriticalRisks()));	
			for(Proposition p : problem.getGoalAction().getPreconditions()){
				criticalAndGoal.or(fcn.getPropositions().get(p));
			}
			//criticalAndGoal.and(possibleDomains);
			
			//is solution if there are faults to cover that are not part of the plan
			FaultSet uncoveredFaults = null;
			if(faultsToCover != null){
				uncoveredFaults = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ? 
						new BDDFaultSet(faultsToCover) :
							new PIFaultSet(faultsToCover));
				
				uncoveredFaults.andNot(criticalAndGoal);
			}
			return  faultsToCover == null || !uncoveredFaults.empty();
		
		} else if (node instanceof RiskCounterNode) {
			return ((RiskCounterNode)node).isActionApplicable(problem.getGoalAction());
		}
		return false;
	}
}
