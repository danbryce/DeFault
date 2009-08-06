package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;

public class ActionLevelInfo {

	ActionHeader actionHeader;
	Set<Risk> criticalRisks;
	Set<Risk> possibleRisks;
	Set<FactHeader> supportingFacts;

	

//	public void setSupportingFacts(Set<FactHeader> supportingFacts) {
//		this.supportingFacts = supportingFacts;
//	}

	public ActionLevelInfo(ActionHeader actionHeader) {
		super();
		this.actionHeader = actionHeader;
		this.criticalRisks = new HashSet<Risk>();
		this.possibleRisks = new HashSet<Risk>();
		this.supportingFacts = new HashSet<FactHeader>();
	}

	public Set<Risk> getCriticalRisks() {
		return criticalRisks;
	}

	public void setCriticalRisks(Set<Risk> criticalRisks) {
		this.criticalRisks = criticalRisks;
	}

	public Set<Risk> getPossibleRisks() {
		return possibleRisks;
	}

	public void setPossibleRisks(Set<Risk> possibleRisks) {
		this.possibleRisks = possibleRisks;
	}

	public ActionHeader getActionHeader() {
		return actionHeader;
	}
	public Set<FactHeader> getSupportingFacts(){
		return supportingFacts;
	}
	
}
