package edu.usu.cs.incomplete.ka.trial;

import java.util.*;

import edu.usu.cs.ka.agentsystem.mainsystem.*;
import edu.usu.cs.ka.agentsystem.utilities.*;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;


//For solvableTest, length, pode1
public class Trial_PlanningAndExplorationLearningAgentSim 
{
	Domain incompleteDomain_agent;
	Problem problem;
	
	Integer seed;
		
	Trial_PlanningAndExplorationLearningAgentSim(String[] args)
	{				
		if (args.length !=4)
			usage(args);
		
		//[0]<domain-pddl-file>
		//[1]<problem-pddl-file>
		//[2]<seed(int)> - for seed of sim version of actions - [0-9]
		//[3]<planner ["solvableCheck" | "random" | "length" | "pode1"]> 
		
		seed = Integer.valueOf(args[2]);
		
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(args[0], args[1]);	
		
		incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
				
		//Check Problems initial state and goal action
		DomainAndProblemMaker_Utility.printProblemInitialStateAndGoalAction(problem);
	}
		
	public static void main (String[] args)
	{
		Trial_PlanningAndExplorationLearningAgentSim env = new Trial_PlanningAndExplorationLearningAgentSim(args);
		
		//Planner-based trial on uncertain actions involving exploration learning
		if(args[3].equalsIgnoreCase("pode1") || args[3].equalsIgnoreCase("length"))
			env.planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem(args[3]);
		//Uses sim's complete version of actions, determined by a seed given
		else if(args[3].equalsIgnoreCase("solvableCheck"))
			env.generatePlanForSimVersionOfActions_noUncertainty(args[3]);
		else
			System.out.println("wrong: " + args[3]);
	}
		
	public void generatePlanForSimVersionOfActions_noUncertainty(String plannerType)
	{
		Agent agent = new Agent(incompleteDomain_agent, problem);
		DomainExpert sim = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), seed);
		
		//System.out.println("HERE");
		//IncompleteToComplete.printDomain(completeDomain_simulator);
		//sim.printIncompleteVersionOfActionInstances();
		
		problem.setActionInstances(sim.getActionInstances());
		
		agent.startStopwatch();
		
		//Init the planner and get plan
		List<ActionInstance> plan = initSolverGetPlan(plannerType);
		
		//for(ActionInstance a : plan)
		//{
		//	IncompleteActionInstance ia = (IncompleteActionInstance) a;
		//	Agent.printIncompleteVersionOfActionInstance(ia);
		//}
		
		agent.stopStopwatch();
		
		System.out.println("solvableCheck - #Actions: " + plan.size() + " Time: " + agent.getTimeToSolve());
	}
	
	public void planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem(String plannerType)
	{
		System.out.println("************************************************************************");
		System.out.println("BEGIN - SIM-AGENT INTERACTION\n");
		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		DomainExpert sim = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), seed);
		//Makes complete version of actions using a 

		Set<Proposition> currentState = problem.getInitialState();
		System.out.println("\n----------------------------------");
		System.out.println("INITIAL STATE:       " + currentState);
		System.out.println("GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		System.out.println("----------------------------------");
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//THE INTERACTION BETWEEN SIM/AGENT/PLANNER
		int loop = 1;
		agent.startStopwatch();
		
		//Init the planner and get plan
		List<ActionInstance> plan = initSolverGetPlan(plannerType);
		
		//Repeat until currentState contains goal state or no plan is found
		while(!currentState.containsAll(problem.getGoalAction().getPreconditions()))
		{
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("LOOP ITERATION #: " + (loop++));
			
			//Getting next action from plan - if plan has more actions.
			IncompleteActionInstance incompleteActionChosen = (IncompleteActionInstance) plan.remove(0);
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("ACTION SELECTED (BY PLANNER): ");
			Actions_Utility.printIncompleteActionInstance(incompleteActionChosen);
			System.out.println("----------------------------------------------------------------");
			
			//Sim updating state using sim's complete knowledge of action
			Set<Proposition> newState = sim.updateState(currentState, incompleteActionChosen);
			
			//Agent learning by exploration - doesn't matter if action succeeded or failed
			agent.explore_side.learnAboutActionTaken_Exploration(newState, currentState, incompleteActionChosen);
			currentState = newState;
			
			//After agent has learned, send new version of actions, new state, and call planner again
			Hashtable temp = agent.getIncompleteActionInstanceHT();
			List temp2 = Actions_Utility.getIncompleteActionInstancesAsActionInstances(temp);
			problem.setActionInstances(temp2);
			problem.setInitialState(currentState);
			plan = initSolverGetPlan(plannerType);
			
			//Misc details before next iteration
			System.out.println("\nPRESS ENTER TO CONTINUE...");
		    Scanner sc = new Scanner(System.in);
		       while(!sc.hasNextLine());
		    
		    System.out.println("----------------------------------------------------------------");
		    System.out.println("CURRENT STATE:       " + currentState);
		    System.out.println("GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		    System.out.println("----------------------------------------------------------------");
		    
		    System.out.println("\nEND LOOP ITERATION #: " + (loop++));
		    System.out.println("----------------------------------------------------------------\n");
		}
		agent.stopStopwatch();
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		//FINAL RESULTS
		System.out.println("\n----------------------------------");
		System.out.println("GOAL ACHIEVED:           " + problem.getGoalAction().getPreconditions());
		System.out.println("EXISTS IN CURRENT STATE: " + currentState.toString());
		System.out.println("----------------------------------");
		
		System.out.println("\nEND - SIM-AGENT INTERACTION");
		System.out.println("************************************************************************\n");
		
		System.out.println("************************************************************************");
		System.out.println("FINAL RESULTS\n");
		agent.printDeepResults();
		System.out.println("\nEND - FINAL RESULTS");
		System.out.println("************************************************************************\n");	
	}
	
	private List<ActionInstance> initSolverGetPlan(String plannerType)
	{
		Planner planner = new Planner(incompleteDomain_agent, problem);
		List<ActionInstance> plan = null;
		
		//Init appropriate planner (a CLA)

		if (plannerType.equalsIgnoreCase("length")) 
			plan = planner.runAmirPlanner();
		else if (plannerType.subSequence(0,4).toString().equalsIgnoreCase("pode")) 
			plan = planner.runBrycePlanner();
		else if (plannerType.equalsIgnoreCase("solvableCheck")) 
			plan = planner.runAmirPlanner();

		
		if(plan == null)
		{
			System.out.println("NO POSSIBLE PLAN FOUND");
			System.exit(1);
		}
		
		System.out.println("PLAN FOUND: ");
		//for(ActionInstance a : plan)
		//	System.out.println("\t" + a.getName());
			
		return plan;
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args);
		System.err.println("SimulatorAgentEnvironment usage:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file>");
		System.err.println("\t [2]<seed(int)> [3]<planner ([length | pode1 | solvableCheck)>");
		System.exit(1);
	}
}
