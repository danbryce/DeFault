package edu.usu.cs.heuristic;

import java.util.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.search.StateNode;

public class GoalCountHeuristic implements IHeuristic {
	
	private final GoalDesc goal;
	private final Set<LiteralInstance> resultSet;
	
	public GoalCountHeuristic(GoalDesc goal) {
		this.goal = goal;
		resultSet = new HashSet<LiteralInstance>();
		goal.getLiteralsUsed(resultSet);
	}

	
	public double getValue(StateNode node) {
		ConsistentLiteralSet state = node.getState();
		// Figure out how many of the goals are actually achieved
		int achievedPredicateCount = resultSet.size();

		for(LiteralInstance resultInstance : resultSet) {
			for (Literal stateLiteral : state.getLiterals()) {
				LiteralInstance stateInstance = stateLiteral.getInstance();
				if(resultInstance.equals(stateInstance)) {
					achievedPredicateCount--;
					break;
				}
			}
		}
		
		return achievedPredicateCount;
	}

}
