package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactSpike;
import edu.usu.cs.heuristic.stanplangraph.StanPlanningGraph;
import edu.usu.cs.pddl.domain.ActionInstance;

public class FFRiskyPSPFactSpike extends FactSpike {

	
	public FFRiskyPSPFactSpike(Map<Integer, FactHeader> globalFactHeaders,
			StanPlanningGraph solver,
			Map<ActionInstance, Integer> tempPreconditionActionCountMap, 
			 Map<Integer, List<ActionInstance>> preconditionActionMap) {
		super(globalFactHeaders, solver, tempPreconditionActionCountMap, preconditionActionMap);
		
	}

	public FactLevelInfo getFactLevelInfo(int i, Integer index) {
		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(i);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, FactLevelInfo>();
			factLevelInfos.put(i, levelInfo);
		}
		FactLevelInfo fli = levelInfo.get(index);
		if(fli == null){
			fli = new FFRiskyPSPFactLevelInfo(globalFactHeaders.get(index), solverOptions);
//			System.out.println("made new fli for: " + fli.getFact().getName() + " at level: " + i );

			levelInfo.put(index, fli);
		}
		
		return factLevelInfos.get(i).get(index);
	}
	
}
