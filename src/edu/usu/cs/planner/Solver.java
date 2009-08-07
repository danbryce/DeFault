package edu.usu.cs.planner;

import java.util.List;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.Search;

public interface Solver {
	public Search getSearch();
	public List<IncompleteActionInstance> run();
}
