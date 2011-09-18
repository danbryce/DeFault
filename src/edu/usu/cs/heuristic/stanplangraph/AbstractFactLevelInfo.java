package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.ffrisky.util.FaultCounter;
import edu.usu.cs.search.incomplete.PIRiskSet;

public class AbstractFactLevelInfo implements FactLevelInfo{
	Set<ActionHeader> trueSupporters;
	Set<ActionHeader> possibleSupporters;
	Set<ActionHeader> allSupporters;
	Set<ActionHeader> chosenSupporters;
	FactHeader fact;
	Solver solver;
	boolean changed;	
	int cost;
	
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#isChanged()
	 */
	public boolean isChanged() {
		return changed;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#setChanged(boolean)
	 */
	public void setChanged(boolean changed) {
		this.changed = changed;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#getTrueSupporters()
	 */
	public Set<ActionHeader> getTrueSupporters() {
		return trueSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#setTrueSupporters(java.util.Set)
	 */
	public void setTrueSupporters(Set<ActionHeader> trueSupporters) {
		this.trueSupporters = trueSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#getAllSupporters()
	 */
	public Set<ActionHeader> getAllSupporters() {
		return allSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#setAllSupporters(java.util.Set)
	 */
	public void setAllSupporters(Set<ActionHeader> allSupporters) {
		this.allSupporters = allSupporters;
	}
	
	public AbstractFactLevelInfo(FactHeader fact, Solver solver) {
		this.fact = fact;
		this.allSupporters = new HashSet<ActionHeader>();
		this.trueSupporters = new HashSet<ActionHeader>();
		this.possibleSupporters = new HashSet<ActionHeader>();
		this.chosenSupporters = new HashSet<ActionHeader>();
		this.solver = solver;
		this.changed = false;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#getPossibleSupporters()
	 */
	public Set<ActionHeader> getPossibleSupporters() {
		return possibleSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#setPossibleSupporters(java.util.Set)
	 */
	public void setPossibleSupporters(Set<ActionHeader> possibleSupporters) {
		this.possibleSupporters = possibleSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#getChosenSupporters()
	 */
	public Set<ActionHeader> getChosenSupporters() {
		return chosenSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#setChosenSupporters(java.util.Set)
	 */
	public void setChosenSupporters(Set<ActionHeader> chosenSupporters) {
		this.chosenSupporters = chosenSupporters;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactLevelInfo#getFact()
	 */
	public FactHeader getFact() {
		return fact;
	}


}
