package edu.usu.cs.planner;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import jdd.bdd.BDD;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.stanplangraph.incomplete.FaultyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.FaultStateNode;
import edu.usu.cs.search.IncompletePINode;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.incomplete.PIFaultSet;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class PICoveringSolver extends DefaultSolver implements Solver {
	FaultSet uncoveredFaults;
	private static Logger logger = Logger.getLogger(PICoveringSolver.class.getName());

	
	RiskCoveringSolutionEvaluator rcse;
	
	public PICoveringSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
			throws IllDefinedProblemException {
		super(domain, problem, searchStatistics, solverOptions);
		metricDimension = 2;
		heuristic = new FaultyHeuristic(problem, domain, this);
		rcse = new RiskCoveringSolutionEvaluator(domain, problem, searchStatistics, solverOptions);
		uncoveredFaults = null;
		search = new PreferredOperatorDeferredEvaluationSearch(
				domain, 
				problem, 
				actionInstances, 
				 rcse,
				searchStatistics, 
				this
				);
		FaultStateNode startNode =  (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ?
				new IncompleteBDDNode(problem.getInitialState(), null, null, this) :
		 new IncompletePINode(problem.getInitialState(), null, null, this));
		search.initialize(startNode);
		FaultCounter.initialize(domain, problem);
	}
	@Override
	public List<List<ActionInstance>> run() {
		List<List<ActionInstance>> plans = new ArrayList<List<ActionInstance>>();
		while( uncoveredFaults == null || !uncoveredFaults.empty()){
			List<ActionInstance> plan = search.getPath();	
			if(plan == null)
				break;
			FaultSet failures = (solverOptions.getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ?
					FaultCounter.getBDDFailureExplanationSentence(problem, plan, this) :
					FaultCounter.getPIFailureExplanationSentence(problem, plan, this));
			if(uncoveredFaults == null)
				uncoveredFaults = failures;
			else
				uncoveredFaults.intersect(failures); //faults remaining after finding plan
			rcse.setFaultsToCover(uncoveredFaults);
			heuristic.setPossibleDomains(uncoveredFaults);
			plans.add(plan);
		}
		
		//Evaluate the coverage of the plans
		BigInteger coverage = getCoverage(plans);
		
//		logger.debug("\nCovered Domains: \t" + coverage);
//		logger.debug("Total Domains: \t\t" + FaultCounter.getModelCount(1));
		logger.debug("Features: \t\t" + FaultCounter.getNumRisks());
		logger.debug("%Domains: \t\t" + coverage.doubleValue()/FaultCounter.getModelCount(1).doubleValue());
		logger.debug("#Plans: \t\t" + plans.size());
		return plans;
	}
	private BigInteger getCoverage(List<List<ActionInstance>> plans) {
		
		int domainsNotCovered = 1;
		BigInteger totalDomains = FaultCounter.getModelCount(domainsNotCovered);
		BDD bdd = FaultCounter.getBDD();
		for(List<ActionInstance> plan : plans){
			int failures = FaultCounter.getFailureExplanationSentence_BDDRef(problem, plan, null, this);
			int tmp = bdd.ref(bdd.and(domainsNotCovered, failures));
			bdd.deref(domainsNotCovered);
			bdd.deref(failures);
			domainsNotCovered = tmp;
		}
		return totalDomains.subtract( bdd.getBigSetCount(domainsNotCovered));
	}
}
