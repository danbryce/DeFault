package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.planner.SolverOptions;

public class FFRiskyPSPActionLevelInfo extends ActionLevelInfo {
	
	public FFRiskyPSPActionLevelInfo(ActionHeader actionHeader, SolverOptions solverOptions) {
		super(actionHeader, solverOptions);
	}

	double cost = 0;

	protected double getCost() {
		return cost;
	}

	protected void setCost(double cost) {
		this.cost = cost;
	}
	
	
}
