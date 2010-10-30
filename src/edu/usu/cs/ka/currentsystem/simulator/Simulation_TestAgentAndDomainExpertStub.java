package edu.usu.cs.ka.currentsystem.simulator;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Simulation_TestAgentAndDomainExpertStub 
{	
	public static int numSuccesses = 0;
	
	Simulation_TestAgentAndDomainExpertStub(String [] args)
	{		
		if (args.length !=3)
			usage(args); System.exit(1); 
	}
	
	public static void main(String [] args)
	{
		Simulation_TestAgentAndDomainExpertStub trial = new Simulation_TestAgentAndDomainExpertStub(args);
		Agent_RG agent = new Agent_RG(args[0], args[1]);
		DomainExpert expert = new DomainExpert(args[0], args[1], args[2]);		
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
