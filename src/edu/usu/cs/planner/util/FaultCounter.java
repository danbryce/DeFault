package edu.usu.cs.planner.util;

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

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.ka.currentsystem.agentsystem.Planner;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.planner.IncompleteBDDNode;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions.FAULT_TYPE;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.FaultStateNode;
import edu.usu.cs.search.IncompletePINode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FaultLiteral;
import edu.usu.cs.search.incomplete.PIFaultSet;

public class FaultCounter {

	private static BDD bdd;
	private static int bddRef;
	private static Map<Fault, Integer> riskToBDD;
	private static Map<Integer, Fault> bddToRisk;
	private static List<Fault> allRisks;
	private static List<Fault> unknownRisks;
	private static boolean isInitialized = false;
	private static int unusedRisks = 0;//currently unused
	private static Logger logger = Logger.getLogger(FaultCounter.class.getName());

	public static long startCountTime, endCountTime, totalCountTime = 0;


	public static void initialize(Domain domain, Problem problem, List<ActionInstance> plan) {
		if (isInitialized) return;

		allRisks = getAllRisks(problem);
		unknownRisks = new ArrayList<Fault>();
		
		bdd = new BDD(10000, 10000);

		riskToBDD = new HashMap<Fault, Integer>();
		bddToRisk = new HashMap<Integer, Fault>();

		int i = 1;
		unusedRisks = 0;
		for (Fault risk : allRisks) {

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
			//	logger.debug((i++) + " " + risk);
			//			}
			//			else{
			//				unusedRisks++;
			//			}
			
			if(problem.getUnknownPropositions().contains(risk.getPropositionName())){
				unknownRisks.add(risk);
			}
			
		}


		isInitialized = true;
	}


	/**
	 * This method is a slightly altered version of the original version above.
	 * It is called by the ka.Agent class. Note that it sets isInitialized to true.
	 * Thus, all calls to the method above will terminate without resetting any data members,
	 *  unless isInitialized is reset to false.
	 * 
	 * @param domain
	 * @param problem
	 */
	public static void initialize(Domain domain, Problem problem) 
	{
		if (isInitialized) return;

		Fault.resetStaticHashMaps();

		allRisks = getAllRisks(problem);
		unknownRisks = new ArrayList<Fault>();
		
		bdd = new BDD(10000, 10000);
		bddRef = bdd.ref(bdd.getOne());

		riskToBDD = new HashMap<Fault, Integer>();
		bddToRisk = new HashMap<Integer, Fault>();

		int i  =0;
	for (Fault risk : allRisks) 
		{
			int temp = bdd.createVar();
			riskToBDD.put(risk, temp);
			bddToRisk.put(temp, risk);
			//logger.debug((i++) + " " + risk);
			if(problem.getUnknownPropositions().contains(risk.getPropositionName())){
				unknownRisks.add(risk);
			}
		}

		isInitialized = true;
	}

	// Hopefully this will deref everything
	public static void deref() 
	{
		bdd = null;
		riskToBDD = null;
		bddToRisk = null;
		allRisks = null;
		isInitialized = false;
	}

	public static int getBddFromFault(Fault f){
		return riskToBDD.get(f);
	}

	//A different form of the deref method above - used by ka.Agent
	public static void resetIsInitialized()
	{
		isInitialized = false;
		logger = Logger.getLogger(FaultCounter.class.getName());

		Fault.resetStaticHashMaps();
	}

	public static int getNumRisks(){ return allRisks.size(); }
	public static List<Fault> getAllRisks(){ return allRisks;}



	public static BigInteger getModelCount(Domain domain, Problem problem, List<ActionInstance> plan, Solver solver) {

		//M(a & b1 & ... & bk) = M(a)M(b)^k 
		//                     = (2^F0 - M(-a))(2^F1 - M(-b))^k
		//M(-a V -b1 V ... V -bk) = 2^{F0+kF1} - M(a & b1 & ... & bk)
		//                        = 2^{F0+kF1} - (2^F0 - M(-a))(2^F1 - M(-b))^k
		
		

		FaultSet[] crs = getFaultSet(domain, problem, plan, solver, FAULT_TYPE.BDD_FAULTS);

		BigInteger unsolvableDomains = getBigUnSolvableDomainCount(crs[0]);

		if(solver.getSolverOptions().isStrictExponentCount()){
			BigInteger totalDoms = BigInteger.valueOf(1).shiftLeft(FaultCounter.getNumRisks()-FaultCounter.getNumUnknownRisks()+(FaultCounter.getNumUnknownRisks()*domain.getMaxUnknownPropositions()));
			BigInteger totalFDoms = BigInteger.valueOf(1).shiftLeft(FaultCounter.getNumRisks()-FaultCounter.getNumUnknownRisks());
			BigInteger totalFkDoms = BigInteger.valueOf(1).shiftLeft(FaultCounter.getNumUnknownRisks());
			BigInteger unknownUnsolvable =  getBigUnSolvableDomainCount(crs[1]);	
			
			BigInteger solvableDoms = totalFDoms.subtract(unsolvableDomains);
			BigInteger solvableExtensions = totalFkDoms.subtract(unknownUnsolvable).pow(domain.getMaxUnknownPropositions());
			
			unsolvableDomains = totalDoms.subtract(solvableDoms.multiply(solvableExtensions));  
			
		}
	



		return unsolvableDomains;

	}

	public static StateNode getGoalNode(Domain domain, Problem problem, List<ActionInstance> plan, Solver solver, FAULT_TYPE faultType) {
		FAULT_TYPE oldFaults = solver.getSolverOptions().getFaultType();
		solver.getSolverOptions().setFaultType(faultType);

		if (!isInitialized) {initialize(domain, problem, plan);}

		// Figure out which risks are true right now
		List<StateNode> nodes = new ArrayList<StateNode>(plan.size() + 1);

		// Add the initial state
		nodes.add(faultType == FAULT_TYPE.BDD_FAULTS ?
				new IncompleteBDDNode(problem.getInitialState(), null, null, solver) :
					new IncompletePINode(problem.getInitialState(), null, null, solver)		);



		for (ActionInstance action : plan) 
		{
			StateNode nextNode = nodes.get(nodes.size() - 1).getSuccessorNode((IncompleteActionInstance)action);
			if(nextNode == null){
				solver.getSolverOptions().setFaultType(oldFaults);
				return null;
			}
			nodes.add(nextNode);
			//bdd.printSet(nodes.get(nodes.size()-1).getActRisks());
			//bdd.printCubes(nodes.get(nodes.size()-1).getActRisks());
			//bdd.print(nodes.get(nodes.size()-1).getActRisks());
			//bdd.support(bdd)

			//			bdd.printSet(bdd.not(nodes.get(nodes.size()-1).getCriticalRisks()));
		}
		solver.getSolverOptions().setFaultType(oldFaults);

		return  nodes.get(nodes.size() - 1);	



	}


	public static FaultSet[] getFaultSet(Domain domain, Problem problem, List<ActionInstance> plan, Solver solver, FAULT_TYPE faultType) {

		FAULT_TYPE oldFaults = solver.getSolverOptions().getFaultType();
		solver.getSolverOptions().setFaultType(faultType);

		FaultSet[] returnFaults = new FaultSet[3];

		if (!isInitialized) {initialize(domain, problem, plan);}

		StateNode node = getGoalNode(domain, problem, plan, solver, faultType);

		if(node == null){
			solver.getSolverOptions().setFaultType(oldFaults);
			returnFaults[0] =new BDDFaultSet(); 
			return returnFaults;
		}

		//		//add critical risks for goals
		FaultSet crs = (!solver.getSolverOptions().isStrictSemantics() ?
				new BDDFaultSet() :
					new BDDFaultSet(((FaultStateNode) node).getCriticalRisks()));
		if(!solver.getSolverOptions().isStrictSemantics())
			crs.not();
		//logger.debug(crs);
		//bdd.ref(crs);
		for(Proposition p : problem.getGoalAction().getPreconditions()){
			FaultSet risk = ((FaultStateNode) node).getPropositions().get(p);
			crs.or(risk);
		}

	
		
		FaultSet crss = null;
		if(solver.getSolverOptions().isStrictExponentCount()){
			crss = new BDDFaultSet(((FaultStateNode) node).getCriticalRisksStrictUnknown());
			FaultSet all = new BDDFaultSet(crs);
			all.or(crss);
			returnFaults[2]=all;
			//set easiest domain equal to true to get right model count
			for (Fault risk : allRisks) 
			{
				if(!problem.getUnknownPropositions().contains(risk.getPropositionName())){
					boolean isTrue = risk.getRiskName().equals(Fault.POSSADD);
					FaultLiteral f = new FaultLiteral(risk, isTrue);
					//FaultSet r = new BDDFaultSet();
					//r.and(f);
					crss.and(f);
				}
				else{
					//blank out from crs
					FaultLiteral f = new FaultLiteral(risk, false);
					crs.and(f);
				}
			}


			//			for(Proposition p : problem.getGoalAction().getPreconditions()){				
			//				FaultSet risk = ((FaultStateNode) node).getPropositions().get(p);
			//				crs.or(risk);
			//			}
		}


		solver.getSolverOptions().setFaultType(oldFaults);


		//logger.debug(crs);

		//		for (Risk risk : allRisks) {
		//			System.out.print("(" + risk.toString() + ") ");
		//		}
		//		logger.debug();
		//		bdd.printSet(nodes.get(nodes.size() - 1).getCriticalRisks());

		//	bdd.printSet(nodes.get(nodes.size() - 1).getCriticalRisks());
		//bdd.printSet(bdd.not(crs));
		returnFaults[0] = crs;
		if(solver.getSolverOptions().isStrictExponentCount()){
			returnFaults[1] = crss;
		}
		return returnFaults;
	}

	/**
	 * This method is altered from the above method getmodelCount for use by the ka.Agent.
	 * It currently assumes: 
	 * 	the solver instance parameter is not important in the RiskCounterNode's getSuccessorNode method.
	 *  the domain instance is not important.
	 * It thus requires only the following params:
	 * @param problem - updated actions to current level of ka.Agent's knowledge
	 * @param plan - the most current plan.
	 * @return int bddRef_failureExplanationSentence
	 * This failure explanation sentence must be:
	 *  built and returned
	 *  deref'ed by ka.Agent after use.
	 *  
	 *  Note: Make sure the problem's initial state and actions are updated before this method (and the planner) are called, of course.
	 */
	public static int getFailureExplanationSentence_BDDRef(Problem problem, List<ActionInstance> plan, ActionInstance currAction, Solver solver) 
	{		
		List<RiskCounterNode> nodes = new ArrayList<RiskCounterNode>(plan.size() + 2); // Figure out which risks are true right now

		nodes.add(new RiskCounterNode(problem.getInitialState(), null, null, solver)); // Add the initial state - note: solver is null

		if(currAction != null)
			nodes.add(nodes.get(nodes.size() - 1).getSuccessorNode((IncompleteActionInstance)currAction));//Add currAction
		//currAction was popped off in the execution sim alg, but needs to be applied here for continuity 

		//Original version of Add the others
		// Note that the null isn't caught for getSuccessorNode() call.
		// That method returns a null is the action is found to be not applicable.
		//		for (ActionInstance action : plan) // Add the others
		//			nodes.add(nodes.get(nodes.size() - 1).getSuccessorNode((IncompleteActionInstance)action));

		//Current version - removes the Exception.
		//Added some unnecessary protection around it.
		//The null node just means that the goal can't be reached according to the way
		//RiskCounterNode builds up the propositions - which seems a bit tight actually.
		if ((plan != null) && (plan.size() > 0))
		{
			for (ActionInstance action : plan) // Add the others
			{
				try{nodes.add(nodes.get(nodes.size() - 1).getSuccessorNode((IncompleteActionInstance) action));}
				catch(Exception e){break;}
			}
		}

		//Requires this line - might have added a null node, causing the next line to break.
		if(nodes.get(nodes.size()-1) == null) nodes.remove(nodes.size()-1);

		//Without the removal of the line above, this line returns the Exception
		int crs = nodes.get(nodes.size() - 1).getActRisks(); //add critical risks for goals

		bdd.ref(crs);
		for(Proposition p : problem.getGoalAction().getPreconditions())
		{
			Integer risk = nodes.get(nodes.size() - 1).propositions.get(p);//propositions here gets the bddRef to Prop p
			if(risk != null)
			{
				int tmp = bdd.ref(bdd.or(crs, risk.intValue()));
				bdd.deref(crs);
				bdd.ref(tmp);
				crs = tmp;
			}
			//Here, if one Precondition prop in the GoalAction isn't found in the last node,
			//then the failure explanation is trivially true - the plan will definitely fail.
			else 
			{
				bdd.deref(crs);
				crs = bdd.getOne();
				int tmp = bdd.ref(crs);
				crs = tmp;
				break;
			}
		}

		return crs;
	}

	//	public static int getSolvableDomains(int bdd) {
	//		return RiskCounter.bdd.getSetCount(bdd);
	//	}

	public static BigInteger getModelCount(int bdd) 
	{

		startCountTime = System.currentTimeMillis();

		//System.out.println("\n bdd: " + bdd);
		if(bdd == 1)
			return BigInteger.valueOf(2).pow(allRisks.size());
		else if(bdd == 0)
			return BigInteger.valueOf(0);

		BigInteger solvableDomains;
		try{
			solvableDomains = FaultCounter.bdd.bigSatCount(bdd);
			//solvableDomains = FaultCounter.bdd.bigSatCountExp(bdd);

		}catch (Exception e)//Added due to odd negative exponent exception

		{
			//System.out.print(" !");
			//e.printStackTrace();
			solvableDomains = BigInteger.valueOf(2).pow(allRisks.size());
		}

		endCountTime = System.currentTimeMillis();

		totalCountTime += endCountTime - startCountTime;

		return solvableDomains;
	}

	public static BigInteger getBigUnSolvableDomainCount(FaultSet faultSet) {
		return getModelCount(((BDDFaultSet)faultSet).getFaults());
	}

	public static BigInteger getBigUnSolvableDomainCount(int faultSet) {
		return getModelCount(faultSet);
	}
	public static BigInteger getBigSolvableDomainCount(FaultSet faultSet) {
		return getModelCount(bdd.not(((BDDFaultSet)faultSet).getFaults()));
	}
	public static BigInteger getBigSolvableDomainCount(int faultSet) {
		return getModelCount(bdd.not(faultSet));
	}

	//	public static BigInteger getBigUnsolvableDomainCount(FaultSet faultSet) {
	//		//System.out.print("[");
	//		BDDRiskSet brs = (BDDRiskSet)faultSet;
	//		
	//		
	////		int notdd = RiskCounter.bdd.not(faultSet);
	////		RiskCounter.bdd.ref(notdd);	
	//		BigInteger unsolvableDomains = getBigUnSolvableDomainCount(brs.getFaults());		
	////		RiskCounter.bdd.deref(notdd);
	//		//System.out.print("]");
	//		return unsolvableDomains;
	//	}


	public static BDD 					getBDD() 									{ return bdd; }
	public static void 					setBdd(BDD bdd) 							{ FaultCounter.bdd = bdd; }
	public static int 					get_bddRef()								{ return bddRef; }
	public static Map<Fault, Integer> 	getRiskToBDD() 								{ return riskToBDD; }
	public static void 					setRiskToBDD(Map<Fault, Integer> riskToBDD) { FaultCounter.riskToBDD = riskToBDD; }
	public static Map<Integer, Fault> 	getBddToRisk() 								{ return bddToRisk; }
	public static void 					setBddToRisk(Map<Integer, Fault> bddToRisk) { FaultCounter.bddToRisk = bddToRisk; }

	private static List<Fault> getAllRisks(Problem problem) {
		List<Fault> risks = new ArrayList<Fault>();

		for (ActionInstance a : problem.getActions()) {
			IncompleteActionInstance action = (IncompleteActionInstance)a;

			// Poss-prec
			for (Proposition possprec : action.getPossiblePreconditions()) {
				risks.add(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possprec));
			}

			// Poss-del
			for (Proposition possdel : action.getPossibleDeleteEffects()) {
				risks.add(Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), possdel));
			}

			// Poss-add
			for (Proposition possadd : action.getPossibleAddEffects()) {
				risks.add(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), possadd));
			}
			for (Proposition possadd : action.getPossibleAddsDeletes()) {
				risks.add(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), possadd));
				risks.add(Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), possadd));
			}

			//			//unknown propositions that are not locally closed
			//			for(Proposition p : problem.getUnknownPropositions()){
			//				if(!problem.getDomain().getClosedPreconditions().contains(a.getDefinition())){
			//					risks.add(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), p.getName()));
			//				}
			//				if(!problem.getDomain().getClosedAddEffects().contains(a.getDefinition())){
			//					risks.add(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), p.getName()));
			//				}
			//				if(!problem.getDomain().getClosedDeleteEffects().contains(a.getDefinition())){
			//					risks.add(Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), p.getName()));
			//				}
			//			}

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
			domain = domBuilder.buildDomain(0);
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
			results.solvableDomains = getModelCount(domain, problem, results.plan, null);
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


	public static FaultSet getPIFailureExplanationSentence(Problem problem,
			List<ActionInstance> plan, Solver solver) {
		List<IncompletePINode> nodes = new ArrayList<IncompletePINode>(plan.size() + 2); // Figure out which risks are true right now

		nodes.add(new IncompletePINode(problem.getInitialState(), null, null, solver)); // Add the initial state - note: solver is null

		if ((plan != null) && (plan.size() > 0))
		{
			for (ActionInstance action : plan) // Add the others
			{
				try{nodes.add((IncompletePINode) nodes.get(nodes.size() - 1).getSuccessorNode((IncompleteActionInstance) action));}
				catch(Exception e){break;}
			}
		}

		//Requires this line - might have added a null node, causing the next line to break.
		if(nodes.get(nodes.size()-1) == null) nodes.remove(nodes.size()-1);

		//Without the removal of the line above, this line returns the Exception
		FaultSet crs = new PIFaultSet(nodes.get(nodes.size() - 1).getCriticalRisks()); //add critical risks for goals


		for(Proposition p : problem.getGoalAction().getPreconditions())
		{
			FaultSet faults = nodes.get(nodes.size() - 1).getPropositions().get(p);
			crs.or(faults);
		}

		return crs;
	}


	public static FaultSet getBDDFailureExplanationSentence(Problem problem,
			List<ActionInstance> plan, 
			Solver solver) {
		// TODO Auto-generated method stub
		FaultSet faults = new BDDFaultSet();
		((BDDFaultSet)faults).setFaults(getFailureExplanationSentence_BDDRef(problem, plan, null, solver));
		return faults;
	}


	public static int getNumUnknownRisks() {
		// TODO Auto-generated method stub
		return unknownRisks.size();
	}
}
