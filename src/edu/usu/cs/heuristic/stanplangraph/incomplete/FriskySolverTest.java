package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.io.File;
import java.io.IOException;
import java.util.Set;

import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;

public class FriskySolverTest {
	
	
	
	public static void main(String[] args) {
		if (args.length != 2) {
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
		Problem problem= null;
		try {
			ANTLRDomainBuilder	domBuilder = new ANTLRDomainBuilder(domainFile);
			domain = domBuilder.buildDomain();
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain, problemFile);
			 problem = probBuilder.buildProblem();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (PDDLSyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (InvalidPDDLElementException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//IncompleteProblem incompleteProblem = PddlImporter.getProblem(domain, problem);
		
		//FriskySolver friskySolver = new FriskySolver(problem, problem.getInitialNode());
		FFriskyRelaxedPlanningGraph friskySolver = new FFriskyRelaxedPlanningGraph(problem, domain, new SolverOptions());
		System.out.println(friskySolver.toString());
		
		GeneralizedRiskSet goalRiskSet = friskySolver.getGoalRiskSet();
		if(goalRiskSet == null) {
			System.out.println("Couldn't find solution");
		}
		System.out.println("\n\n************ PLANNING GRAPH ************\n\n");
		System.out.println(friskySolver.toString());
		
		System.out.println("\n************ Risks Found ************\n");
		System.out.println(goalRiskSet.toString());
		System.out.println("risk count: " + goalRiskSet.size());

//		boolean areNewFacts = true;
//		int layer = 0;
//		while(areNewFacts) {
//			areNewFacts = stanSolver.addLevel();
//			layer++;
////			System.out.println("\n\n************ Adding Layer " + layer + " ************\n");
////			System.out.println(stanSolver.toString());
//			
//			if(stanSolver.containsSolution()) {
//				
//				System.out.println("\n\n************ PLANNING GRAPH ************\n\n");
//				System.out.println(stanSolver.toString());
//				
//				List<Action> relaxedPlan = stanSolver.getRelaxedPlan();
//				
//				System.out.println("\n************ Solution Found ************\n");
//				for(Action action : relaxedPlan) {
//					System.out.println(action.getName());
//				}
//				System.out.println("length: " + relaxedPlan.size());
//				
//				return;
//			}
//		}
	}
	
	private static void usage() {
		System.err
				.println("usage: java GraphSolver <domain-pddl-file> <problem-pddl-file>");
		System.exit(1);
	}
}
