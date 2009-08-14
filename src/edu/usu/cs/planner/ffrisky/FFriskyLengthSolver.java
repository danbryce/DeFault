package edu.usu.cs.planner.ffrisky;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.FFRiskyLengthSearch;
import edu.usu.cs.search.incomplete.FFRiskySolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFriskyLengthSolver extends DefaultSolver {
	//protected IncompleteProblem incompleteProblem = null; 

	public FFriskyLengthSolver(Domain domain, Problem problem, SearchStatistics searchStatistics) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics);
		//this.incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		search = new FFRiskyLengthSearch(domain, problem, actionInstances, new FFRiskySolutionEvaluator(domain, problem, actionInstances,problem,searchStatistics), searchStatistics);
		search.initialize();

	}
}
