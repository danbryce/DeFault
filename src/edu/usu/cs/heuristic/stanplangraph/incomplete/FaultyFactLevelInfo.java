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
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.PIRiskSet;

public class FaultyFactLevelInfo  extends AbstractFactLevelInfo {

	FaultSet faults;

	public FaultyFactLevelInfo(FactHeader fact, Solver solver) {
		super(fact, solver);
		if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS){
			faults = new PIRiskSet(solver.getSolverOptions().getRiskArity());
		}
		else if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS){
			faults = new BDDRiskSet();


		}
	}

	public FaultSet getFaults() {
		// TODO Auto-generated method stub
		return faults;
	}

	public void setFaults(FaultSet faults2) {
		faults = faults2;
	}
}
