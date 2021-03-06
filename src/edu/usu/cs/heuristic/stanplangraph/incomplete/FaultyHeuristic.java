package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.PODEPISolver;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.PIFaultSet;

public class FaultyHeuristic implements Heuristic {
	protected Problem problem;
	protected Domain domain;
	protected FaultyRelaxedPlanningGraph heuristicSolver;
	protected Solver solver;
	FaultSet possibleDomains = null;

	
	public void setPossibleDomains(FaultSet solvableDomains) {
		this.possibleDomains = solvableDomains;
		if(heuristicSolver != null)
			heuristicSolver.setPossibleDomains(solvableDomains);
	}


	public FaultyHeuristic(Problem problem, Domain domain, Solver solver) {
		this.problem = problem;
		this.domain = domain;
		this.solver = solver;
		heuristicSolver = new FaultyRelaxedPlanningGraph(problem, domain, solver, possibleDomains);
	}


	public PlanMetric[] getValue(StateNode node) {
		PlanMetric[] values = new PlanMetric[2];

		heuristicSolver.reachFixedPoint(node);
		FaultSet goalRiskSet = heuristicSolver.getGoalRiskSet();
		double relaxedPlanLength = heuristicSolver.getRelaxedPlanLength();

		values[0] = goalRiskSet.getFaultPlanMetric();
		// If goalRiskSet returns null, there is no solution in this path so return infinity
		if(relaxedPlanLength == Double.MAX_VALUE) {
			values[1] = new NumericMetric(Double.MAX_VALUE);
		}
		else{
			values[1] = new NumericMetric(relaxedPlanLength);
		}
		//System.out.println("\t\t" + values[0] + " " + values[1] );


		return values;
	}

//	@Override
//	public PlanMetric[] getValue(StateNode abstractStateNode) {
//		if(abstractStateNode instanceof FFRiskyNode)
//			return getValue((FFRiskyNode)abstractStateNode);
//		return null;
//	}
	@Override
	public Set<ActionInstance> getHelpfulActions() {
		return heuristicSolver.getHelpfulActions();
	}
	
	@Override
	public Set<ActionInstance> getPreferredOperators() {
		return heuristicSolver.getPreferredActions();
	}

//	@Override
//	public List<ActionInstance> getRelevantActions() {
//		return heuristicSolver.getRelevantActions();
////		List<ActionHeader> headers = heuristicSolver.getActionSpike().getActionsByRank(heuristicSolver.getActionSpike().getCurrentRank()-1);
////		List<ActionInstance> returnActions = new ArrayList<ActionInstance>();
////		for(ActionHeader header: headers){
////			returnActions.add(header.getAction());
////		}
////		return returnActions;
//	}


	@Override
	public Set[] getRelevant() {
		// TODO Auto-generated method stub
		return heuristicSolver.getRelevant();
	}


	@Override
	public void removeIrrelevant(Set[] relevant) {
		heuristicSolver.removeIrrelevant(relevant);
		
	}


	@Override
	public FaultSet getExplanation(StateNode node) {
		// TODO Auto-generated method stub
		return null;
	}


	
}
