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
	Planner planners;
	DomainExpert expert;
	Agent agent;
	
	static int numSuccesses;
	String resultString;
		
	Simulation_PassiveLearningAgent(String[] args, int simSeed)
	{	
		if (args.length != 2) { System.out.println(" " + args.length); usage(args); System.exit(1); }
		
		planners = new Planner(args[0], args[1]);
		expert = new DomainExpert(args[0], args[1], simSeed);

		resultString = "";
	}
	
	public boolean isSolvableDomain()
	{	
		planners.setProblem(expert.getProblem());
		
		if(runPlannerThread("pode1") == null) return false;
		
		//if(planners.getPlan("amir") == null) return false;
		//if(planners.getPlan("pode1") == null) return false;
		//if(planners.getPlan("jdd") == null) return false;
		
		numSuccesses++;
		
		return true;
	}
	
	public static void main(String[] args)
	{	
		numSuccesses = 0;
		
		for(int simSeed = 0; (simSeed < 10000) && (numSuccesses < 10); simSeed++)
		{
			try
			{
				Simulation_PassiveLearningAgent sim = new Simulation_PassiveLearningAgent(args, simSeed);
				if(sim.isSolvableDomain())
				{
					sim.resultString += args[0] + "_" + simSeed + " " + sim.planners.getInitialModelCount() + " RG";
			
					sim.runSimPassiveLearning_RG("amir",  args, "RG");
					sim.runSimPassiveLearning_RG("pode1", args, "RG");
					sim.runSimPassiveLearning_RG("jdd", args, "RG");
					
					sim.resultString += " CL";
					
					sim.runSimPassiveLearning_RG("amir",  args, "CL");
					sim.runSimPassiveLearning_RG("pode1", args, "CL");
					sim.runSimPassiveLearning_RG("jdd", args, "CL");
					
					System.out.println(sim.resultString);
				}
			}catch(Exception e){System.out.println("\nSHOULD NEVER HAVE HAPPENED: "); e.printStackTrace();}
		}
	}
	
	boolean timeout;
	private void runSimPassiveLearning_RG(String plannerType, String [] args, String agentType)
	{	
		boolean endlessLoop = false;
		        timeout 	= false;
		
		if(agentType.equals("RG"))
			agent = new Agent_RG(args[0], args[1]);
		else if(agentType.equals("CL"))
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
				
				//plan = planners.getPlan(plannerType);//Note that the problem has been updated within agent
				plan = runPlannerThread(plannerType);
				
				if(timeout) break;
				
				//Planner.printPlanShort(plan);
				if(plan == null || plan.size() == 0)
					break;
				
				if(plan.get(0).equals(currAction))
				{
					endlessLoop = true;
					//System.out.print(" @");
					break;
				}
			}
			
			currState = nextState;	
		}
				
		agent.stopStopwatch();

		if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{	
			resultString += " " + plannerType + " " + planners.getNumTimesPlannerCalled();
			resultString += " " + agent.getNumActionsTaken() + " " + agent.getNumFailedActions();
			resultString += " " + agent.getTimeToSolve() + " " + planners.getFinalModelCount();
		}
		else
		{			
			if((agent.getNumActionsTaken() == 1000) || (planners.getNumTimesPlannerCalled() == 500))
				resultString += " " + plannerType + " " + planners.getNumTimesPlannerCalled() + " " + agent.getNumActionsTaken() + " X X X";
			else if(endlessLoop)
				resultString += " " + plannerType + " L L L L L";
			else if(timeout)
				resultString += " " + plannerType + " T T T T T";
			else
				resultString += " " + plannerType + " ? ? ? ? ?";
		}
	}
		
	private List<ActionInstance> runPlannerThread(String plannerType)
	{
		int timeLimit = 10000; //The time limit for each run given in milliseconds

		ExecThread execThread = new ExecThread(Thread.currentThread(), planners, plannerType);
		
		long start = System.currentTimeMillis();
		long now = System.currentTimeMillis();
		execThread.start();
		while (now - start < timeLimit)
		{
			try { Thread.sleep(500); } catch (Exception e){}
			
			now = System.currentTimeMillis();
			
			if(execThread.done) 
				break;
		}
		
		execThread.stop();	
		if(now - start >= timeLimit)
			timeout = true;

		return execThread.plan;
	}
	
	class ExecThread extends Thread 
	{
		Thread callingThread;
		public boolean done = false;
		
		Planner planner;
		String plannerType;
		List<ActionInstance> plan = null;
		
		ExecThread(Thread CallingThread, Planner p, String pType)
		{
			planner = p;
			plannerType = pType;
			callingThread = CallingThread;
			done = false;
		}
		
		public void run()
		{			
			try { plan = planner.getPlan(plannerType); }
			catch (java.lang.OutOfMemoryError e){}
			catch (Exception e){}
			
			callingThread.interrupt();
			done = true;
		}
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args[0] + " " + args[1]);
		System.err.println("Simulation_PassiveLearningAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file>");
	}
}
