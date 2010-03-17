package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;

public class FFRiskyPSPFactLevelInfo extends FactLevelInfo {

	double cost = 0;

	public FFRiskyPSPFactLevelInfo(FactHeader fact) {
		super(fact);
	}

	
	protected double getCost() {
		return cost;
	}

	protected void setCost(double cost) {
		this.cost = cost;
	}


}
