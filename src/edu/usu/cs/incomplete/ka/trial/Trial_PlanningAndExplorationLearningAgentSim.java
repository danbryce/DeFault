package edu.usu.cs.incomplete.ka.trial;

import java.util.*;

import edu.usu.cs.incomplete.ka.agentsim.*;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.GreedyBestFirstFFriskySolver;
import edu.usu.cs.search.GreedyBestFirstLengthSolver;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;


//For solvableTest, length, pode1
public class Trial_PlanningAndExplorationLearningAgentSim 
{
	Domain incompleteDomain_agent;
	Problem problem;
	
	Solver solver;
	SearchStatistics searchStatistics;
	SolverOptions solverOptions;
	
	String[] args2;
	Trial_PlanningAndExplorationLearningAgentSim(String[] args)
	{				
		if (args.length !=4)
			usage(args);
		
		//[0]<domain-pddl-file>
		//[1]<problem-pddl-file>
		//[2]<seed(int)> - for seed of sim version of actions - [0-9]
		//[3]<planner ["solvableCheck" | "random" | "length" | "pode1"]> 
		
		args2 = args;
						
		String[] args3 = new String[2];
		args3[0] = args[0];
		args3[1] = args[1];
		
		DomainAndProblemMaker domainMaker = new DomainAndProblemMaker(args3);	
		incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
				
		solver = null;
		searchStatistics = new SearchStatistics();
		solverOptions = new SolverOptions();
		
		if (args2[3].equalsIgnoreCase("length") || args2[3].equalsIgnoreCase("solvableCheck")) 
		{
			solverOptions.setUsePreferredOperators(true);
			solverOptions.setUseDeferredEvaluation(true);
		} 
		else if (args2[3].equalsIgnoreCase("pode1")) 
		{
			solverOptions.setUsePreferredOperators(true);
			solverOptions.setUseDeferredEvaluation(true);
			solverOptions.setUseMultipleSupportersInPlanningGraph(true);
			solverOptions.setRiskArity(Integer.valueOf(1));//arity 1 only
		}
		
		//Check Problems initial state and goal action
		printProblemInitialStateAndGoalAction();
	}
		
	public static void main (String[] args)
	{
		Trial_PlanningAndExplorationLearningAgentSim env = new Trial_PlanningAndExplorationLearningAgentSim(args);
		
		//Planner-based trial on uncertain actions involving exploration learning
		if(env.args2[3].equalsIgnoreCase("pode1") || env.args2[3].equalsIgnoreCase("length"))
			env.planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem();
		//Uses sim's complete version of actions, determined by a seed given
		else if(env.args2[3].equalsIgnoreCase("solvableCheck"))
			env.generatePlanForSimVersionOfActions_noUncertainty();
		else
			System.out.println("wrong: " + env.args2[4]);
	}
	
	void printProblemInitialStateAndGoalAction()
	{	
		System.out.println("problem: " + problem);
		
		System.out.println("problem.getObjects(): " + problem.getObjects());
		System.out.println("problem.getStartState(): "  + problem.getStartState());
		System.out.println("problem.getStartState().getFunctionLiterals(): "  + problem.getStartState().getFunctionLiterals());
		System.out.println("problem.getStartState().getLiterals(): "  + problem.getStartState().getLiterals());
		System.out.println("problem.getStartState().getPredicateLiterals(): "  + problem.getStartState().getPredicateLiterals());
		
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
	
	public void generatePlanForSimVersionOfActions_noUncertainty()
	{
		Agent agent = new Agent(incompleteDomain_agent, problem);
		Simulator sim = new Simulator(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args2[2]));
		
		//System.out.println("HERE");
		//IncompleteToComplete.printDomain(completeDomain_simulator);
		//sim.printIncompleteVersionOfActionInstances();
		
		problem.setActionInstances(sim.getActionInstances());
		
		agent.startStopwatch();
		
		//Init the planner and get plan
		List<ActionInstance> plan = initSolverGetPlan();
		
		//for(ActionInstance a : plan)
		//{
		//	IncompleteActionInstance ia = (IncompleteActionInstance) a;
		//	Agent.printIncompleteVersionOfActionInstance(ia);
		//}
		
		agent.stopStopwatch();
		
		System.out.println("solvableCheck - #Actions: " + plan.size() + " Time: " + agent.getTimeToSolve());
	}
	
	public void planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem()
	{
		System.out.println("************************************************************************");
		System.out.println("BEGIN - SIM-AGENT INTERACTION\n");
		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		Simulator sim = new Simulator(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args2[2]));
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
		List<ActionInstance> plan = initSolverGetPlan();
		
		//Repeat until currentState contains goal state or no plan is found
		while(!currentState.containsAll(problem.getGoalAction().getPreconditions()))
		{
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("LOOP ITERATION #: " + (loop++));
			
			//Getting next action from plan - if plan has more actions.
			IncompleteActionInstance incompleteActionChosen = (IncompleteActionInstance) plan.remove(0);
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("ACTION SELECTED (BY PLANNER): ");
			Agent.printIncompleteVersionOfActionInstance(incompleteActionChosen);
			System.out.println("----------------------------------------------------------------");
			
			//Sim updating state using sim's complete knowledge of action
			Set<Proposition> newState = sim.updateState(currentState, incompleteActionChosen);
			
			//Agent learning by exploration - doesn't matter if action succeeded or failed
			agent.explore_side.learnAboutActionTaken_Exploration(newState, currentState, incompleteActionChosen);
			currentState = newState;
			
			//After agent has learned, send new version of actions, new state, and call planner again
			problem.setActionInstances(agent.getIncompleteActionInstancesAsActionInstances());
			problem.setInitialState(currentState);
			plan = initSolverGetPlan();
			
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
	
	private List<ActionInstance> initSolverGetPlan()
	{
		//Init appropriate planner (a CLA)
		try{
			if (args2[3].equalsIgnoreCase("length")) 
				solver = new GreedyBestFirstLengthSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			else if (args2[3].equalsIgnoreCase("pode1")) 
				solver = new GreedyBestFirstFFriskySolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			else if (args2[3].equalsIgnoreCase("solvableCheck")) 
			{
				System.out.println("GreedyBestFirstLengthSolver");
				solver = new GreedyBestFirstLengthSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			}
		}catch (IllDefinedProblemException e) {e.printStackTrace();}
		
		//Get plan
		List<ActionInstance> plan = solver.run();
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
