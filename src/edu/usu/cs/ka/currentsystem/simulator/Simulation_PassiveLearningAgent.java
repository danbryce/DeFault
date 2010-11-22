package edu.usu.cs.ka.currentsystem.simulator;

import java.util.*;
import java.math.BigInteger;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;


public class Simulation_PassiveLearningAgent
{	
	public static int numSuccesses = 0;
	
	Planner planners;
	DomainExpert expert;
	Agent agent;
		
	Simulation_PassiveLearningAgent(String[] args)
	{	
		if (args.length !=4) { usage(args); System.exit(1); }
		
		planners = new Planner(args[0], args[1]);
		expert = new DomainExpert(args[0], args[1], args[2]);
	
		planners.setProblem(expert.getProblem());
	}
	
	public boolean isSolvableDomain()
	{	
		planners.setProblem(expert.getProblem());
		//if(planners.getPlan("amir") == null) return false;
		if(planners.getPlan("pode1") == null) return false;
		//if(planners.getPlan("jdd") == null) return false;
		
		numSuccesses++;
		
		Proposition.clearAll();
		
		return true;
	}
	
	public static void main(String[] args)
	{	
		Simulation_PassiveLearningAgent sim = new Simulation_PassiveLearningAgent(args);
		
		if(!sim.isSolvableDomain()) return;
		
		System.out.print(args[0] + "_" + args[2] + " " + sim.planners.getInitialModelCount());

		sim.runSimPassiveLearning_RG("amir",  args);
		sim.runSimPassiveLearning_RG("pode1", args);
		sim.runSimPassiveLearning_RG("jdd", args);
		
		System.out.println();
	}
		
	private void runSimPassiveLearning_RG(String plannerType, String [] args)
	{	
		boolean endlessLoop = false;
		
		if(args[3].equals("RG"))
			agent = new Agent_RG(args[0], args[1]);
		else if(args[3].equals("CL"))
			agent = new Agent_CL(args[0], args[1]);
		
		planners.setProblem(agent.getProblem()); //Sets planner's problem to agent's incomplete version.
		//The planner's problem's actionList auto-updates from Agent to Planner by this reference.
		planners.resetNumTimesPlannerCalledCount();
		
		Set<Proposition> currState, nextState;
		IncompleteActionInstance currAction;
		List<ActionInstance> plan;

		agent.startStopwatch();
		
		currState = nextState = agent.getProblem().getInitialState();
		plan = planners.getPlan(plannerType); //Should never be null to start
		while((agent.getNumActionsTaken() < 1000) && (planners.getNumTimesPlannerCalled() < 100) && (plan.size() != 0))
		{			
			currAction = (IncompleteActionInstance) plan.remove(0);	
			if(agent.isActionApplicable(currAction, currState, plan))
			{		
				nextState = expert.applyAction(currState, currAction);
				agent.learnAboutActionTaken(currAction, currState, nextState);
				if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
					break;
			}
			
			if(agent.isActionFailure(currAction, currState, nextState) || plan.size() == 0 || !agent.isActionApplicable(currAction, currState, plan))
			{	
				if(agent.isActionFailure(currAction, currState, nextState) || agent.existsActionFailureInPastEntailFailVar()) 
					agent.incrementFailedActionsCount();
				
				agent.getProblem().setInitialState(nextState);
				agent.removeFailFromKBForNewPlan();
				plan = planners.getPlan(plannerType);//Note that the problem has been updated within agent								
				//Planner.printPlanShort(plan);
				if(plan == null || plan.size() == 0)
					break;
				
				if(plan.get(0).equals(currAction))
				{
					endlessLoop = true;
					System.out.print(" @");
					break;
				}
			}
	
			//System.out.println("END LOOP");
			currState = nextState;	
		}
				
		agent.stopStopwatch();

		if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{	
			System.out.print(" " + plannerType + " " + planners.getNumTimesPlannerCalled());
			System.out.print(" " + agent.getNumActionsTaken() + " " + agent.getNumFailedActions());
			System.out.print(" " + agent.getTimeToSolve() + " " + planners.getFinalModelCount());
		}
		else
		{			
			if((agent.getNumActionsTaken() == 1000) || (planners.getNumTimesPlannerCalled() == 500))
				System.out.print(" " + plannerType + " " + planners.getNumTimesPlannerCalled() + " " + agent.getNumActionsTaken() + " X X X");
			else if(endlessLoop)
				System.out.print(" " + plannerType + " L L L L L");
			else
				System.out.print(" " + plannerType + " ? ? ? ? ?");
		}
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_PassiveLearningAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed> [3]<agentType>");
	}
}
