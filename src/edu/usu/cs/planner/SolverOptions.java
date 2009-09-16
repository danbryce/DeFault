package edu.usu.cs.planner;

public class SolverOptions {

	private boolean useHelpfulActions = false;
	private boolean useMultipleSupportersInPlanningGraph = false;
	public boolean isUseHelpfulActions() {
		return useHelpfulActions;
	}
	protected void setUseHelpfulActions(boolean useHelpfulActions) {
		this.useHelpfulActions = useHelpfulActions;
	}
	public boolean isUseMultipleSupportersInPlanningGraph() {
		return useMultipleSupportersInPlanningGraph;
	}
	public void setUseMultipleSupportersInPlanningGraph(
			boolean useMultipleSupportersInPlanningGraph) {
		this.useMultipleSupportersInPlanningGraph = useMultipleSupportersInPlanningGraph;
	}
	
	
	
}
