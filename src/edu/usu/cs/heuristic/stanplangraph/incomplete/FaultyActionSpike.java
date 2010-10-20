package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.util.ArrayList;
import edu.usu.cs.planner.SolverOptions;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;


import edu.usu.cs.heuristic.stanplangraph.AbstractActionSpike;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo;
import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.FactSpike;
import edu.usu.cs.heuristic.stanplangraph.AbstractPlanningGraph;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;

public class FaultyActionSpike  extends AbstractActionSpike {

	private static Logger logger = Logger.getLogger(FaultyActionSpike.class.getName());

	//	public ActionSpike(FactSpike factSpike) {
	//		this.setFactSpike(factSpike);
	//		this.globalActionHeaders = new HashMap<Action, ActionHeader>();
	//		this.actionHeaders = new ArrayList<ActionHeader>();
	//	}

	public FaultyActionSpike(FactSpike factSpike, 
			Map<Integer, ActionHeader> globalActionHeaders,
			Map<Integer, FactHeader> globalFactHeaders,
			AbstractPlanningGraph heuristicSolver,
			Solver solver) {
		super(factSpike,globalActionHeaders, globalFactHeaders, heuristicSolver, solver);
	}





	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getActionLevelInfo(int, int)
	 */
	public ActionLevelInfo getActionLevelInfo(int i, int index) {

		Map<Integer, ActionLevelInfo> levelInfo = actionLevelInfos.get(i);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, ActionLevelInfo>();
			actionLevelInfos.put(i, levelInfo);
		}
		ActionLevelInfo ali = levelInfo.get(index);
		if(ali == null){
				ali = new FaultyActionLevelInfo(globalActionHeaders.get(index), solver);
			//System.out.println("made new ali for: " + ali.getActionHeader().getName() + " at level: " + i );
			levelInfo.put(index, ali);
		}		

		return ali;

	}
	



}
