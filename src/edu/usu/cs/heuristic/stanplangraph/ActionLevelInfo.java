package edu.usu.cs.heuristic.stanplangraph;

import java.util.Set;

public interface ActionLevelInfo {

	public abstract boolean isChanged();

	public abstract void setChanged(boolean changed);

	public abstract ActionHeader getActionHeader();

	public abstract Set<FactHeader> getSupportingFacts();

	public abstract int getCost();

	public abstract void setCost(int cost);

}