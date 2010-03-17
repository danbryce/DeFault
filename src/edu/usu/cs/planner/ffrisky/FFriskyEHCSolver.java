package edu.usu.cs.planner.ffrisky;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.incomplete.FriskyEHCSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFriskyEHCSolver extends DefaultSolver {
	//private IncompleteProblem incompleteProblem;

	public FFriskyEHCSolver(Domain domain, Problem problem, SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics, solverOptions);
		//this.incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		search = new FriskyEHCSearch(domain, problem, actionInstances, new FFRiskySolutionEvaluator(domain, problem, actionInstances, problem,searchStatistics), searchStatistics, solverOptions);
		search.initialize();

	}
}
