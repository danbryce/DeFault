package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;

public class ActionLevelInfo {

	ActionHeader actionHeader;
	GeneralizedRiskSet criticalRisks;
	GeneralizedRiskSet possibleRisks;
	Set<FactHeader> supportingFacts;
	protected SolverOptions solverOptions;
	boolean changed;
	

//	public void setSupportingFacts(Set<FactHeader> supportingFacts) {
//		this.supportingFacts = supportingFacts;
//	}

	public boolean isChanged() {
		return changed;
	}

	public void setChanged(boolean changed) {
		this.changed = changed;
	}

	public ActionLevelInfo(ActionHeader actionHeader, SolverOptions solverOptions) {
		super();
		this.actionHeader = actionHeader;
		this.criticalRisks = new GeneralizedRiskSet(solverOptions.getRiskArity());
		this.possibleRisks = new GeneralizedRiskSet(solverOptions.getRiskArity());
		this.supportingFacts = new HashSet<FactHeader>();
		this.solverOptions = solverOptions;
		this.changed = false;
	}

	public GeneralizedRiskSet getCriticalRisks() {
		return criticalRisks;
	}

	public void setCriticalRisks(GeneralizedRiskSet criticalRisks) {
		this.criticalRisks = criticalRisks;
	}

	public GeneralizedRiskSet getPossibleRisks() {
		return possibleRisks;
	}

	public void setPossibleRisks(GeneralizedRiskSet possibleRisks) {
		this.possibleRisks = possibleRisks;
	}

	public ActionHeader getActionHeader() {
		return actionHeader;
	}
	public Set<FactHeader> getSupportingFacts(){
		return supportingFacts;
	}
	
}
