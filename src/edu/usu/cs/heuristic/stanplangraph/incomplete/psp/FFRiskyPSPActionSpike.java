package edu.usu.cs.heuristic.stanplangraph.incomplete.psp;

import java.util.HashMap;
import java.util.Map;

import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.ActionSpike;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactSpike;
import edu.usu.cs.heuristic.stanplangraph.StanPlanningGraph;

public class FFRiskyPSPActionSpike extends ActionSpike{


	public FFRiskyPSPActionSpike(FactSpike factSpike,
			Map<Integer, ActionHeader> globalActionHeaders,
			Map<Integer, FactHeader> globalFactHeaders,
			StanPlanningGraph solver) {
		super(factSpike, globalActionHeaders, globalFactHeaders, solver);
		// TODO Auto-generated constructor stub
	}

	public ActionLevelInfo getActionLevelInfo(int i, int index) {

		Map<Integer, ActionLevelInfo> levelInfo = actionLevelInfos.get(i);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, ActionLevelInfo>();
			actionLevelInfos.put(i, levelInfo);
		}
		ActionLevelInfo ali = levelInfo.get(index);
		if(ali == null){
			ali = new FFRiskyPSPActionLevelInfo(globalActionHeaders.get(index));
			//System.out.println("made new ali for: " + ali.getActionHeader().getName() + " at level: " + i );
			levelInfo.put(index, ali);
		}		

		return ali;

	}

	




}
