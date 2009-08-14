package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.pddl.domain.incomplete.Risk;

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
