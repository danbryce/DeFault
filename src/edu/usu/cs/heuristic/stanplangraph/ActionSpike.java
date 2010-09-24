package edu.usu.cs.heuristic.stanplangraph;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;

public interface ActionSpike {

	public abstract Integer getActRank(ActionHeader bestAct);

	public abstract void addAction(ActionInstance maction, boolean noop,
			List<ActionInstance> remainingActions);

	public abstract void addAction(ActionHeader actionHeader);

	public abstract void addNoopAction(FactHeader factHeader);

	public abstract int getCurrentRank();

	public abstract void incrementRank();

	/**
	 * Returns all actions with a rank up to the specified rank.
	 * 
	 * @param rank
	 * @return
	 */
	public abstract List<ActionHeader> getActionsByRank(int rank);

	public abstract List<ActionHeader> getNewActionsByRank(int rank);

	public abstract FactSpike getFactSpike();

	public abstract void setFactSpike(FactSpike factSpike);

	public abstract String toString();

	public abstract ActionLevelInfo getActionLevelInfo(int i, int index);

	public abstract ActionLevelInfo getExistingActionLevelInfo(int i, int index);

}