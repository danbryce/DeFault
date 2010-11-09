package edu.usu.cs.ka.oldsystems.nov_8_10.simulator;

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
		
		planners.resetPlannersCalledCount();
		numSuccesses++;
		
		System.out.println(args[0] + "_" + args[2] + "\n");
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
		//The planner's problem's actionList auto-updates from Agent to Planner by this reference.
		
		Set<Proposition> currState, nextState;
		IncompleteActionInstance currAction;
		List<ActionInstance> plan;

		agent.startStopwatch();
		
		currState = nextState = agent.getProblem().getInitialState();
		plan = getPlan(plannerType); //Should never be null to start
		
		while(agent.getNumActionsTaken() < 1000)
		{			
			currAction = (IncompleteActionInstance) plan.remove(0);
			if(agent.areActionPreConditionsSat(currAction, currState))
			{			
				nextState = expert.applyAction(currState, currAction);
				agent.learnAboutActionTaken(currAction, currState, nextState);
							
				if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
					break;
			}
			
			if(agent.isActionFailure(currAction, currState, nextState) || plan.size() == 0 || 
				!agent.areActionPreConditionsSat(currAction, currState))
			{
				agent.updateActions();
				
				agent.getProblem().setInitialState(nextState);
				plan = getPlan(plannerType);
												
				if(plan == null) 
					break;
			}
			
			currState = nextState;		
		}
				
		agent.stopStopwatch();
		
		if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{
			System.out.print(" " + plannerType + " ");
			if(plannerType.equals("Amir")) System.out.print(planners.getNumTimesAmirPlannerCalled());
			if(plannerType.equals("Bryce")) System.out.print(planners.getNumTimesBrycePlannerCalled());
			System.out.println(" " + agent.getNumActionsTaken() + " " + agent.getTimeToSolve());
		}
		else
			System.out.println(" " + plannerType + " ? ? ?");
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
