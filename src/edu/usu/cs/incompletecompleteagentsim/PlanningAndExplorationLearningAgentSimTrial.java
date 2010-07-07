package edu.usu.cs.incompletecompleteagentsim;

import java.util.*;
import java.util.Scanner;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.translation.IncompleteToComplete;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.GreedyBestFirstFFriskySolver;
import edu.usu.cs.search.GreedyBestFirstLengthSolver;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PlanningAndExplorationLearningAgentSimTrial 
{
	
	Domain incompleteDomain_agent;
	Domain completeDomain_simulator;
	Problem problem;
	
	Solver solver;
	SearchStatistics searchStatistics;
	SolverOptions solverOptions;
	
	String[] args2;
	PlanningAndExplorationLearningAgentSimTrial(String[] args)
	{
		if (args.length != 2)
			usage();
		
		Double probability = 0.1;
		Integer seed = 0;
		
		args2 = new String[6];
		args2[0] = args[0];
		args2[1] = args[1];
		args2[2] = probability.toString();
		args2[3] = seed.toString();
		args2[4] = "length";
		args2[5] = "";
		
		String[] args3 = new String[4];
		args3[0] = args2[0];
		args3[1] = args2[1];
		args3[2] = args2[2];
		args3[3] = args2[3];
		
		IncompleteToComplete domainMaker = new IncompleteToComplete(args3);
		
		incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		completeDomain_simulator = domainMaker.getModifiedCompleteDomain();
		problem = domainMaker.getProblem();
		
		//TO CONFIRM THE DOMAINS AND PROBLEMS INITIALLY CREATED
		//printDomainsAndProblem();
		
		solver = null;
		searchStatistics = new SearchStatistics();
		solverOptions = new SolverOptions();
		
		if (args2[4].equalsIgnoreCase("length")) 
		{
			solverOptions.setUsePreferredOperators(true);
			solverOptions.setUseDeferredEvaluation(true);
		} 
		else if (args2[4].equalsIgnoreCase("pode")) 
		{
			solverOptions.setUsePreferredOperators(true);
			solverOptions.setUseDeferredEvaluation(true);
			solverOptions.setUseMultipleSupportersInPlanningGraph(true);
			solverOptions.setRiskArity(Integer.valueOf(args2[5]));
		}
	}
	
	void printDomainsAndProblem()
	{
		//First print the complete/translated domain to show that there was an adequate deep copy made of the actions
		System.out.println("************************************************************************");
		System.out.println("BEGIN - COMPLETE DOMAIN VERSION - to be used by simulator\n");
		IncompleteToComplete.printDomain(completeDomain_simulator);
		System.out.println("\nEND - COMPLETE DOMAIN VERSION");
		System.out.println("************************************************************************\n");

		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETE DOMAIN VERSION - to be used by agent\n");
		IncompleteToComplete.printDomain(incompleteDomain_agent);
		System.out.println("\nEND - INCOMPLETE DOMAIN VERSION");
		System.out.println("************************************************************************\n");
				
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETE PROBLEM VERSION");
		System.out.println("\t(Note: in/complete problem versions are the same.)\n");
		System.out.println(problem.toString());
		System.out.println("END - INCOMPLETE PROBLEM VERSION");
		System.out.println("************************************************************************\n");
		
		Set<Proposition> currentState = problem.getInitialState();
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INITIAL STATE:\n");
		for (Proposition p : currentState)
			System.out.print(p + " ");
		System.out.println("\n\nEND - INITIAL STATE");
		System.out.println("************************************************************************\n");
		
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETEACTION INSTANCE - GOAL ACTION:\n");
		Agent.printIncompleteVersionOfActionInstance(problem.getGoalAction());
		System.out.println("\nTHUS, GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		System.out.println("\nEND - INCOMPLETEACTION INSTANCE - GOAL ACTION:\n");
		System.out.println("************************************************************************\n");
	}
	
	public static void main (String[] args)
	{
		PlanningAndExplorationLearningAgentSimTrial env = new PlanningAndExplorationLearningAgentSimTrial(args);
		
		//TO CONFIRM THE DOMAINS AND PROBLEMS INITIALLY CREATED
		//env.printDomainsAndProblem();
		
		//Random QA/Exploration Agent/Sim Trial using domain, problem, seed, and probability given.
		env.planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem();
	}
	
	public void planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem()
	{
		System.out.println("************************************************************************");
		System.out.println("BEGIN - SIM-AGENT INTERACTION\n");
		//Could send in the rand seed - currently 0 within these classes
		Agent agent = new Agent(incompleteDomain_agent, problem);
		Simulator sim = new Simulator(completeDomain_simulator, problem);

		Set<Proposition> currentState = problem.getInitialState();
		System.out.println("\n----------------------------------");
		System.out.println("INITIAL STATE:       " + currentState);
		System.out.println("GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		System.out.println("----------------------------------");
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//THE INTERACTION BETWEEN SIM/AGENT/PLANNER
		int loop = 1;
		agent.startStopwatch();
		
		//Init appropriate planner (a CLA)
		try{
			if (args2[4].equalsIgnoreCase("length")) 
				solver = new GreedyBestFirstLengthSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			else if (args2[4].equalsIgnoreCase("pode")) 
				solver = new GreedyBestFirstFFriskySolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {e.printStackTrace();}
		
		//Get first possible plan
		List<ActionInstance> plan = solver.run();
		if(plan.isEmpty())
		{
			System.out.println("NO POSSIBLE PLAN FOUND");
			System.exit(1);
		}
		else
		{
			System.out.println("PLAN FOUND: ");
			for(ActionInstance a : plan)
				System.out.println("\t" + a.getName());
		}
		
		//Pop action off plan
		//Sim updates state based on full knowledge of action
		//Agent takes action and learns about it. 
		//If action failed, then update Domain and Problem - update actions and initial state to current state 
		//Call the planner again. 
		//Repeat until currentState contains goal state
		while(!currentState.containsAll(problem.getGoalAction().getPreconditions()))
		{
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("LOOP ITERATION #: " + (loop++));

			//Getting next action from plan
			IncompleteActionInstance incompleteActionChosen = (IncompleteActionInstance) plan.remove(0);
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("ACTION SELECTED (BY PLANNER): ");
			Agent.printIncompleteVersionOfActionInstance(incompleteActionChosen);
			System.out.println("----------------------------------------------------------------");
			
			//Updating state using sim's complete knowledge of action
			Set<Proposition> newState = sim.updateState(currentState, incompleteActionChosen);
			
			//Agent learning by Exploration
			boolean isActionAccepted = agent.explore_side.learnAboutActionTaken_Exploration(newState, currentState, incompleteActionChosen);
			currentState = newState;
			
			//CHECK ON HOW PROBLEM AND DOMAIN ARE CHANGING
			System.out.println("\n****************************************************************");
			System.out.println("CHECK ON WHETHER DOMAIN  - action list AND ");
			System.out.println("		 PROBLEM - initial state");
			System.out.println("CHANGE SIMPLY BECAUSE OF THE REFERENCES.");
			
			problem.setActionInstances(agent.getIncompleteActionInstancesAsActionInstances());
			problem.setInitialState(currentState);
			System.out.println("problem.getInitialState(): " + problem.getInitialState());
			System.out.println("****************************************************************\n");
			
			
			//If action was refused, get a new plan, use updated knowledge and current state as initial state.
			if(!isActionAccepted)
			{
				System.out.println("AGENT DETECTED THAT ACTION WAS REFUSED.");
				System.out.println(" Calling planner again:");
				System.out.println("  *initial state set to current state.");
				System.out.println("  *actionlist updated to utilize what has been learned.");
				
				problem.setActionInstances(agent.getIncompleteActionInstancesAsActionInstances());
				problem.setInitialState(currentState);
				
				try{
					if (args2[4].equalsIgnoreCase("length")) 
						solver = new GreedyBestFirstLengthSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
					else if (args2[4].equalsIgnoreCase("pode")) 
						solver = new GreedyBestFirstFFriskySolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
				}catch (IllDefinedProblemException e) {e.printStackTrace();}
				
				plan = solver.run();
				
				if(plan.isEmpty())
				{
					System.out.println("NO POSSIBLE PLAN FOUND");
					System.exit(1);
				}
				else
				{
					System.out.println("PLAN FOUND: ");
					for(ActionInstance a : plan)
						System.out.println("\t" + a.getName());
				}
			}
			
			//Misc details before next iteration
			System.out.println("\nPRESS ENTER TO CONTINUE...");
		    Scanner sc = new Scanner(System.in);
		       while(!sc.hasNextLine());
		    
		    System.out.println("----------------------------------------------------------------");
		    System.out.println("CURRENT STATE:       " + currentState);
		    System.out.println("GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		    System.out.println("----------------------------------------------------------------");
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
	
	private void usage() 
	{
		System.err.println("SimulatorAgentEnvironment usage:");
		System.err.println("\t<domain-pddl-file> <problem-pddl-file>");
		System.err.println("\t FUTURE: <probability(double)> <seed(int)> <planner (\"length\", \"pode\")>  <(optional) arity (for pode)>");
		System.err.println("\t CURRENT: set to 1.0, 0, length");
		System.exit(1);
	}
}
