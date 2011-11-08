package edu.usu.cs.planner;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FaultyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.PIFaultSet;
import edu.usu.cs.search.incomplete.RiskSolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class CoveringSolver extends DefaultSolver implements Solver {
//	FaultSet uncoveredDomains = 1;
	private static Logger logger = Logger.getLogger(CoveringSolver.class.getName());


	RiskCoveringSolutionEvaluator rcse;

	public CoveringSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
	throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
		metricDimension = 2;
		heuristic = new FaultyHeuristic(problem, domain, this);
		rcse = new RiskCoveringSolutionEvaluator(domain, problem, searchStatistics, solverOptions); 
		search = new PreferredOperatorDeferredEvaluationSearch(
				domain, 
				problem, 
				actionInstances, 
				rcse,
				searchStatistics, 
				this
		);
		//		IncompletePINode startNode = new IncompletePINode(problem.getInitialState(), null, null, this);
		//		startNode.
		IncompleteBDDNode startNode = new IncompleteBDDNode(problem.getInitialState(), null, null, this);
		search.initialize(startNode);

	}
	@Override
	public List<List<ActionInstance>> run() {
		List<List<ActionInstance>> plans = new ArrayList<List<ActionInstance>>();
//		BigInteger totalDomains = FaultCounter.getModelCount(uncoveredDomains);
		FaultSet faultsToCover = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ? 
				new BDDFaultSet() :
					new PIFaultSet(metricDimension));	
//		while(uncoveredDomains != 0){
//			logger.debug("Left to Cover: \t\t" + FaultCounter.getModelCount(uncoveredDomains)
//					//.doubleValue()/totalDomains.doubleValue()
//					+ "\n");
//			List<ActionInstance> plan = search.getPath();
//			int failures = FaultCounter.getFailureExplanationSentence_BDDRef(problem, plan, null, this);
//			//bdd.printSet(failures);
//			int tmp = bdd.ref(bdd.and(uncoveredDomains, failures));
//			bdd.deref(failures);
//			failures = tmp;
//
//			plans.add(plan);
//			logger.debug("All Succeed In: \t" + (totalDomains.subtract(FaultCounter.getModelCount(failures)))
//					///totalDomains.doubleValue()
//					+ "\n");
//
//			bdd.deref(uncoveredDomains);
//			uncoveredDomains = failures;
//
//			rcse.setFaultsToCover(faultsToCover);//(uncoveredDomains);
//			heuristic.setPossibleDomains(uncoveredDomains);
//		}
		return plans;
	}
}
