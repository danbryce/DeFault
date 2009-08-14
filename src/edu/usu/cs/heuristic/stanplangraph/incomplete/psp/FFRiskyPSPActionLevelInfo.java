package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.pddl.domain.incomplete.Risk;

public class FFRiskyPSPActionLevelInfo extends ActionLevelInfo {
	
	public FFRiskyPSPActionLevelInfo(ActionHeader actionHeader) {
		super(actionHeader);
	}

	double cost = 0;

	protected double getCost() {
		return cost;
	}

	protected void setCost(double cost) {
		this.cost = cost;
	}
	
	
}
