package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;

public class FactLevelInfo {
	GeneralizedRiskSet possibleRisks;
	GeneralizedRiskSet criticalRisks;
	Set<ActionHeader> trueSupporters;
	Set<ActionHeader> possibleSupporters;
	Set<ActionHeader> allSupporters;
	Set<ActionHeader> chosenSupporters;
	FactHeader fact;
	SolverOptions solverOptions;
	boolean changed;	
	
	public boolean isChanged() {
		return changed;
	}
	public void setChanged(boolean changed) {
		this.changed = changed;
	}
	public Set<ActionHeader> getTrueSupporters() {
		return trueSupporters;
	}
	public void setTrueSupporters(Set<ActionHeader> trueSupporters) {
		this.trueSupporters = trueSupporters;
	}
	public Set<ActionHeader> getAllSupporters() {
		return allSupporters;
	}
	public void setAllSupporters(Set<ActionHeader> allSupporters) {
		this.allSupporters = allSupporters;
	}
	
	public FactLevelInfo(FactHeader fact, SolverOptions solverOptions) {
		this.fact = fact;
		this.allSupporters = new HashSet<ActionHeader>();
		this.trueSupporters = new HashSet<ActionHeader>();
		this.possibleSupporters = new HashSet<ActionHeader>();
		this.chosenSupporters = new HashSet<ActionHeader>();
		this.solverOptions = solverOptions;
		this.possibleRisks = new GeneralizedRiskSet(solverOptions.getRiskArity());
		this.criticalRisks = new GeneralizedRiskSet(solverOptions.getRiskArity());
		this.changed = false;
	}
	public GeneralizedRiskSet getPossibleRisks() {
		return possibleRisks;
	}
	public void setPossibleRisks(GeneralizedRiskSet possibleRisks) {
		this.possibleRisks = possibleRisks;
	}
	public GeneralizedRiskSet getCriticalRisks() {
		return criticalRisks;
	}
	public void setCriticalRisks(GeneralizedRiskSet criticalRisks) {
		this.criticalRisks = criticalRisks;
	}
	public Set<ActionHeader> getPossibleSupporters() {
		return possibleSupporters;
	}
	public void setPossibleSupporters(Set<ActionHeader> possibleSupporters) {
		this.possibleSupporters = possibleSupporters;
	}
	public Set<ActionHeader> getChosenSupporters() {
		return chosenSupporters;
	}
	public void setChosenSupporters(Set<ActionHeader> chosenSupporters) {
		this.chosenSupporters = chosenSupporters;
	}
	public FactHeader getFact() {
		return fact;
	}


}
