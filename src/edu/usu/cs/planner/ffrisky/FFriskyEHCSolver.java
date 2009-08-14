package edu.usu.cs.planner.ffrisky;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.incomplete.FriskyEHCSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFriskyEHCSolver extends DefaultSolver {
	//private IncompleteProblem incompleteProblem;

	public FFriskyEHCSolver(Domain domain, Problem problem, SearchStatistics searchStatistics) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics);
		//this.incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		search = new FriskyEHCSearch(domain, problem, actionInstances, new FFRiskySolutionEvaluator(domain, problem, actionInstances, problem,searchStatistics), searchStatistics);
		search.initialize();

	}
}
