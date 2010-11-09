package edu.usu.cs.ka.oldsystems.nov_8_10.simulator;

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
		
		Planner planners = new Planner(args[0], args[1]);
		
		Agent agent = new Agent(args[0], args[1]);
		DomainExpert expert = new DomainExpert(args[0], args[1], args[2]);
		
		//Let's run those planner rawPerformance Tests first
		List<ActionInstance> plan;
		
		//Sets planner's actions to complete version
		planners.setProblem(expert.getProblem());
		
		//Amir - complete v.
		plan = planners.runAmirPlanner();
		
		if(plan == null) return; 
		else System.out.print(args[0] + "_" + args[2] + " Complete Amir " + plan.size() + " " + planners.getTimeToSolve() + " ");
		
		trial.numSuccesses++;
		
		//Bryce - complete v.
		plan = planners.runBrycePlanner();
		
		if(plan == null) System.out.print("Bryce ? ? ");
		else System.out.print("Bryce " + plan.size() + " " + planners.getTimeToSolve() + " ");
						
		//Sets planner's actions to incomplete version
		planners.setProblem(agent.getProblem());
		
		//Amir - incomplete v.
		plan = planners.runAmirPlanner();
		if(plan == null) System.out.print("Incomplete Amir ? ? ");
		else System.out.print("Incomplete Amir " + plan.size() + " " + planners.getTimeToSolve() + " ");
		
		//Bryce - incomplete v.
		plan = planners.runBrycePlanner();
		if(plan == null) System.out.println("Bryce ? ?");
		else System.out.println("Bryce " + plan.size() + " " + planners.getTimeToSolve());
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
