package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;

public class FFRiskyHeuristic implements Heuristic {
	protected Problem problem;
	protected Domain domain;
	protected FFriskyRelaxedPlanningGraph solver;

	public FFRiskyHeuristic(Problem problem, Domain domain, SolverOptions solverOptions) {
		this.problem = problem;
		this.domain = domain;
		solver = new FFriskyRelaxedPlanningGraph(problem, domain, solverOptions);
	}

	//	public int getValue(FFRiskyNode node) {
	//		
	//		solver.reachFixedPoint(node);
	//		Set<Risk> goalRiskSet = solver.getGoalRiskSet();
	//		
	//		// If goalRiskSet returns null, there is no solution in this path so return infinity
	//		if(goalRiskSet == null) {
	//			planLength = -1;
	//			return Integer.MAX_VALUE;
	//		}
	//		
	//		
	//		// Remove all critical risks that have been added already
	//		goalRiskSet.removeAll(node.getCriticalRisks());
	//		return goalRiskSet.size();
	//	}

	public FFRiskyHeuristic() {
		// TODO Auto-generated constructor stub
	}

	public double[] getValue(FFRiskyNode node) {
		double[] values = new double[2];

		solver.reachFixedPoint(node);
		GeneralizedRiskSet goalRiskSet = solver.getGoalRiskSet();
		double relaxedPlanLength = solver.getRelaxedPlanLength();

		// If goalRiskSet returns null, there is no solution in this path so return infinity
		if(goalRiskSet == null || relaxedPlanLength == Double.MAX_VALUE) {
			values[0] = Double.MAX_VALUE;
			values[1] = Double.MAX_VALUE;

		}
		else{
			// Remove all critical risks that have been added already


















			goalRiskSet.removeAll(node.getActRisks());
			values[0] = goalRiskSet.size();


			values[1] = relaxedPlanLength;
		}
		//System.out.println("\t\t" + values[0] + " " + values[1] );


		return values;
	}

	@Override
	public double[] getValue(StateNode abstractStateNode) {
		if(abstractStateNode instanceof FFRiskyNode)
			return getValue((FFRiskyNode)abstractStateNode);
		return null;
	}
	@Override
	public Set<ActionInstance> getHelpfulActions() {
		return solver.getHelpfulActions();
	}
	
	@Override
	public Set<ActionInstance> getPreferredOperators() {
		return solver.getPreferredActions();
	}

	@Override
	public List<ActionInstance> getRelevantActions() {
		List<ActionHeader> headers = solver.getActionSpike().getActionsByRank(solver.getActionSpike().getCurrentRank()-1);
		List<ActionInstance> returnActions = new ArrayList<ActionInstance>();
		for(ActionHeader header: headers){
			returnActions.add(header.getAction());
		}
		return returnActions;
	}
}
