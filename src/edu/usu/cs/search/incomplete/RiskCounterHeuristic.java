package edu.usu.cs.search.incomplete;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFRiskyHeuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFriskyRelaxedPlanningGraph;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.planner.ffrisky.util.RiskCounterNode;
import edu.usu.cs.search.StateNode;

public class RiskCounterHeuristic extends FFRiskyHeuristic implements Heuristic  {

	public RiskCounterHeuristic(Problem problem, Domain domain,
			SolverOptions solverOptions) {
		super();
		this.problem = problem;
		this.domain = domain;
		solver = new BddRelaxedPlanningGraph(problem, domain, solverOptions);

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

	@Override
	public double[] getValue(StateNode node) {
		RiskCounterNode rnode = (RiskCounterNode)node;
		double[] values = new double[2];

		solver.reachFixedPoint(node);
		int goalRiskSet = ((BddRelaxedPlanningGraph)solver).getBddGoalRiskSet();
		double relaxedPlanLength = solver.getRelaxedPlanLength();

		// If goalRiskSet returns null, there is no solution in this path so return infinity
		if(goalRiskSet == 0 || relaxedPlanLength == Double.MAX_VALUE) {
			values[0] = Double.MAX_VALUE;
			values[1] = Double.MAX_VALUE;

		}
		else{
			// Remove all critical risks that have been added already
			int tmp = RiskCounter.getBDD().ref(RiskCounter.getBDD().and(goalRiskSet, rnode.getActRisks()));
			RiskCounter.getBDD().deref(goalRiskSet);
			goalRiskSet = tmp;
			values[0] = 0;//RiskCounter.getUnsolvableDomainCount(goalRiskSet);


			values[1] = relaxedPlanLength;
		}
		//System.out.println("\t\t" + values[0] + " " + values[1] );


		return values;
	}

	public BigInteger getDomainCount(){
		//RiskCounter.getBDD().printSet(((BddRelaxedPlanningGraph)solver).getBddGoalRiskSet());
		return RiskCounter.getBigUnsolvableDomainCount(((BddRelaxedPlanningGraph)solver).getBddGoalRiskSet());
	}
}
