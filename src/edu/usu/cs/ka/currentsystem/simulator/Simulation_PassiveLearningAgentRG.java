package edu.usu.cs.ka.currentsystem.simulator;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Simulation_PassiveLearningAgentRG 
{	
	public static int numSuccesses = 0;
	
	Planner planners;
	DomainExpert expert;
	Agent agent;
		
	Simulation_PassiveLearningAgentRG(String [] args)
	{		
		if (args.length !=3) { usage(args); System.exit(1); } 
		
		planners = new Planner(args[0], args[1]);
		expert = new DomainExpert(args[0], args[1], args[2]);
		
		planners.setProblem(expert.getProblem());
		if(planners.runAmirPlanner() == null) return; //Not a solvable seed for given domain
		
		numSuccesses++;
		System.out.println(args[0] + "_" + args[2] + " ");
		
		//System.out.print("\n*EXPERTS ACTIONS*");
		//Actions_Utility.printListOfActions(expert.getActions());
		//System.out.println("*EXPERTS ACTIONS END*");
	}
	
	public static void main(String [] args)
	{	
		Simulation_PassiveLearningAgentRG sim = new Simulation_PassiveLearningAgentRG(args);
		sim.runSimPassiveLearning("Amir",  args);
		sim.runSimPassiveLearning("Bryce", args);
	}
	
	private List<ActionInstance> getPlan(String plannerType)
	{
		if(plannerType.equals("Bryce")) return planners.runBrycePlanner();
		if(plannerType.equals("Amir"))  return planners.runAmirPlanner();
		
		return null;
	}
	
	private void runSimPassiveLearning(String plannerType, String [] args)
	{
		agent = new Agent(args[0], args[1]);
		planners.setProblem(agent.getProblem()); //Set planner problem to agent's incomplete version
		//The planner's problem's actionList should now auto-update from Agent to Planner by reference?
		
		//System.out.print("\n*AGENTS ACTIONS (TO START)*");
		//Actions_Utility.printListOfActions(agent.getActions());
		//System.out.println("*AGENTS ACTIONS (TO START) END*\n");
		
		Set<Proposition> prevState, currState;
		IncompleteActionInstance currAction;
		List<ActionInstance> plan;
		
		agent.startStopwatch();
		
		prevState = agent.getProblem().getInitialState();
		System.out.print("\nINITIAL STATE: ");
		for (Proposition prop : prevState)
			System.out.print(prop + " ");
		System.out.println("\n");
		
		plan = getPlan(plannerType); //Should never be null to start
		System.out.println("PLAN:");
		Planner.printPlanShort(plan);
		System.out.println("PLAN END");
		
		while(!prevState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{
			currAction = (IncompleteActionInstance) plan.remove(0);
			currState = expert.updateState(prevState, currAction);			
			agent.learnAboutActionTaken(currAction, prevState, currState);
			
			System.out.print("CURR STATE: ");
			for (Proposition prop : prevState)
				System.out.print(prop + " ");
			System.out.println();
			
			if(agent.isActionFailure(currAction, prevState, currState) || plan.size() == 0)
			{
				System.out.println();
				agent.updateActions();
				
				//System.out.print("*AGENTS ACTIONS*");
				//Actions_Utility.printListOfActions(agent.getActions());
				//System.out.println("*AGENTS ACTIONS END*\n");
				
				agent.getProblem().setInitialState(currState);
				plan = getPlan(plannerType);
												
				if(plan == null) 
				{
					System.out.println("NO PLAN FOUND");
					return;
				}
				
				if(plan.size() != 0) 
				{
					System.out.println("PLAN");
					Planner.printPlanShort(plan);
					System.out.println("PLAN END\n");
				}
				
				System.out.println("**************************");
				System.out.print("PRESS ENTER TO CONTINUE...");
			    Scanner sc = new Scanner(System.in);
			    while(!sc.hasNextLine());
			    System.out.println("**************************");
			}
			
			prevState = currState;
		}
				
		agent.stopStopwatch();
		
		if(prevState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{
			System.out.println("\nSUCCESS!:");
			System.out.println(" currState: " + prevState);
			System.out.println(" goal pres: " + agent.getProblem().getGoalAction().getPreconditions() + "\n");
		}
		
		System.out.println(plannerType + " " + agent.getTimeToSolve());
		
		System.out.println("\n**************************");
		System.out.print("PRESS ENTER TO CONTINUE...");
	    Scanner sc = new Scanner(System.in);
	    while(!sc.hasNextLine());
	    System.out.println("**************************");
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
