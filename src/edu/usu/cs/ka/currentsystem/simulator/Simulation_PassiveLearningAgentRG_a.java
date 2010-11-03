package edu.usu.cs.ka.currentsystem.simulator;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Simulation_PassiveLearningAgentRG_a 
{	
	public static int numSuccesses = 0;
	
	Planner planners;
	DomainExpert expert;
	Agent_a agent;
		
	Simulation_PassiveLearningAgentRG_a(String [] args)
	{		
		if (args.length !=3) { usage(args); System.exit(1); } 
		
		planners = new Planner(args[0], args[1]);
		expert = new DomainExpert(args[0], args[1], args[2]);
		
		planners.setProblem(expert.getProblem());
		if(planners.runAmirPlanner() == null) return; //Not a solvable seed for given domain
		
		planners.resetPlannersCalledCount();
		numSuccesses++;
		
		System.out.println(args[0] + "_" + args[2] + "\n");
		
		System.out.print("*EXPERTS ACTIONS*");
		Actions_Utility.printListOfActions(expert.getActions());
		System.out.println("*EXPERTS ACTIONS END*\n");
	}
	
	public static void main(String [] args)
	{	
		Simulation_PassiveLearningAgentRG_a sim = new Simulation_PassiveLearningAgentRG_a(args);
		
		System.out.println("RUNNING AGENT_PL_RG_a w/ AMIR PLANNER...\n");
		sim.runSimPassiveLearning("Amir",  args);
		
		System.out.println("**************************");
		System.out.print("PRESS ENTER TO CONTINUE...");
	    Scanner sc = new Scanner(System.in); while(!sc.hasNextLine());
	    System.out.println("**************************\n");
		
	    System.out.println("RUNNING AGENT_PL_RG_a w/ BRYCE PLANNER...\n");
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
		agent = new Agent_a(args[0], args[1]);
		planners.setProblem(agent.getProblem()); //Set planner problem to agent's incomplete version
		//The planner's problem's actionList auto-updates from Agent to Planner by this reference.
		
		System.out.print("*AGENTS ACTIONS (TO START)*");
		Actions_Utility.printListOfActions(agent.getActions());
		System.out.println("*AGENTS ACTIONS (TO START) END*\n");
		
		Set<Proposition> currState, nextState;
		IncompleteActionInstance currAction;
		List<ActionInstance> plan;
		
		System.out.println("GOAL STATE INCLUDES: " + agent.getProblem().getGoalAction().getPreconditions() + "\n");

		agent.startStopwatch();
		
		currState = nextState = agent.getProblem().getInitialState();
		System.out.print("INITIAL STATE: ");
		for (Proposition prop : currState) System.out.print(prop + " ");
		System.out.println("\n");
		
		plan = getPlan(plannerType); //Should never be null to start
		System.out.println("PLAN:"); Planner.printPlanShort(plan); System.out.println("PLAN END\n");
		
		while(agent.getNumActionsTaken() < 1000) 
		{			
			currAction = (IncompleteActionInstance) plan.remove(0);
			
			System.out.println("ATTEMPTING ACTION: " + currAction.getName() + "\n");
			
			if(agent.areActionPreConditionsSat(currAction, currState))
			{
				System.out.println("ACTION APPLIED.\n");
				
				nextState = expert.applyAction(currState, currAction);
				
				System.out.print("NEW STATE: ");
				for (Proposition prop : nextState) System.out.print(prop + " ");
				System.out.println("\n");
				
				agent.learnAboutActionTaken(currAction, currState, nextState);
							
				if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
					break;
			}
			
			if(agent.isActionFailure(currAction, currState, nextState) || plan.size() == 0 || 
				!agent.areActionPreConditionsSat(currAction, currState))
			{
				System.out.println("REPLANNING...\n");
				agent.updateActions();
				
				System.out.print("*AGENTS ACTIONS*");
				Actions_Utility.printListOfActions(agent.getActions());
				System.out.println("*AGENTS ACTIONS END*\n");
				
				agent.getProblem().setInitialState(nextState);
				plan = getPlan(plannerType);
												
				if(plan == null) 
				{
					System.out.println("NO PLAN FOUND\n");
					break;
				}
				
				if(plan.size() != 0) 
				{
					System.out.println("PLAN:"); Planner.printPlanShort(plan); System.out.println("PLAN END\n");
				}
				
				System.out.println("**************************");
				System.out.print("PRESS ENTER TO CONTINUE...");
			    Scanner sc = new Scanner(System.in); while(!sc.hasNextLine());
			    System.out.println("**************************\n");
			    
				System.out.print("CURRENT STATE: ");
				for (Proposition prop : nextState) System.out.print(prop + " ");
				System.out.println("\n");
			}
			
			currState = nextState;		
		}
				
		agent.stopStopwatch();
		
		System.out.println("****************************************************************************");
		if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{
			System.out.println("SIM SUCCESSFUL!:");
			System.out.println(" currState: " + nextState);
			System.out.println(" goal pres: " + agent.getProblem().getGoalAction().getPreconditions());
			
			System.out.print(" " + plannerType + " ");
			if(plannerType.equals("Amir")) System.out.print(planners.getNumTimesAmirPlannerCalled());
			if(plannerType.equals("Bryce")) System.out.print(planners.getNumTimesBrycePlannerCalled());
			System.out.println(" " + agent.getNumActionsTaken() + " " + agent.getTimeToSolve());
		}
		else
		{
			System.out.println("SIM FAILED:");
			System.out.println(" currState: " + nextState);
			System.out.println(" goal pres: " + agent.getProblem().getGoalAction().getPreconditions());
			System.out.println(" " + plannerType + " ? ? ?");
		}
		System.out.println("****************************************************************************\n");
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
