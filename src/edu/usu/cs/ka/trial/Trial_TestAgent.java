package edu.usu.cs.ka.trial;

import edu.usu.cs.ka.agentsystem.mainsystem.*;
import edu.usu.cs.ka.agentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Trial_TestAgent 
{
	Domain 	domain_incomplete;
	Problem problem;
	
	public static int numSuccesses = 0;
	
	Trial_TestAgent(String [] args)
	{		
		if (args.length !=3){ usage(args); System.exit(1); }
		
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(args[0], args[1]);	
		domain_incomplete = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
		
		//Actions_Utility.printListOfActions(problem.getActions());	
	}
	
	public static void main(String [] args)
	{
		Trial_TestAgent trial = new Trial_TestAgent(args);
		Agent agent = new Agent(trial.domain_incomplete, trial.problem);
		DomainExpert expert = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));		
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Trial_TestAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
	
	

}
