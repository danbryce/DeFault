package edu.usu.cs.planner.pspvanilla;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.psp.PSPSearch;

public class PSPSolver extends DefaultSolver {
	
	public PSPSolver(Domain domain, Problem problem, SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics, solverOptions);
		
		this.search = new PSPSearch(domain, problem, actionInstances, searchStatistics, solverOptions);
		this.search.initialize();
	}
	
	public List<ActionInstance> solve() {
		plan = null;
		
		plan = search.getPath();
		
		return plan;
	}
	
	public int getNumLevels()
	{
		if(plan == null) {
			return 0;
		}
		return plan.size();
	}
	
	public int getNodesExpandedCount() {
		if (plan == null) {
			return 0;
		}
		return search.getNodesExpandedCount();
	}

 

 

	public long getTotalTimeTaken() {
		return search.getTotalTimeTaken();
	}
	
	public long getHeuristicTimeTaken() {
		return search.getHeuristicTimeTaken();
	}
}
