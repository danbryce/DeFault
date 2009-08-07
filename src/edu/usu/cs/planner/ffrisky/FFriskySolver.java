package edu.usu.cs.planner.ffrisky;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFriskySolver extends UniformCostFFriskySolver {
	public FFriskySolver(Domain domain, Problem problem, SearchStatistics searchStatistics) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics);
	}
}
