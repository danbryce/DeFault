/**
 * 
 */
package edu.usu.cs.planner.pspffrisky;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.psp.FFRiskyPSPSolutionEvaluator;
import edu.usu.cs.search.incomplete.psp.FriskyPSPSearch;
import edu.usu.cs.search.incomplete.psp.ehc.FriskyPSPEHCSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

/**
 * @author dan
 *
 */
public class FFRiskyPSPEHCSolver extends DefaultSolver implements Solver {
	//protected IncompleteProblem incompleteProblem = null; 

	public FFRiskyPSPEHCSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics) throws IllDefinedProblemException {
		super(domain, problem, searchStatistics);
		//this.incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		search = new FriskyPSPEHCSearch(domain, problem, actionInstances, new FFRiskyPSPSolutionEvaluator(domain, problem, actionInstances,problem,searchStatistics, maxHeapUsageSize), searchStatistics);
		search.initialize();

	}

	public List<ActionInstance> solve() {
		// TODO Auto-generated method stub
		return search.getPath();
	}

}
