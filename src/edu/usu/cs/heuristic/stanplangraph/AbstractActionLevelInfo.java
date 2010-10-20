package edu.usu.cs.heuristic.stanplangraph;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.PIRiskSet;

public class AbstractActionLevelInfo implements ActionLevelInfo {

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}
	ActionHeader actionHeader;
//	PIRiskSet criticalRisks;
//	PIRiskSet possibleRisks;
//	int bddCriticalRisks;
//	int bddPossibleRisks;
//	FaultSet faults;
//	FaultSet possibleFaults;

	Set<FactHeader> supportingFacts;
	protected Solver solver;
	boolean changed;
	int cost;

//	public void setSupportingFacts(Set<FactHeader> supportingFacts) {
//		this.supportingFacts = supportingFacts;
//	}

//	public int getBddCriticalRisks() {
//		return bddCriticalRisks;
//	}
//
//	public void setBddCriticalRisks(int bddCriticalRisks) {
//		RiskCounter.getBDD().deref(this.bddCriticalRisks);
//		this.bddCriticalRisks = bddCriticalRisks;
//		//RiskCounter.getBDD().ref(this.bddCriticalRisks);
//	}
//
//	public int getBddPossibleRisks() {
//		return bddPossibleRisks;
//	}
//
//	public void setBddPossibleRisks(int bddPossibleRisks) {
//		RiskCounter.getBDD().deref(this.bddPossibleRisks);
//		this.bddPossibleRisks = bddPossibleRisks;
//		//RiskCounter.getBDD().ref(this.bddPossibleRisks);
//	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo#isChanged()
	 */
	public boolean isChanged() {
		return changed;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo#setChanged(boolean)
	 */
	public void setChanged(boolean changed) {
		this.changed = changed;
	}

	public AbstractActionLevelInfo(ActionHeader actionHeader, Solver solver2) {		
		this.actionHeader = actionHeader;
//		this.criticalRisks = new PIRiskSet(solver2.getSolverOptions().getRiskArity());
//		this.possibleRisks = new PIRiskSet(solver2.getSolverOptions().getRiskArity());
		this.supportingFacts = new HashSet<FactHeader>();
		this.solver = solver2;
		this.changed = false;
		cost = 0;
	}

//	public PIRiskSet getCriticalRisks() {
//		return criticalRisks;
//	}
//
//	public void setCriticalRisks(PIRiskSet criticalRisks) {
//		this.criticalRisks = criticalRisks;
//	}
//
//	public PIRiskSet getPossibleRisks() {
//		return possibleRisks;
//	}
//
//	public void setPossibleRisks(PIRiskSet possibleRisks) {
//		this.possibleRisks = possibleRisks;
//	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo#getActionHeader()
	 */
	public ActionHeader getActionHeader() {
		return actionHeader;
	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionLevelInfo#getSupportingFacts()
	 */
	public Set<FactHeader> getSupportingFacts(){
		return supportingFacts;
	}

//	public FaultSet getFaults() {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
}
