package edu.usu.cs.heuristic.stanplangraph.classic;

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
import edu.usu.cs.search.incomplete.PIFaultSet;

public class ClassicalFactLevelInfo extends AbstractFactLevelInfo{

	public ClassicalFactLevelInfo(FactHeader fact, Solver solver) {
		super(fact, solver);
	
	}

}
