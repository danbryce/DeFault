package edu.usu.cs.planner.ffrisky.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

import jdd.bdd.BDD;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;

public class RiskCounter {
	
	private static BDD bdd;
	private static Map<Risk, Integer> riskToBDD;
	private static Map<Integer, Risk> bddToRisk;
	
	public static double getRisks(Domain domain, Problem problem, List<RiskCounterAction> plan) {
		
		List<Risk> allRisks = getAllRisks(problem);
		
		bdd = new BDD(1000, 1000);
		
		riskToBDD = new HashMap<Risk, Integer>();
		bddToRisk = new HashMap<Integer, Risk>();
		
		for (Risk risk : allRisks) {
			int temp = bdd.createVar();
			riskToBDD.put(risk, temp);
			bddToRisk.put(temp, risk);
		}
		
		// Figure out which risks are true right now
		List<RiskCounterNode> nodes = new ArrayList<RiskCounterNode>(plan.size() + 1);
		
		// Add the initial state
		nodes.add(new RiskCounterNode(problem.getInitialState()));
		
		// Add the others
		for (RiskCounterAction action : plan) {
			nodes.add(nodes.get(nodes.size() - 1).getSuccessorNode(action));
		}
		
		int solvableDomains = bdd.getSetCount(nodes.get(nodes.size() - 1).getCriticalRisks());
		for (Risk risk : allRisks) {
			System.out.print("(" + risk.toString() + ") ");
		}
		System.out.println();
		bdd.printSet(nodes.get(nodes.size() - 1).getCriticalRisks());
		
		double solvableRatio = solvableDomains / Math.pow(2, allRisks.size());
		
		// Hopefully this will deref everything
		bdd = null;
		riskToBDD = null;
		bddToRisk = null;
		
		return solvableRatio;
	}
	
	public static BDD getBDD() {
		return bdd;
	}

	public static void setBdd(BDD bdd) {
		RiskCounter.bdd = bdd;
	}

	public static Map<Risk, Integer> getRiskToBDD() {
		return riskToBDD;
	}

	public static void setRiskToBDD(Map<Risk, Integer> riskToBDD) {
		RiskCounter.riskToBDD = riskToBDD;
	}

	public static Map<Integer, Risk> getBddToRisk() {
		return bddToRisk;
	}

	public static void setBddToRisk(Map<Integer, Risk> bddToRisk) {
		RiskCounter.bddToRisk = bddToRisk;
	}

	private static List<Risk> getAllRisks(Problem problem) {
		List<Risk> risks = new ArrayList<Risk>();
		
		for (ActionInstance a : problem.getActions()) {
			IncompleteActionInstance action = (IncompleteActionInstance)a;
			
			// Poss-prec
			for (Proposition possprec : action.getPossiblePreconditions()) {
				risks.add(Risk.getRiskFromIndex(Risk.PRECOPEN, action.getName(), possprec.getName()));
			}
			
			// Poss-del
			for (Proposition possdel : action.getPossibleDeleteEffects()) {
				risks.add(Risk.getRiskFromIndex(Risk.POSSCLOB, action.getName(), possdel.getName()));
			}
			
			// Poss-add
			for (Proposition possadd : action.getPossibleAddEffects()) {
				risks.add(Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, action.getName(), possadd.getName()));
			}
		}
		
		return risks;
	}
	
	public static void main(String[] args) {
		if (args.length != 3) {
			usage();
			return;
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
		
		// Get the plan
		List<RiskCounterAction> plan = new ArrayList<RiskCounterAction>();
		for (IncompleteActionInstance action : parseOutputFile(problem, args[2])) {
			plan.add(new RiskCounterAction(action));
		}
		
		double solvableRatio = getRisks(domain, problem, plan);
		
		System.out.println("Solvable Ratio: " + solvableRatio);
	}
	
	private static List<IncompleteActionInstance> parseOutputFile(Problem problem, String outputFileName) {
		List<IncompleteActionInstance> plan = new ArrayList<IncompleteActionInstance>();
		
		// Open the file
		File file = new File(outputFileName);
		if (!file.exists()) {
			System.err.println("Unable to find input FFRisky output file " + outputFileName);
			usage();
			return null;
		}
		
		List<String> inputLines = null;
		List<String> planAsStrings = null;
		
		try {
			FileReader fileReader = new FileReader(file);
			BufferedReader bufferedReader = new BufferedReader(fileReader);

			inputLines = new ArrayList<String>();
			while (true) {
				String inputLine = bufferedReader.readLine();
				if (inputLine == null) {
					break;
				}
				inputLines.add(inputLine);
			}
			
			bufferedReader.close();
			fileReader.close();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		// If it's a ffrisky output file, get the plan
		for (int i = 0; i < inputLines.size(); i++) {
			String line = inputLines.get(i);
			
			// Search for "Plan found" - 
			// What's below it is the plan
			if (line.equals("Plan found")) {
				planAsStrings = new ArrayList<String>();
				
				while (!line.equals("")) {
					i++;
					line = inputLines.get(i);
					planAsStrings.add(line);
				}
				break;
			}
		}
		
		// If it's not a ffrisky output file, assume every line has an action instance in the plan
		if (planAsStrings == null) {
			planAsStrings = inputLines;
		}
		
		// Convert the plan from strings to action instances
		List<ActionInstance> allActions = problem.getActions();
		
		for (String str : planAsStrings) {
			for (ActionInstance actionInstance : allActions) {
				if (actionInstance.getName().equals(str)) {
					plan.add((IncompleteActionInstance)actionInstance);
					break;
				}
			}
		}
		plan.add(problem.getGoalAction());
		
		return plan;
	}
	
	private static void usage() {
		System.out.println("usage: RiskCounter [domain file] [problem file] [ffrisky output file]");
	}
}
