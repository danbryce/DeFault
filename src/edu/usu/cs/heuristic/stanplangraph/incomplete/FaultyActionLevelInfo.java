package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.AbstractActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.DefaultFaultSet;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.PIFaultSet;

public class FaultyActionLevelInfo extends AbstractActionLevelInfo implements ActionLevelInfo {

	FaultSet faults;
	//FaultSet possibleFaults;

	

	public FaultyActionLevelInfo(ActionHeader actionHeader, Solver solver2) {
		super(actionHeader, solver2); 
		
		faults = DefaultFaultSet.makeNew(solver.getSolverOptions());
	}



	protected FaultSet getFaults() {
		return faults;
	}



	protected void setFaults(FaultSet faults) {
		this.faults = faults;
	}



//	protected FaultSet getPossibleFaults() {
//		return possibleFaults;
//	}
//
//
//
//	protected void setPossibleFaults(FaultSet possibleFaults) {
//		this.possibleFaults = possibleFaults;
//	}



	
}
