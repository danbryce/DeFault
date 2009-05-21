package edu.usu.cs.heuristic;

import java.util.*;
import edu.usu.cs.pddl.domain.*;

public class GoalCountHeuristic implements IHeuristic {
	
	private final GoalDesc goal;
	private final Set<LiteralInstance> resultSet;
	
	public GoalCountHeuristic(GoalDesc goal) {
		this.goal = goal;
		resultSet = new HashSet<LiteralInstance>();
		goal.getLiteralsUsed(resultSet);
	}

	@Override
	public double getValue(ConsistentLiteralSet state) {
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
