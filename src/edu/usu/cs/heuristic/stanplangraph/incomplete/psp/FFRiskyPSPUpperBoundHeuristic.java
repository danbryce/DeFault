package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public class FFRiskyPSPUpperBoundHeuristic implements Heuristic {
	Problem problem;
	Domain domain;

	public FFRiskyPSPUpperBoundHeuristic(Problem problem, Domain domain) {
		this.problem = problem;
		this.domain = domain;
	}

	
	public double[] getValue(FFRiskyNode node) {
		double[] values = new double[2];


		// If goalRiskSet returns null, there is no solution in this path so return infinity
			values[0] = 0;
			values[1] = Double.MAX_VALUE;

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
		return null;
	}


	@Override
	public List<ActionInstance> getRelevantActions() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Set<ActionInstance> getPreferredOperators() {
		// TODO Auto-generated method stub
		return null;
	}
}
