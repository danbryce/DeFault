package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;

public class ActionLevelInfo {

	ActionHeader actionHeader;
	GeneralizedRiskSet criticalRisks;
	GeneralizedRiskSet possibleRisks;
	int bddCriticalRisks;
	int bddPossibleRisks;

	Set<FactHeader> supportingFacts;
	protected SolverOptions solverOptions;
	boolean changed;
	

//	public void setSupportingFacts(Set<FactHeader> supportingFacts) {
//		this.supportingFacts = supportingFacts;
//	}

	public int getBddCriticalRisks() {
		return bddCriticalRisks;
	}

	public void setBddCriticalRisks(int bddCriticalRisks) {
		RiskCounter.getBDD().deref(this.bddCriticalRisks);
		this.bddCriticalRisks = bddCriticalRisks;
		//RiskCounter.getBDD().ref(this.bddCriticalRisks);
	}

	public int getBddPossibleRisks() {
		return bddPossibleRisks;
	}

	public void setBddPossibleRisks(int bddPossibleRisks) {
		RiskCounter.getBDD().deref(this.bddPossibleRisks);
		this.bddPossibleRisks = bddPossibleRisks;
		//RiskCounter.getBDD().ref(this.bddPossibleRisks);
	}
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
