package edu.usu.cs.planner;

import edu.usu.cs.search.incomplete.PIRiskSet;

public class SolverOptions {

	
	public static enum FAULT_TYPE  { PI_FAULTS, BDD_FAULTS };
	
	private boolean useHelpfulActions = false;
	private boolean useMultipleSupportersInPlanningGraph = false;
	private boolean useDeferredEvaluation = false;
	private boolean usePreferredOperators = false;
	private boolean riskHeuristicFirst = false;
	private boolean useJDDGValue = false;
	private FAULT_TYPE faultType = FAULT_TYPE.PI_FAULTS;
	
	
	public FAULT_TYPE getFaultType() {
		return faultType;
	}
	public void setFaultType(FAULT_TYPE faultType) {
		this.faultType = faultType;
	}
	public boolean isUseJDDGValue() {
		return useJDDGValue;
	}
	public void setUseJDDGValue(boolean useJDDGValue) {
		this.useJDDGValue = useJDDGValue;
	}
	public boolean isUseJDDHeuristic() {
		return useJDDHeuristic;
	}
	public void setUseJDDHeuristic(boolean useJDDHeuristic) {
		this.useJDDHeuristic = useJDDHeuristic;
	}
	private boolean useJDDHeuristic = false;
	private boolean ucs = false;
	private int riskArity = 2;
	private boolean conditional = false;
	public boolean isUseHelpfulActions() {
		return useHelpfulActions;
	}
	public void setUseHelpfulActions(boolean useHelpfulActions) {
		this.useHelpfulActions = useHelpfulActions;
	}
	public boolean isUseMultipleSupportersInPlanningGraph() {
		return useMultipleSupportersInPlanningGraph;
	}
	public void setUseMultipleSupportersInPlanningGraph(
			boolean useMultipleSupportersInPlanningGraph) {
		this.useMultipleSupportersInPlanningGraph = useMultipleSupportersInPlanningGraph;
	}
	public boolean isUseDeferredEvaluation() {
		return useDeferredEvaluation;
	}
	public void setUseDeferredEvaluation(boolean useDeferredEvaluation) {
		this.useDeferredEvaluation = useDeferredEvaluation;
	}
	public boolean isUsePreferredOperators() {
		return usePreferredOperators;
	}
	public void setUsePreferredOperators(boolean usePreferredOperators) {
		this.usePreferredOperators = usePreferredOperators;
	}
	public boolean isRiskHeuristicFirst() {
		return riskHeuristicFirst;
	}
	public void setRiskHeuristicFirst(boolean riskHeuristicFirst) {
		this.riskHeuristicFirst = riskHeuristicFirst;
	}
	public void setRiskArity(int riskArity) {
		this.riskArity = riskArity;
	}
	public boolean isUCS() {
		return ucs;
	}
	public void setUCS(boolean ucs) {
		this.ucs = ucs;
	}
	public int getRiskArity() {
		return riskArity;
	}
	public void setConditional(boolean b) {
		conditional  = b;
		
	}
	public boolean getConditional(){
		return conditional;
	}
}
