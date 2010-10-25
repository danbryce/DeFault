package edu.usu.cs.incomplete.ka.agentsim.bddstuff;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

import org.apache.log4j.Logger;

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
	private static List<Risk> allRisks;
	private static boolean isInitialized = false;
	private static int unusedRisks = 0;
	private static Logger logger = Logger.getLogger(RiskCounter.class.getName());
	
	public static void initialize(Domain domain, Problem problem, List<ActionInstance> plan) {
		if (isInitialized) return;

		allRisks = getAllRisks(problem);

		bdd = new BDD(10000, 10000);

		riskToBDD = new HashMap<Risk, Integer>();
		bddToRisk = new HashMap<Integer, Risk>();
		
		
		int i = 1;
		unusedRisks = 0;
		for (Risk risk : allRisks) {

//			boolean riskActionInPlan = false;
//			if (plan != null) {
//				for(ActionInstance a : plan){
//					if(a.getName().equals(risk.getActionName())){
//						riskActionInPlan = true;
//						break;
//					}
//				}
//			}	
			//if(riskActionInPlan || plan == null){
				int temp = bdd.createVar();
				bdd.ref(temp);
				riskToBDD.put(risk, temp);
				bddToRisk.put(temp, risk);
				//			logger.debug((i++) + " " + risk);
//			}
//			else{
//				unusedRisks++;
//			}
		}


		isInitialized = true;
	}

	public static void deref() {
		// Hopefully this will deref everything
		bdd = null;
		riskToBDD = null;
		bddToRisk = null;
		allRisks = null;
		isInitialized = false;
	}
	
	public static int getNumRisks(){
		return allRisks.size();
	}

	public static BigInteger getBigSolvableDomainCount(Domain domain, Problem problem, List<ActionInstance> plan) {

		if (!isInitialized) {
			initialize(domain, problem, plan);

		}

		// Figure out which risks are true right now
		List<RiskCounterNode> nodes = new ArrayList<RiskCounterNode>(plan.size() + 1);

		// Add the initial state
		nodes.add(new RiskCounterNode(problem, problem.getInitialState(), null, null));

		// Add the others
		for (ActionInstance action : plan) {
			nodes.add(nodes.get(nodes.size() - 1).getSuccessorNode((IncompleteActionInstance)action));
			//			bdd.printSet(nodes.get(nodes.size()-1).getCriticalRisks());
			//			bdd.printSet(bdd.not(nodes.get(nodes.size()-1).getCriticalRisks()));
		}

//		//add critical risks for goals
//		int crs = nodes.get(nodes.size() - 1).getCriticalRisks();
//		bdd.ref(crs);
//		for(Proposition p : problem.getGoalAction().getPreconditions()){
//			Integer risk = nodes.get(nodes.size() - 1).propositions.get(p);
//			if(risk != null){
//				int tmp = bdd.ref(bdd.and(crs, risk.intValue()));
//				bdd.deref(crs);
//				crs = tmp;
//				bdd.ref(crs);
//			}
//			else{
//				bdd.deref(crs);
//				crs = bdd.getZero();
//				bdd.ref(crs);
//				break;
//			}
//		}


		//		for (Risk risk : allRisks) {
		//			System.out.print("(" + risk.toString() + ") ");
		//		}
		//		logger.debug();
		//		bdd.printSet(nodes.get(nodes.size() - 1).getCriticalRisks());

		//	bdd.printSet(nodes.get(nodes.size() - 1).getCriticalRisks());
		//bdd.printSet(bdd.not(crs));

		BigInteger solvableDomains = getBigSolvableDomainCount(nodes.get(nodes.size() - 1).getCriticalRisks());
		//bdd.ref(solvableDomains);
		
		return solvableDomains;
	}

//	public static int getSolvableDomains(int bdd) {
//		return RiskCounter.bdd.getSetCount(bdd);
//	}


	public static BigInteger getBigSolvableDomainCount(int bdd) {
		if(bdd == 1)
			return BigInteger.valueOf(2).pow(allRisks.size());
		else if(bdd == 0)
			return BigInteger.valueOf(0);
		
		BigInteger solvableDomains = RiskCounter.bdd.bigSatCount(bdd);
		
		return solvableDomains;
	}

	public static BigInteger getBigUnsolvableDomainCount(int bdd) {
		//System.out.print("[");
		int notdd = RiskCounter.bdd.not(bdd);
		RiskCounter.bdd.ref(notdd);	
		BigInteger unsolvableDomains = getBigSolvableDomainCount(notdd);		
		RiskCounter.bdd.deref(notdd);
		//System.out.print("]");
		return unsolvableDomains;
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
		if (args.length != 6) {
			usage();
			return;
		}

		File domainFile = new File(args[0]);
		if (!domainFile.exists()) {
			System.err.println("Unable to find PDDL domain file " + args[0]);
			usage();
			return;
		}
		File problemFile = new File(args[1]);
		if (!problemFile.exists()) {
			System.err.println("Unable to find PDDL problem file " + args[1]);
			usage();
			return;
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
		RiskCounterResults results = new RiskCounterResults();


		// Set the domain and problem file names and the search type (friskymsriskfirst, uniformcost, etc.)
		getProblemType(args, results);

		// Get the plan, plan length, elapsed time, nodes expanded, and risk count
		parseOutputFile(problem, args[2], results);

		initialize(domain, problem, results.plan);
		results.unusedRisks = unusedRisks;
		results.allRisksCount = allRisks.size();



		// If there was a plan, get the number of solvable domains
		if (results.plan != null)
		{
			results.solvableDomains = getBigSolvableDomainCount(domain, problem, results.plan);
		}

		try {
			FileWriter fstream = new FileWriter(args[3], true);
			BufferedWriter out = new BufferedWriter(fstream);

			out.append(results.toString());

			out.close();
			fstream.close();
		} catch (Exception e) {
			logger.debug(e.getMessage());
			logger.debug(e.getStackTrace());
		}

		logger.debug(results.toString());

		deref();
	}

	private static void getProblemType(String[] args, RiskCounterResults results) {
		results.instance = Integer.parseInt(args[4]);
		results.probability = Double.parseDouble(args[5]);
		results.domainFileName = args[0];
		results.problemFileName = args[1];

		String solverName = args[2].toLowerCase();
		if (solverName.contains("friskymsriskfirst")) {
			results.solverName = "friskymsriskfirst";
		} else if (solverName.contains("friskymslengthfirst")) {
			results.solverName = "friskymslengthfirst";
		} else if (solverName.contains("uniformcost")) {
			results.solverName = "uniformcost";
		} else if (solverName.contains("friskyriskfirst")) {
			results.solverName = "friskyriskfirst";
		} else if (solverName.contains("friskylengthfirst")) {
			results.solverName = "friskylengthfirst";
		} else if (solverName.contains("friskylength")) {
			results.solverName = "friskylength";
		}
	}

	private static void parseOutputFile(Problem problem, String outputFileName, RiskCounterResults results) {

		// Open the file
		File file = new File(outputFileName);
		if (!file.exists()) {
			System.err.println("Unable to find input FFRisky output file " + outputFileName);
			usage();
			return;
		}

		//		List<String> inputLines = null;
		List<String> planAsStrings = null;

		try {
			FileReader fileReader = new FileReader(file);
			BufferedReader bufferedReader = new BufferedReader(fileReader);

			//			inputLines = new ArrayList<String>();
			while (true) {
				String line = bufferedReader.readLine();
				if (line == null) {
					break;
				}

				// get the plan
				if (line.equals("Plan found")) {
					planAsStrings = new ArrayList<String>();

					while (!line.equals("")) {
						line = bufferedReader.readLine();
						planAsStrings.add(line);
					}
				}

				// Get plan length, elapsed time, nodes expanded, risk count
				else if (line.startsWith("Plan length: ")) {
					String planLengthAsString = line.substring(13);
					results.planLength = Integer.parseInt(planLengthAsString);
				}
				else if (line.startsWith("Elapsed time: ")) {
					String elapsedTimeAsString = line.substring(14);
					elapsedTimeAsString = elapsedTimeAsString.substring(0, elapsedTimeAsString.indexOf(' '));
					results.elapsedTime = Integer.parseInt(elapsedTimeAsString);
				}
				else if (line.startsWith("Nodes expanded: ")) {
					String nodesExpandedAsString = line.substring(16);
					results.nodesExpanded = Integer.parseInt(nodesExpandedAsString);
				}
				else if (line.startsWith("Risk count: ")) {
					String riskCountAsString = line.substring(12);
					results.riskCount = Integer.parseInt(riskCountAsString);
				}

				//				inputLines.add(line);
			}

			bufferedReader.close();
			fileReader.close();
		} catch (Exception e) {
			e.printStackTrace();
			return;
		}

		//		// If it's a ffrisky output file, get the plan
		//		for (int i = 0; i < inputLines.size(); i++) {
		//			String line = inputLines.get(i);
		//			
		//			// Search for "Plan found" - 
		//			// What's below it is the plan
		//			if (line.equals("Plan found")) {
		//				planAsStrings = new ArrayList<String>();
		//				
		//				while (!line.equals("")) {
		//					i++;
		//					line = inputLines.get(i);
		//					planAsStrings.add(line);
		//				}
		//			}
		//			
		//			// Get plan length, elapsed time, nodes expanded, risk count
		//			else if (line.startsWith("Plan length: ")) {
		//				String planLengthAsString = line.substring(13);
		//				results.planLength = Integer.parseInt(planLengthAsString);
		//			}
		//			else if (line.startsWith("Elapsed time: ")) {
		//				String elapsedTimeAsString = line.substring(14);
		//				elapsedTimeAsString = elapsedTimeAsString.substring(0, elapsedTimeAsString.indexOf(' '));
		//				results.elapsedTime = Integer.parseInt(elapsedTimeAsString);
		//			}
		//			else if (line.startsWith("Nodes expanded: ")) {
		//				String nodesExpandedAsString = line.substring(16);
		//				results.nodesExpanded = Integer.parseInt(nodesExpandedAsString);
		//			}
		//			else if (line.startsWith("Risk count: ")) {
		//				String riskCountAsString = line.substring(12);
		//				results.riskCount = Integer.parseInt(riskCountAsString);
		//			}
		//		}

		//		// If it's not a ffrisky output file, assume every line has an action instance in the plan
		//		if (planAsStrings == null) {
		//			planAsStrings = inputLines;
		//		}

		// If it's not a ffrisky output file, just quit
		if (planAsStrings == null) {
			return;
		}

		// Convert the plan from strings to action instances
		List<ActionInstance> allActions = problem.getActions();

		results.plan = new ArrayList<ActionInstance>();

		for (String str : planAsStrings) {
			for (ActionInstance actionInstance : allActions) {
				if (actionInstance.getName().equals(str)) {
					results.plan.add(actionInstance);
					break;
				}
			}
		}
		results.plan.add((IncompleteActionInstance)problem.getGoalAction());
	}

	private static void usage() {
		logger.debug("usage: RiskCounter [domain file] [problem file] [ffrisky output file] [stats output file] [instance] [probability]");
	}
}
