package edu.usu.cs.heuristic;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.StateNode;

public interface Heuristic {
	public PlanMetric[] getValue(StateNode abstractStateNode);

	public Set<ActionInstance> getHelpfulActions();


	public Set<ActionInstance> getPreferredOperators();

	public Set[] getRelevant();

	public void removeIrrelevant(Set[] relevant);
	public FaultSet getExplanation(StateNode node);

	public void setPossibleDomains(FaultSet uncoveredFaults);

	
}
