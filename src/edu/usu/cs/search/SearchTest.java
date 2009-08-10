package edu.usu.cs.search;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.ffrisky.FFriskyEHCSolver;
import edu.usu.cs.planner.ffrisky.FFriskyLengthSolver;
import edu.usu.cs.planner.ffrisky.FFriskySolver;
import edu.usu.cs.planner.ffrisky.UniformCostFFriskySolver;
import edu.usu.cs.planner.ffvanilla.AStarSolver;
import edu.usu.cs.planner.pspffrisky.FFRiskyPSPSolver;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class SearchTest {

	private static FFRiskyNode finalNode;
	private static IncompleteProblem problem;
	private static double goalMin = Double.MAX_VALUE; // Once solution is found, this is used to keep track of the best solution found so far



	public static void main(String[] args) {
		if (!(args.length == 3 || args.length == 4)) {
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
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(
					domain, problemFile);
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
		try {
			// Initialize search algorithm
			
			if(args.length == 3 || args[3].equalsIgnoreCase("frisky")) {

				solver = new FFriskySolver(domain, problem, searchStatistics);

			}
			else if(args.length == 3 || args[3].equalsIgnoreCase("friskylength")) {

				solver = new FFriskyLengthSolver(domain, problem, searchStatistics);

			}
			else if(args.length == 3 || args[3].equalsIgnoreCase("friskypsp")) {

				solver = new FFRiskyPSPSolver(domain, problem, searchStatistics);

			}
			else if(args.length == 3 || args[3].equalsIgnoreCase("friskyEHC")) {

				solver = new FFriskyEHCSolver(domain, problem, searchStatistics);

			}
			else if(args[3].equalsIgnoreCase("uniformcost") || 
					args[3].equalsIgnoreCase("uniform")) {
				solver = new UniformCostFFriskySolver(domain, problem, searchStatistics);
			}
			else if(args[3].equalsIgnoreCase("length")) {
				solver = new AStarSolver(domain, problem, searchStatistics);
			}
			else {
				usage();
			}
		} catch (IllDefinedProblemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		List<ActionInstance> plan = solver.run();
		//getPlan(search);


		if (plan == null) {
			System.out.println("\nNo plan found");
			return;
		}
		System.out.println("\nPlan found");
		for (ActionInstance action : plan) {
			System.out.println(action.getName());
		}

		//		// Output the state sequence and actions in the plan
		//		System.out.println("\n*********************************\n*** State Transition Sequence ***\n*********************************");
		//		Node node = problem.getInitialNode();
		//		for (Action action : plan) {
		//			System.out.println(node);
		//			System.out.println(action);
		//			node = NodeUtilities.getSuccessorNode(node, action);
		//		}
		//		System.out.println(node);
		//		System.out.println(problem.getGoal());
		//		node = NodeUtilities.getSuccessorNode(node, problem.getGoal());
		//		System.out.println(node);
		//		System.out.println("*********************************\n*********************************");

		//		// Output the risks
		//		System.out.println("\nRisks: " + finalNode.getCriticalRisks().size());
		//		for (Risk risk : finalNode.getCriticalRisks()) {
		//			System.out.println(risk);
		//		}

		System.out.println("\nFinal Stats:\n");
		System.out.println("Plan length: " + plan.size());
		System.out.println("Elapsed time: " + searchStatistics.getElapsedTime() + " milliseconds");
		System.out.println("Nodes expanded: " + searchStatistics.getNodesExpanded());
		if(searchStatistics.getSolutionNode() != null && searchStatistics.getSolutionNode() instanceof FFRiskyNode){
		System.out.println("Risk count: " + ((FFRiskyNode)searchStatistics.getSolutionNode()).getCriticalRisks().size());
		}
		try {
			FileWriter fstream = new FileWriter("Output/" + args[2], true);
			BufferedWriter out = new BufferedWriter(fstream);
			if(searchStatistics.getSolutionNode() != null && searchStatistics.getSolutionNode() instanceof FFRiskyNode){
					out.append(problemFile.getName() + "\t" + args[3] + "\t" + plan.size() + "\t" + searchStatistics.getElapsedTime() + "\t" + searchStatistics.getNodesExpanded() + "\t" + ((FFRiskyNode)searchStatistics.getSolutionNode()).getCriticalRisks().size() + "\r\n");
			}
			else{
				out.append(problemFile.getName() + "\t" + args[3] + "\t" + plan.size() + "\t" + searchStatistics.getElapsedTime() + "\t" + searchStatistics.getNodesExpanded() + "\t" + 0 + "\r\n");
				
			}
			out.close();
			System.out.println("\ninformation written to Output/" + args[2]);
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
