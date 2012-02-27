package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.AbstractFactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.DefaultFaultSet;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.PIFaultSet;

public class FaultyFactLevelInfo  extends AbstractFactLevelInfo {

	FaultSet faults;

	public FaultyFactLevelInfo(FactHeader fact, Solver solver) {
		super(fact, solver);
		faults = DefaultFaultSet.makeNew(solver.getSolverOptions());
	}

	public FaultSet getFaults() {
		// TODO Auto-generated method stub
		return faults;
	}

	public void setFaults(FaultSet faults2) {
		faults = faults2;
	}
}
