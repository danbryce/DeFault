package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;

public class FactLevelInfo {
	Set<Risk> possibleRisks;
	Set<Risk> criticalRisks;
	Set<ActionHeader> trueSupporters;
	Set<ActionHeader> possibleSupporters;
	Set<ActionHeader> allSupporters;
	Set<ActionHeader> chosenSupporters;
	FactHeader fact;

	
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
	
	public FactLevelInfo(FactHeader fact) {
		this.fact = fact;
		this.allSupporters = new HashSet<ActionHeader>();
		this.trueSupporters = new HashSet<ActionHeader>();
		this.possibleSupporters = new HashSet<ActionHeader>();
		this.chosenSupporters = new HashSet<ActionHeader>();
		this.possibleRisks = new HashSet<Risk>();
		this.criticalRisks = new HashSet<Risk>();
	}
	public Set<Risk> getPossibleRisks() {
		return possibleRisks;
	}
	public void setPossibleRisks(Set<Risk> possibleRisks) {
		this.possibleRisks = possibleRisks;
	}
	public Set<Risk> getCriticalRisks() {
		return criticalRisks;
	}
	public void setCriticalRisks(Set<Risk> criticalRisks) {
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
