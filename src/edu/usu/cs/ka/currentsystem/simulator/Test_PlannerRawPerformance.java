package edu.usu.cs.ka.currentsystem.simulator;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Test_PlannerRawPerformance 
{	
	public static int numSuccesses = 0;
	
	Test_PlannerRawPerformance(String [] args)
	{		
		if (args.length !=3) { usage(args); System.exit(1); } 
	}
	
	public static void main(String [] args)
	{	
		Test_PlannerRawPerformance trial = new Test_PlannerRawPerformance(args);

		List<ActionInstance> plan;
				
		//COMPLETE VERSION OF ACTIONS//////////////////////////////////////////////////////////////////////////
		Planner planners = new Planner(args[0], args[1]);
		DomainExpert expert = new DomainExpert(args[0], args[1], args[2]);

		//Sets planner's actions to complete version
		planners.setProblem(expert.getProblem());
		
		//AMIR
		plan = planners.getPlan("amir");	
		if(plan == null) return;
		else System.out.print(args[0] + "_" + args[2] + " COMPLETE amir " + plan.size() + " " + planners.getTimeToSolve());
		
		trial.numSuccesses++;
		
		//PODE1
		plan = planners.getPlan("pode1");			
		if(plan == null) System.out.print(" pode1 ? ?");
		else System.out.print(" pode1 " + plan.size() + " " + planners.getTimeToSolve());
		
		//JDD
		plan = planners.getPlan("jdd");			
		if(plan == null) System.out.print(" jdd ? ?");
		else System.out.print(" jdd " + plan.size() + " " + planners.getTimeToSolve());

		//INCOMPLETE VERSION OF ACTIONS//////////////////////////////////////////////////////////////////////////
		planners = new Planner(args[0], args[1]);
	
		//AMIR
		plan = planners.getPlan("amir");
		if(plan == null) System.out.print(" INCOMPLETE amir ? ?");
		else System.out.print(" INCOMPLETE amir " + plan.size() + " " + planners.getTimeToSolve());
		
		//BRYCE
		plan = planners.getPlan("pode1");
		if(plan == null) System.out.print(" pode1 ? ?");
		else System.out.print(" pode1 " + plan.size() + " " + planners.getTimeToSolve());
		
		//JDD
		plan = planners.getPlan("jdd");			
		if(plan == null) System.out.println(" jdd ? ?");
		else System.out.println(" jdd " + plan.size() + " " + planners.getTimeToSolve());
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
