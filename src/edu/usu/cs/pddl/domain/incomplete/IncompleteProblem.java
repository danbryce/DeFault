package edu.usu.cs.pddl.domain.incomplete;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.DefaultProblem;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public class IncompleteProblem {
	private List<IncompleteActionInstance> actions;
	private FFRiskyNode initialNode;
	private IncompleteActionInstance goal;
	
	public List<IncompleteActionInstance> getActions() {
		return actions;
	}

	public void setActions(List<IncompleteActionInstance> actions) {
		this.actions = actions;
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
