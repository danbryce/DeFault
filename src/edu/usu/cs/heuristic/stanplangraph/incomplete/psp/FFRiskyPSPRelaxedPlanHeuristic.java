package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.psp.UtilityFunction;

public class FFRiskyPSPRelaxedPlanHeuristic implements Heuristic {
	Problem problem;
	Domain domain;
	FFriskyPSPRelaxedPlanningGraph solver;
	private int planLength = -1;

	public FFRiskyPSPRelaxedPlanHeuristic(Problem problem, Domain domain, UtilityFunction utilityFunction) {
		this.problem = problem;
		this.domain = domain;
		solver = new FFriskyPSPRelaxedPlanningGraph(problem, domain, utilityFunction);
	}

	
	public double[] getValue(FFRiskyNode node) {
		double[] values = new double[2];

		solver.reachFixedPoint(node);
		Set<Risk> goalRiskSet = solver.getGoalRiskSet();
		double netBenefit = solver.getRelaxedPlanNetBenefit();

		// If goalRiskSet returns null, there is no solution in this path so return infinity
		if(goalRiskSet == null) {
			values[0] = Double.MAX_VALUE;
			values[1] = 0;

		}
		else{
			// Remove all critical risks that have been added already
			goalRiskSet.removeAll(node.getCriticalRisks());
			values[0] = goalRiskSet.size();


			values[1] = netBenefit;
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
}
