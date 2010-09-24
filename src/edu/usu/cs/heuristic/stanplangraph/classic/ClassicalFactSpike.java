package edu.usu.cs.heuristic.stanplangraph.classic;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.usu.cs.heuristic.stanplangraph.AbstractFactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.AbstractFactSpike;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.AbstractPlanningGraph;
import edu.usu.cs.heuristic.stanplangraph.classic.ClassicalFactLevelInfo;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;

public class ClassicalFactSpike  extends AbstractFactSpike{

	public ClassicalFactSpike(Map<Integer, FactHeader> globalFactHeaders, 
			AbstractPlanningGraph heuristicSolver, 
			Map<ActionInstance, Integer> tempPreconditionActionCountMap, 
			Map<Integer, List<ActionInstance>> preconditionActionMap,
			Solver solver) {
		super(globalFactHeaders, heuristicSolver, tempPreconditionActionCountMap, preconditionActionMap, solver);
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getFactLevelInfo(int, java.lang.Integer)
	 */
	public FactLevelInfo getFactLevelInfo(int i, Integer index) {
		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(i);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, FactLevelInfo>();
			factLevelInfos.put(i, levelInfo);
		}
		FactLevelInfo fli = levelInfo.get(index);
		if(fli == null){
			fli = new AbstractFactLevelInfo(globalFactHeaders.get(index), solver);

			Map<Integer, FactLevelInfo> prevLevelInfo = factLevelInfos.get(i-1);
			FactLevelInfo fliPrev = null;
			if(prevLevelInfo != null){
				fliPrev = prevLevelInfo.get(index);
			}
			if(i == 0 || fliPrev == null){
				fli.setChanged(true);
			}
			//			System.out.println("made new fli for: " + fli.getFact().getName() + " at level: " + i );

			levelInfo.put(index, fli);
		}

		return factLevelInfos.get(i).get(index);
	}


}
