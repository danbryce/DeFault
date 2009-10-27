package edu.usu.cs.heuristic.stanplangraph.classic;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public class StanHeuristic implements Heuristic {
	Problem problem;
	StanClassicalRelaxedPlanningGraph solver;
	
	public StanHeuristic(Problem problem, Domain domain, SolverOptions solverOptions) {
		this.problem = problem;
		solver = new StanClassicalRelaxedPlanningGraph(this.problem, domain, solverOptions);

	}
	
//	public StanHeuristic(IncompleteProblem problem) {
//		this.problem = problem;
//		solver = new StanClassicalRelaxedPlanningGraph((IncompleteProblem)this.problem);
//
//	}
	
	
	public double[] getValue(StateNode node) {
		double[] values = new double[2];

		solver.reachFixedPoint(node);
		double relaxedPlanLength = solver.getRelaxedPlanLength();
		values[0]= 0;
		values[1]= 5*relaxedPlanLength;
		
		return values;
	}

	public double[] getValue(FFRiskyNode node) {
		double[] values = new double[1];

		solver.reachFixedPoint(node);
		double relaxedPlanLength = solver.getRelaxedPlanLength();
		values[0]= 5*relaxedPlanLength;
		
		return values;
	}

	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return solver.getHelpfulActions();
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
	public Set<ActionInstance> getPreferredOperators() {
		// TODO Auto-generated method stub
		return solver.getPreferredActions();
	}
}
