package edu.usu.cs.planner.pspvanilla;

import java.util.List;
import java.util.logging.Logger;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.psp.PSPSearch;

public class PSPSolver extends DefaultSolver {
	private static final Logger logger = Logger.getLogger(PSPSolver.class.getName());

	
	
	public PSPSolver(Domain domain, Problem problem, SearchStatistics searchStatistics) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics);
		
		this.search = new PSPSearch(domain, problem, actionInstances, searchStatistics);
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
