package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.psp.FFRiskyPSPNode;
import edu.usu.cs.search.psp.UtilityFunction;

public class FFRiskyPSPRelaxedPlanHeuristic implements Heuristic {
	Problem problem;
	Domain domain;
	FFriskyPSPRelaxedPlanningGraph solver;

	public FFRiskyPSPRelaxedPlanHeuristic(Problem problem, Domain domain, UtilityFunction utilityFunction, SolverOptions solverOptions) {
		this.problem = problem;
		this.domain = domain;
		solver = new FFriskyPSPRelaxedPlanningGraph(problem, domain, utilityFunction, solverOptions);
	}

	
	public double[] getValue(FFRiskyPSPNode node) {
		double[] values = new double[node.getDimension()];

		solver.reachFixedPoint(node);
		Set<Risk> goalRiskSet = solver.getGoalRiskSet(node.getGoalsAchieved());
		
		double benefit = solver.getRelaxedPlanBenefit(node.getGoalsAchieved());
		double cost = solver.getRelaxedPlanCost(node.getGoalsAchieved());

		// If goalRiskSet returns null, there is no solution in this path so return infinity
		if(goalRiskSet == null) {
			values[0] = Double.MAX_VALUE;
			values[1] = 0;
			values[2] = 0;
		}
		else{
			// Remove all critical risks that have been added already
			goalRiskSet.removeAll(node.getCriticalRisks());
			values[0] = benefit;
			values[1] = goalRiskSet.size();
			values[2] = cost;
		}
		//System.out.println("\t\t" + values[0] + " " + values[1] );


		return values;
	}

	@Override
	public double[] getValue(StateNode abstractStateNode) {
		if(abstractStateNode instanceof FFRiskyPSPNode)
			return getValue((FFRiskyPSPNode)abstractStateNode);
		return null;
	}
	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return solver.getHelpfulActions();
	}


	@Override
	public List<ActionInstance> getRelevantActions() {
		return solver.getRelevantActions();
//		// TODO Auto-generated method stub
//		List<ActionHeader> headers = solver.getActionSpike().getActionsByRank(solver.getActionSpike().getCurrentRank()-1);
//		List<ActionInstance> returnActions = new ArrayList<ActionInstance>();
//		for(ActionHeader header: headers){
//			if(!header.isNoop()){
//			returnActions.add(header.getAction());
//			}
//		}
//		return returnActions;
	}
	
	@Override
	public Set<ActionInstance> getPreferredOperators() {
		return solver.getPreferredActions();
	}
}
