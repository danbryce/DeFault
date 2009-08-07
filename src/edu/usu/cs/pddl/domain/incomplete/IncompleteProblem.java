package edu.usu.cs.pddl.domain.incomplete;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public class IncompleteProblem {
	private List<ActionInstance> actions;
	private FFRiskyNode initialNode;
	private IncompleteActionInstance goal;
	
	public List<ActionInstance> getActions() {
		return actions;
	}

	public void setActions(List<ActionInstance> actionInstances) {
		this.actions = actionInstances;
	}

	public FFRiskyNode getInitialNode() {
		return initialNode;
	}

	public void setInitialNode(FFRiskyNode initialNode) {
		this.initialNode = initialNode;
	}

	public IncompleteActionInstance getGoalAction() {
		return this.goal;
	}

	public void setGoal(IncompleteActionInstance goal) {
		this.goal = goal;
	}
}
