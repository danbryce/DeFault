package edu.usu.cs.planner;

public class SolverOptions {

	private boolean useHelpfulActions = false;
	private boolean useMultipleSupportersInPlanningGraph = false;
	private boolean useDeferredEvaluation = false;
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
}
