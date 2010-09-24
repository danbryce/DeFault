package edu.usu.cs.heuristic.stanplangraph;

import java.util.Collection;
import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public interface FactSpike {

	public abstract void addFact(Proposition proposition,
			List<ActionInstance> remainingActions);

	public abstract void addFact(FactHeader factHeader,
			List<ActionInstance> remainingActions);

	/**
	 * Returns the FactHeader at the specified index or null .
	 * 
	 * @param index
	 * @return
	 */
	public abstract FactHeader get(int index);

	public abstract int getCurrentRank();

	public abstract void incrementRank();

	public abstract void clearActivatedActions();

	/**
	 * Returns all facts with a rank up to the specified rank.
	 * 
	 * @return
	 */
	public abstract Collection<FactHeader> getFactsByRank(int rank);

	/**
	 * Returns all facts a with rank matching the specified rank.
	 * 
	 * @param rank
	 * @return
	 */
	public abstract Collection<FactHeader> getNewFactsByRank(int rank);

	public abstract boolean isActionApplicable(ActionInstance action);

	public abstract boolean isActionApplicable(ActionHeader action);

	/**
	 * Returns the number of fact headers in the fact spike.
	 * @return
	 */
	public abstract int size();

	public abstract String toString();

	public abstract FactLevelInfo getExistingFactLevelInfo(int i, int index);

	public abstract FactLevelInfo getFactLevelInfo(int i, Integer index);

	public abstract Collection<? extends ActionInstance> getActivatedActions();

}