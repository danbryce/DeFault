package edu.usu.cs.heuristic.stanplangraph;

import java.util.Set;

import edu.usu.cs.search.incomplete.PIFaultSet;

public interface FactLevelInfo {

	public abstract boolean isChanged();

	public abstract void setChanged(boolean changed);

	public abstract Set<ActionHeader> getTrueSupporters();

	public abstract void setTrueSupporters(Set<ActionHeader> trueSupporters);

	public abstract Set<ActionHeader> getAllSupporters();

	public abstract void setAllSupporters(Set<ActionHeader> allSupporters);

	public abstract Set<ActionHeader> getPossibleSupporters();

	public abstract void setPossibleSupporters(
			Set<ActionHeader> possibleSupporters);

	public abstract Set<ActionHeader> getChosenSupporters();

	public abstract void setChosenSupporters(Set<ActionHeader> chosenSupporters);

	public abstract FactHeader getFact();

	public abstract void setCost(int supporterCost);

	public abstract int getCost();

}