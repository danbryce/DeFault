package edu.usu.cs.planner.ffrisky.util;

import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class RiskCounterAction extends IncompleteActionInstance {

	public RiskCounterAction(String name, Set<Proposition> preconditions,
			Set<Proposition> addEffects, Set<Proposition> deleteEffects,
			Set<Proposition> possiblePreconditions,
			Set<Proposition> possiblePositiveEffects,
			Set<Proposition> possibleNegativeEffects, int index) {
		super(name, preconditions, addEffects, deleteEffects, possiblePreconditions,
				possiblePositiveEffects, possibleNegativeEffects, index);
	}

	public RiskCounterAction(IncompleteActionInstance action) {
		this(action.getName(), 
				action.getPreconditions(), 
				action.getAddEffects(), 
				action.getDeleteEffects(),
				action.getPossiblePreconditions(),
				action.getPossibleAddEffects(),
				action.getPossibleDeleteEffects(),
				action.getIndex());
	}
}
