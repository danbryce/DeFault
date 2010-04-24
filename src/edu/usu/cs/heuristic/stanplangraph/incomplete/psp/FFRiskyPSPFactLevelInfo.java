package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.planner.SolverOptions;

public class FFRiskyPSPFactLevelInfo extends FactLevelInfo {

	double cost = 0;

	public FFRiskyPSPFactLevelInfo(FactHeader fact, SolverOptions solverOptions) {
		super(fact, solverOptions);
	}

	
	protected double getCost() {
		return cost;
	}

	protected void setCost(double cost) {
		this.cost = cost;
	}


}
