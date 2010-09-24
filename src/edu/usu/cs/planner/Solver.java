package edu.usu.cs.planner;

import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.Search;

public interface Solver {
	public Search getSearch();
	public List<ActionInstance> run();
	public void setMaxHeapUsage(long bytes);
	public int getMetricDimension();
	public SolverOptions getSolverOptions();
	public void setRelevantActions(Set<ActionInstance> mRelevantActions);
	public Set<ActionInstance> getRelevantActions();
	public Heuristic getHeuristic();
	public void setRelevantFacts(Set<Integer> list);
	public Set<Integer> getRelevantFacts();
	public Set<ActionInstance> getActionInstances();
}
