package edu.usu.cs.ka.qa.currentsystem.utilities;

import java.io.File;
import java.util.*;

import jdd.bdd.BDD;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;

public class BDD_Utility 
{
	private BDD bdd;
	private Map<Fault, Integer> riskToBDD;
	private Map<Integer, Fault> bddToRisk;
	private Integer bddRef;
	
	BDD_Utility()
	{
		bdd = new BDD(10000, 10000);
		bddRef = bdd.ref(bdd.getOne());
		
		riskToBDD = new HashMap<Fault, Integer>();
		bddToRisk = new HashMap<Integer, Fault>();
	}
	
	public static void main(String[] args)
	{
		BDD_Utility util = new BDD_Utility();

		Problem problem 	 = util.buildProblem("hobonav_2_1.0_4_1.pddl", "hobonav_problem_2.pddl");
		//util.printIncompleteActionInstances(problem);
		
		List<Fault> risks     = util.getAllRisks(problem);
		//util.printRisks(risks);
		
		util.createRiskMaps(risks);
		
		//Simulate learning - suppose action gamble_bindle_0_0 was tried.
		ActionInstance currAct 	= util.getActionWithName(problem, "gamble_bindle_0_0");
		util.printIncompleteActionInstance(currAct);
		//State of problem was (at_0_0). The action's pre is met.
		//The action is executed. Now, state == (at_0_0 ^ have_bindle).
		//We have learned that "have_bindle" IS NOT a possible add effect (UNLISTEDEFFECT).
		//We have learned that "have_bindle" IS an add effect.
		//We must encode this new knowledge in the BDD.
		//The risk associated with this knowledge piece is:
		Fault risk = Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, currAct.getName(), "have_bindle");
		//Prove we got the risk:
		System.out.println(risk.toString());
		//We insert this knowledge into the BDD
		util.learnedIntoBDD(risk, true);
		//Let's query the BDD to see what it says about this risk.
		System.out.println("* " + util.bdd.and(util.riskToBDD.get(risk), util.bddRef));//130
		System.out.println("* " + util.bdd.and(util.bdd.not(util.riskToBDD.get(risk)), util.bddRef));//0
		System.out.println();
		
		//Simulate learning - Action move_0_0_1_0 was tried.
		currAct 	= util.getActionWithName(problem, "move_0_0_1_0");
		util.printIncompleteActionInstance(currAct);
		//State of problem was (at_0_0 ^ have_bindle). The action's pre is met.
		//The action is executed. Now, state == (at_1_0 ^ have_bindle).
		//We have learned that "have_bindle" IS NOT a possible delete effect (PossClob).
		//We have learned that "have_bindle" IS NOT a delete effect.
		//We must encode this new knowledge in the BDD.
		//The risk associated with this knowledge piece is:
		Fault risk2 = Fault.getRiskFromIndex(Fault.POSSCLOB, currAct.getName(), "have_bindle");
		//Prove we got the risk:
		System.out.println(risk2.toString());
		//We insert this knowledge into the BDD
		util.learnedIntoBDD(risk2, false);
		//Let's query the BDD to see what it says about this risk.
		System.out.println("* " + util.bdd.and(util.riskToBDD.get(risk2), util.bddRef));//0
		System.out.println("* " + util.bdd.and(util.bdd.not(util.riskToBDD.get(risk2)), util.bddRef));//162
		System.out.println();
		
		//Let's get an action to set up up a query about a risk that will not be loaded into the BDD
		currAct 	= util.getActionWithName(problem, "move_0_0_0_1");
		util.printIncompleteActionInstance(currAct);
		//Let's setup up a query about a risk that is not in the BDD
		Fault risk3 = Fault.getRiskFromIndex(Fault.POSSCLOB, currAct.getName(), "have_bindle");
		//Let's query the BDD to see what it says about this risk.
		System.out.println("* " + util.bdd.and(util.riskToBDD.get(risk3), util.bddRef));//164
		System.out.println("* " + util.bdd.and(util.bdd.not(util.riskToBDD.get(risk3)), util.bddRef));//166
		System.out.println();
		
		//Seems like 0 is the only value worth seeking.
		//Now, how to encode possPre combinations?
		//Then, how to update the action model:
		//	Should remove the learned props from the BDD - though we could just leave them there
	}
	
	private ActionInstance getActionWithName(Problem problem, String name)
	{
		for(ActionInstance act : problem.getActions())
			if(act.getName().equals(name))
				return act;
		return null;
	}
	
	//For single props learned only
	void learnedIntoBDD(Fault risk, boolean isTrue)
	{
		Integer reference = riskToBDD.get(risk);
		
		if(isTrue)
		{
			Integer temp = bdd.ref(bdd.and(bddRef, reference));
			bdd.deref(bddRef);
			bddRef = temp;
		}
		else
		{
			Integer temp = bdd.ref(bdd.and(bddRef, bdd.not(reference)));
			bdd.deref(bddRef);
			bddRef = temp;
		}
	}
	
	void printIncompleteActionInstance(ActionInstance act)
	{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			System.out.println(a.toString());
			System.out.println("\t  PRE: " + a.getPreconditions());
			System.out.println("\t  ADD: " + a.getAddEffects());
			System.out.println("\t  DEL: " + a.getDeleteEffects());
			System.out.println("\tP'PRE: " + a.getPossiblePreconditions());
			System.out.println("\tP'ADD: " + a.getPossibleAddEffects());
			System.out.println("\tP'DEL: " + a.getPossibleDeleteEffects());
			System.out.println();
	}
	
	void printIncompleteActionInstances(Problem problem)
	{
		System.out.println("********************************************************************************");
		System.out.println("ACTIONS for given problem/domain.\n");
		
		for(ActionInstance act : problem.getActions())
		{
			printIncompleteActionInstance(act);
		}
		
			System.out.println("********************************************************************************\n");
	}
	
	//PrecOpen = possible precondition, PossClob = possible delete effect, UnlistedEffect = possible add effect
	void printRisks(List<Fault> risks)
	{
		System.out.println("********************************************************************************");
		System.out.println("RISKS for given problem/domain.\n");
		
		for(Fault r : risks)
			System.out.println(r.toString());
		
		System.out.println("\n********************************************************************************\n");
	}
	
	void createRiskMaps(List<Fault> risks)
	{
		for (Fault risk : risks)
		{
			int temp = bdd.createVar();
			riskToBDD.put(risk, temp);
			bddToRisk.put(temp, risk);
		}
		
		bdd.printSet(bddRef);
	}
	
	private List<Fault> getAllRisks(Problem problem) 
	{
		List<Fault> risks = new ArrayList<Fault>();

		for (ActionInstance a : problem.getActions()) 
		{
			IncompleteActionInstance action = (IncompleteActionInstance) a;

			// Poss-prec
			for (Proposition possprec : action.getPossiblePreconditions())
				risks.add(Fault.getRiskFromIndex(Fault.PRECOPEN, action.getName(), possprec.getName()));

			// Poss-del
			for (Proposition possdel : action.getPossibleDeleteEffects())
				risks.add(Fault.getRiskFromIndex(Fault.POSSCLOB, action.getName(), possdel.getName()));

			// Poss-add
			for (Proposition possadd : action.getPossibleAddEffects())
				risks.add(Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, action.getName(), possadd.getName()));
		}

		return risks;
	}
	
	public Problem buildProblem(String domainString, String problemString)
	{
		String pathToDomains = "testfiles/incomplete/hobonav/";
		File domainFile = new File(pathToDomains + domainString);
		File problemFile = new File(pathToDomains + problemString);
		
		Domain domain = null;
		Problem problem = null;
		try{
			ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFile);
			domain = domBuilder.buildDomain();
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain,
					problemFile);
			problem = probBuilder.buildProblem();
		}catch (Exception e) {System.err.println("Error reading PDDL file(s) in buildProblem: "); e.printStackTrace();}
		
		return problem;
	}

}
