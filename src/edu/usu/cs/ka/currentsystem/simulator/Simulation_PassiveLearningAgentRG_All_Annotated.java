package edu.usu.cs.ka.currentsystem.simulator;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Simulation_PassiveLearningAgentRG_All_Annotated 
{	
	public static int numSuccesses = 0;
	
	Planner planners;
	DomainExpert expert;
	Agent_All_Annotated agent;
		
	Simulation_PassiveLearningAgentRG_All_Annotated(String [] args)
	{		
		if (args.length !=3) { usage(args); System.exit(1); } 
		
		planners = new Planner(args[0], args[1]);
		expert = new DomainExpert(args[0], args[1], args[2]);
		
		planners.setProblem(expert.getProblem());
		if(planners.getPlan("amir") == null) return; //Not a solvable seed for given domain
		
		numSuccesses++;
		
		System.out.println(args[0] + "_" + args[2] + "\n");
		
		System.out.print("*EXPERTS ACTIONS*");
		Actions_Utility.printListOfActions(expert.getActions());
		System.out.println("*EXPERTS ACTIONS END*\n");
	}
	
	public static void main(String [] args)
	{	
		Simulation_PassiveLearningAgentRG_All_Annotated sim = new Simulation_PassiveLearningAgentRG_All_Annotated(args);
		
		System.out.println("RUNNING AGENT_PL_RG_a w/ AMIR PLANNER...\n");
		sim.runSimPassiveLearning("Amir",  args, true, false);
		
		System.out.println("**************************");
		System.out.print("PRESS ENTER TO CONTINUE...");
	    Scanner sc = new Scanner(System.in); while(!sc.hasNextLine());
	    System.out.println("**************************\n");
		
	    System.out.println("RUNNING AGENT_PL_RG_a w/ BRYCE PLANNER...\n");
		sim.runSimPassiveLearning("Bryce", args, true, false);
	}
	
	private void runSimPassiveLearning(String plannerType, String [] args, boolean isForgiving, boolean isAssumptive)
	{
		agent = new Agent_All_Annotated(args[0], args[1]);
		planners.setProblem(agent.getProblem()); //Set planner problem to agent's incomplete version
		//The planner's problem's actionList auto-updates from Agent to Planner by this reference.
		planners.resetNumTimesPlannerCalledCount();
		
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
		
		plan = planners.getPlan(plannerType); //Should never be null to start
		System.out.println("PLAN:"); Planner.printPlanShort(plan); System.out.println("PLAN END\n");
		
		while((agent.getNumActionsTaken() < 1000) && (planners.getNumTimesPlannerCalled() < 50))
		{			
			currAction = (IncompleteActionInstance) plan.remove(0);
			
			System.out.println("ATTEMPTING ACTION: " + currAction.getName() + "\n");
			
			if(agent.isActionApplicable(currAction, currState, plan))
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
				!agent.isActionApplicable(currAction, currState, plan))
			{
				if(agent.isActionFailure(currAction, currState, nextState) && !isForgiving)
				{
					System.out.println("Action failed. No forgiveness. Done.\n");
					break;
				}
				
				System.out.println("REPLANNING...\n");
				
				System.out.print("*AGENTS ACTIONS*");
				Actions_Utility.printListOfActions(agent.getActions());
				System.out.println("*AGENTS ACTIONS END*\n");
				
				plan = planners.getPlan(plannerType);//Note that the problem has been updated within agent								
				if(plan == null) 
				{
					System.out.println("NO PLAN FOUND\n");
					break;
				}
				
				if(plan.size() != 0)
				{
					System.out.println("PLAN:"); Planner.printPlanShort(plan); System.out.println("PLAN END\n");
					
					//An ASSUMPTIVE Agent will here check if the plan's first action is == last action tried.
					//If so, he will learn that this action's unsat possPre's to be real pre's.
					if(plan.get(0).equals(currAction) && isAssumptive)
					{
						System.out.println("ASSUMPTION...\n");
						Actions_Utility.printIncompleteVersionOfActionInstance(currAction);
						
						agent.learnUnsatPossPreconditionsAndUpdateAction(currAction);
						
						System.out.println("REPLANNING...\n");
						
						System.out.print("*AGENTS ACTIONS*");
						Actions_Utility.printListOfActions(agent.getActions());
						System.out.println("*AGENTS ACTIONS END*\n");
						
						plan = planners.getPlan(plannerType);//Note that the problem has been updated within agent
														
						if(plan == null) 
						{
							System.out.println("NO PLAN FOUND\n");
							break;
						}
						
						System.out.println("END ASSUMPTION MADE...\n");
						
					}
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
			
			System.out.print(" " + plannerType + " " + planners.getNumTimesPlannerCalled());
			System.out.println(" " + agent.getNumActionsTaken() + " " + agent.getTimeToSolve());
		}
		else
		{
			System.out.println("SIM FAILED:");
			System.out.println(" currState: " + nextState);
			System.out.println(" goal pres: " + agent.getProblem().getGoalAction().getPreconditions());
			
			if((agent.getNumActionsTaken() == 1000) || (planners.getNumTimesPlannerCalled()== 50))
				System.out.println(" " + plannerType + " X X X");
			else
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
