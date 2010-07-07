package edu.usu.cs.search;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

import org.apache.log4j.Logger;

import edu.usu.cs.conformant.TranslationToCPP;
import edu.usu.cs.conformant.TranslationToCPP.TranslationType;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.FFriskyEHCSolver;
import edu.usu.cs.planner.ffrisky.FFriskyLengthSolver;
import edu.usu.cs.planner.ffrisky.FFriskySolver;
import edu.usu.cs.planner.ffrisky.GreedyBestFirstFFriskySolver;
import edu.usu.cs.planner.ffrisky.UniformCostFFriskySolver;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.planner.ffrisky.util.RiskCounterNode;
import edu.usu.cs.planner.ffvanilla.AStarSolver;
import edu.usu.cs.planner.pspffrisky.FFRiskyPSPSolver;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class SearchTest {

	private static Logger logger = Logger.getLogger(SearchTest.class);

	public static void main(String[] args) {
		if (!(args.length == 3 || args.length == 4 || args.length == 5 || args.length == 6)) {
			usage();
		}
		File domainFile = new File(args[0]);
		if (!domainFile.exists()) {
			System.err.println("Unable to find PDDL domain file " + args[0]);
			usage();
		}
		File problemFile = new File(args[1]);
		if (!problemFile.exists()) {
			System.err.println("Unable to find PDDL problem file " + args[1]);
			usage();
		}

		Domain domain = null;
		Problem problem = null;
		try {
			ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFile);
			domain = domBuilder.buildDomain();
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain,
					problemFile);
			problem = probBuilder.buildProblem();

		} catch (IOException e) {
			System.err.println("Error reading PDDL file(s): " + e);
			e.printStackTrace();
		} catch (PDDLSyntaxException e) {
			System.err.println("Syntax errors found in the PDDL file(s).");
		} catch (InvalidPDDLElementException e) {
			System.err.println("Invalid semantics in the PDDL file(s): " + e);
			e.printStackTrace();
		}

		Solver solver = null;
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		try {
			// Initialize search algorithm

			if (args.length == 3 || args[3].equalsIgnoreCase("frisky")
					|| args[3].equalsIgnoreCase("friskyLengthFirst")) {
				solver = new FFriskySolver(domain, problem, searchStatistics,
						solverOptions);
			} else if (args[3].equalsIgnoreCase("friskyRiskFirst")) {
				solverOptions.setRiskHeuristicFirst(true);
				solver = new FFriskySolver(domain, problem, searchStatistics,
						solverOptions);
			} else if (args.length == 3 || args[3].equalsIgnoreCase("friskyMS")
					|| args[3].equalsIgnoreCase("friskyMSLengthFirst")) {
				solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				solver = new FFriskySolver(domain, problem, searchStatistics,
						solverOptions);
			} else if (args[3].equalsIgnoreCase("friskyMSRiskFirst")) {
				solverOptions.setRiskHeuristicFirst(true);
				solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				solver = new FFriskySolver(domain, problem, searchStatistics,
						solverOptions);
			} else if (args.length == 3
					|| args[3].equalsIgnoreCase("friskylength")) {
				solver = new FFriskyLengthSolver(domain, problem,
						searchStatistics, solverOptions);

			} else if (args.length == 3
					|| args[3].equalsIgnoreCase("friskypsp")) {

				solver = new FFRiskyPSPSolver(domain, problem,
						searchStatistics, solverOptions);

			} else if (args.length == 3
					|| args[3].equalsIgnoreCase("friskyEHC")) {

				solver = new FFriskyEHCSolver(domain, problem,
						searchStatistics, solverOptions);
			} else if (args[3].equalsIgnoreCase("uniformcost")
					|| args[3].equalsIgnoreCase("uniform")) {
				solverOptions.setUCS(true);
				solver = new UniformCostFFriskySolver(domain, problem,
						searchStatistics, solverOptions);
			} 
			
//START HERE - for the learning agent using length solver ////////////////////////			
			else if (args[3].equalsIgnoreCase("length")) {
//				solver = new AStarSolver(domain, problem, searchStatistics,
//						solverOptions);
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);
				//solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				solver = new GreedyBestFirstLengthSolver(domain, problem,  //Goes to GreedyBestFirstLengthSolver
						searchStatistics, solverOptions);
			} else if (args[3].equalsIgnoreCase("pode")) {
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);
				solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				solverOptions.setRiskArity(Integer.valueOf(args[4]));
				solver = new GreedyBestFirstFFriskySolver(domain, problem,
						searchStatistics, solverOptions);
//STOP HERE - the length and the pod solver are the ones to focus on for now //////////////////////////
				
				
			} else if (args[3].equalsIgnoreCase("jdd")) {
//				solverOptions.setUseJDDGValue(true);
//				solverOptions.setUseJDDHeuristic(true);
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);
				solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				RiskCounter.initialize(domain, problem, null);
				solver = new GreedyBestFirstJDDFFriskySolver(domain, problem, searchStatistics,
						solverOptions);
			} else if (args[2].contains(".pddl") && args[3].contains(".pddl")) {
				// Convert domain and problem files to ppddl.
				if ("pond".equals(args[4])) {
					TranslationToCPP.ConvertToCPP(domain, problem, args[2],
							args[3], TranslationType.pond);
				} else if ("pff".equals(args[4])) {
					TranslationToCPP.ConvertToCPP(domain, problem, args[2],
							args[3], TranslationType.pff);
				}
				return;
			} else {
				usage();
			}
		} catch (IllDefinedProblemException e) {
			e.printStackTrace();
		}

		List<ActionInstance> plan = solver.run();
		// getPlan(search);

		if (plan == null) {
			logger.debug("\nNo plan found");
			return;
		}
		logger.debug("\nPlan found");
		for (ActionInstance action : plan) {
			logger.debug(action.getName());
		}

		// // Output the state sequence and actions in the plan
		// logger.debug("\n*********************************\n*** State Transition Sequence ***\n*********************************");
		// Node node = problem.getInitialNode();
		// for (Action action : plan) {
		// logger.debug(node);
		// logger.debug(action);
		// node = NodeUtilities.getSuccessorNode(node, action);
		// }
		// logger.debug(node);
		// logger.debug(problem.getGoal());
		// node = NodeUtilities.getSuccessorNode(node, problem.getGoal());
		// logger.debug(node);
		// logger.debug("*********************************\n*********************************");

		// // Output the risks
		// logger.debug("\nRisks: " +
		// finalNode.getCriticalRisks().size());
		// for (Risk risk : finalNode.getCriticalRisks()) {
		// logger.debug(risk);
		// }

//		logger.debug("\nFinal Stats:\n");
//		logger.debug("Plan length: " + plan.size());
//		logger.debug("Elapsed time: " + searchStatistics.getElapsedTime()
//				+ " milliseconds");
//		logger.debug("Nodes expanded: " + searchStatistics.getNodesExpanded());
//		if (searchStatistics.getSolutionNode() != null
//				&& searchStatistics.getSolutionNode() instanceof FFRiskyNode) {
//			logger.debug("Risk count: "
//					+ ((FFRiskyNode) searchStatistics.getSolutionNode())
//							.getCriticalRisks().size());
//		}
		logger.debug("\nFinal Stats:\n");
		logger.debug("Plan length: " + plan.size());
		logger.debug("Elapsed time: " + searchStatistics.getElapsedTime()
				+ " milliseconds");
		logger.debug("Nodes expanded: " + searchStatistics.getNodesExpanded());
		
		if (searchStatistics.getSolutionNode() != null
				//&& searchStatistics.getSolutionNode() instanceof FFRiskyNode
				) {
//			logger.debug("Risk count: "
//					+ ((FFRiskyNode) searchStatistics.getSolutionNode())
//							.getCriticalRisks().size());
//			logger.debug(((FFRiskyNode) searchStatistics.getSolutionNode())
//							.getCriticalRisks());
			
			RiskCounter.initialize(domain, problem, plan);
			BigInteger total =BigInteger.valueOf(1).shiftLeft(RiskCounter.getNumRisks());
			BigInteger solvable = RiskCounter.getBigSolvableDomainCount(domain, problem, plan); 
			BigDecimal probability = new BigDecimal(solvable);
			probability = probability.divide(new BigDecimal(total));
				
			logger.debug("Solvable Domains: " + solvable);
			logger.debug("Total Domains: " + total);
			logger.debug("Probability: " + probability);
			logger.debug("Incomplete Features: " + RiskCounter.getNumRisks());

		}
		else if(searchStatistics.getSolutionNode() != null
				&& searchStatistics.getSolutionNode() instanceof RiskCounterNode) {
			logger.debug("Risk count: "
					+ ((RiskCounterNode) searchStatistics.getSolutionNode())
							.getGValue()[0]);
			RiskCounter.getBDD().printSet(RiskCounter.getBDD().not(((RiskCounterNode) searchStatistics.getSolutionNode())
							.getCriticalRisks()));			
		}
		try {
			FileWriter fstream = new FileWriter("Output/" + args[2], true);
			BufferedWriter out = new BufferedWriter(fstream);
			if (searchStatistics.getSolutionNode() != null
					&& searchStatistics.getSolutionNode() instanceof FFRiskyNode) {
				out.append((args.length == 6 ? args[5] + "\t" + args[4] + "\t"
						: "")
						+ domainFile.getName()
						+ "\t"
						+ problemFile.getName()
						+ "\t"
						+ args[3]
						+ "\t"
						+ plan.size()
						+ "\t"
						+ searchStatistics.getElapsedTime()
						+ "\t"
						+ searchStatistics.getNodesExpanded()
						+ "\t"
						+ ((FFRiskyNode) searchStatistics.getSolutionNode())
								.getCriticalRisks().size() + "\r\n");
			} else {
				out.append((args.length == 6 ? args[5] + "\t" + args[4] + "\t"
						: "")
						+ domainFile.getName()
						+ "\t"
						+ problemFile.getName()
						+ "\t"
						+ args[3]
						+ "\t"
						+ plan.size()
						+ "\t"
						+ searchStatistics.getElapsedTime()
						+ "\t"
						+ searchStatistics.getNodesExpanded()
						+ "\t"
						+ 0
						+ "\r\n");
			}
			out.close();
			logger.debug("\ninformation written to Output/" + args[2]);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void usage() {
		System.err
				.println("usage: java GraphSolver <domain-pddl-file> <problem-pddl-file> <output file> <Search type (optional: either frisky(default), length, or uniformcost)>");
		System.exit(1);
	}
}
