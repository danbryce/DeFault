package edu.usu.cs.incomplete.ka.trial;

import java.io.*;
import java.util.*;

import edu.usu.cs.incomplete.ka.agentsystem.mainsystem.*;
import edu.usu.cs.incomplete.ka.agentsystem.utilities.*;


import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.PODEFFSolver;
import edu.usu.cs.planner.PODEPISolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class Trial_Multi_ExplorationLearningTrial_random_length_pode1_solvable 
{
	Domain incompleteDomain_agent;
	Problem problem;
	
	Solver solver;
	SearchStatistics searchStatistics;
	SolverOptions solverOptions;
	
	boolean debug;
	
	int numTimesPlannerCalled;
	boolean isSolvable;
	double isSolvableTime;
	int isSolvableNumActions;
	
	FileWriter fstream;
	BufferedWriter out;	
	File file;
	
	String domainName;
	
	Trial_Multi_ExplorationLearningTrial_random_length_pode1_solvable(String[] args)
	{	
		debug = false;
		
		if (args.length !=2)
			usage(args);
		
		System.gc();
								
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(args[0], args[1]);	
		
		incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		if(debug){DomainAndProblemMaker_Utility.printDomain(incompleteDomain_agent);}
		problem = domainMaker.getProblem();
				
		solver = null;
		searchStatistics = new SearchStatistics();
		solverOptions = new SolverOptions();
		
		numTimesPlannerCalled = 0;
		
		//String pathToDomains = "testfiles/incomplete/bridges/";		
		domainName = args[0].substring(29);
		
		file = new File("Output/TrialOutput-" + domainName + ".txt");
		try{
			fstream = new FileWriter(file, true);
			out = new BufferedWriter(fstream);
		}catch(Exception e){System.out.println("Error opening file."); e.printStackTrace(); System.exit(1);}
		
		//Check Problems initial state and goal action
		//printProblemInitialStateAndGoalAction();
	}
	
	//[0]<domain-pddl-file>
	//[1]<problem-pddl-file>
	//[2]<seed(int)> - for seed of sim version of actions - [0-9]
	//[3]<planner ["solvableCheck" | "length" | "pode1"]>  
	static String[] args2;
	public static void main (String[] args)
	{
		//String[] algorithms = {"solvableCheck"};
		//String[] algorithms = {"random"};
		//String[] algorithms = {"length"};
		//String[] algorithms = {"pode1"};
		String[] algorithms = {"solvableCheck", "random","length","pode1"};
		
		args2 = new String[4];
		args2[0] = args[0];
		args2[1] = args[1];
		
		//Simulator seed
		int isSolvableFound = 0;
		for(int simSeed = 0; (simSeed < 1000) && (isSolvableFound < 10); simSeed++) //0-?
		{
			args2[2] = Integer.toString(simSeed);
			args2[3] = algorithms[0]; //solvableCheck first
			
			Trial_Multi_ExplorationLearningTrial_random_length_pode1_solvable env = new Trial_Multi_ExplorationLearningTrial_random_length_pode1_solvable(args);
			
			//For length planner - solvableCheck 
			env.solverOptions.setUsePreferredOperators(true);
			env.solverOptions.setUseDeferredEvaluation(true);
			env.generatePlanForSimVersionOfActions_noUncertainty();
						
			//If the domain and sim seed is solvable, do these things
			if(env.isSolvable)
			{
				isSolvableFound++;
				
				//Write isSolvable results to file
				try{
					env.out.append( 
								env.domainName + " " + simSeed + " solvableCheck" + 
								" " + env.isSolvableTime +
								" " + env.isSolvableNumActions
							  );
					env.out.flush();
				}catch(Exception e){System.out.println("1Error writing to file."); e.printStackTrace();}
				
				//Write isSolvable results screen
				System.out.print(env.domainName + " " + simSeed + " solvableCheck");
				System.out.print(" " + env.isSolvableTime);
				System.out.print(" " + env.isSolvableNumActions);
				
				//Call the other type solvers - Alg = random, length, pode1
				for(int alg = 1; alg < algorithms.length; alg++) 
				{
					env = new Trial_Multi_ExplorationLearningTrial_random_length_pode1_solvable(args);
					
					args2[3] = algorithms[alg];
					System.out.print(" " + args2[3] + " ");
					
					try{env.out.append(" " + args2[3] + " "); env.out.flush();
					}catch(Exception e){System.out.println("1Error writing to file."); e.printStackTrace();}
					
					if (args2[3].equalsIgnoreCase("length")) 
					{
						env.solverOptions.setUsePreferredOperators(true);
						env.solverOptions.setUseDeferredEvaluation(true);
					} 
					else if (args2[3].equalsIgnoreCase("pode1")) 
					{
						env.solverOptions.setUsePreferredOperators(true);
						env.solverOptions.setUseDeferredEvaluation(true);
						env.solverOptions.setUseMultipleSupportersInPlanningGraph(true);
						env.solverOptions.setRiskArity(Integer.valueOf(1));
					}
					
					//Planner-based trial on uncertain actions involving exploration learning
					if(args2[3].equalsIgnoreCase("pode1") || args2[3].equalsIgnoreCase("length"))
						env.planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem();
					//The random agent/sim - does exploration only
					else if (args2[3].equalsIgnoreCase("random"))
						env.randomExplorationLearningAgentOverGivenDomainAndProblem();
					else
						System.out.println("wrong: " + args2[3]);
				}//end for algs
							
				//at end of the testing for a good seed
				try{env.out.append("\n"); env.out.flush();
				}catch(Exception e){System.out.println("2Error writing to file."); e.printStackTrace();}
				System.out.println();
			}//end if
		}//end for sim seeds
		System.out.println();		
	}
	
	public void generatePlanForSimVersionOfActions_noUncertainty()
	{
		isSolvable = false;
		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		DomainExpert sim = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args2[2]));		
		problem.setActionInstances(sim.getActionInstances());
		
		agent.startStopwatch();
		
		//Init the planner and get plan
		List<ActionInstance> plan = initSolverGetPlan();
				
		agent.stopStopwatch();
		
		if(plan != null)
		{
			isSolvable = true;
			isSolvableTime = agent.getTimeToSolve();
			isSolvableNumActions = plan.size();
		}			
	}
	
	//Random learning agent
	public void randomExplorationLearningAgentOverGivenDomainAndProblem()
	{
		Agent agent = new Agent(incompleteDomain_agent, problem);
		DomainExpert sim = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args2[2]));

		Set<Proposition> currentState = problem.getInitialState();
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//THE INTERACTION BETWEEN SIM/AGENT
		//the case where there is no action available from current state is caught in the chooseActionExploration method 

		int endNumber = 10000;
		agent.startStopwatch();
		while((!currentState.containsAll(problem.getGoalAction().getPreconditions())) && (agent.getTotalNumberOfActions() < endNumber))
		{		
			Set<Proposition> newState;

			//Learning by Exploration
			IncompleteActionInstance incompleteActionChosen = agent.explore_side.chooseAction_Exploration(currentState);
			if(incompleteActionChosen == null) break;
			
			newState = sim.updateState(currentState, incompleteActionChosen);
			agent.explore_side.learnAboutActionTaken_Exploration(newState, currentState, incompleteActionChosen);
			currentState = newState;
		}
		agent.stopStopwatch();
		////////////////////////////////////////////////////
						
		//To file and console
		if((currentState.containsAll(problem.getGoalAction().getPreconditions())))
		{
			//To file
			try{out.append(agent.getTimeToSolve() + " " + agent.getTotalNumberOfActions()); out.flush();
			}catch(Exception e){System.out.println("Error writing to file.");}
			
			//To console
			System.out.print(agent.getTimeToSolve() + " " + agent.getTotalNumberOfActions());
		}
		else
		{
			//To file
			try{out.append("? ?"); out.flush();
			}catch(Exception e){System.out.println("Error writing to file.");}
			
			//To console
			System.out.print("? ?");
		}
	}
		
	public void planningAndExplorationLearningAgentSimTrialOverGivenDomainAndProblem()
	{		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		DomainExpert sim = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args2[2]));
		//Makes complete version of actions using agent's version of actions

		Set<Proposition> currentState = problem.getInitialState();
		
		////////////////////////////////////////////////////
		//THE INTERACTION BETWEEN SIM/AGENT/PLANNER
		agent.startStopwatch();
		
		//Init the planner and get plan
		List<ActionInstance> plan = initSolverGetPlan();
		if(plan == null) return;
		
		//Repeat until currentState contains goal state or no plan is found
		while(!currentState.containsAll(problem.getGoalAction().getPreconditions()))
		{
			IncompleteActionInstance incompleteActionChosen = (IncompleteActionInstance) plan.remove(0);
			
			//Sim updating state using sim's complete knowledge of action
			Set<Proposition> newState = sim.updateState(currentState, incompleteActionChosen);
			
			//Agent learning by exploration - doesn't matter if action succeeded or failed
			boolean isValidAction = agent.explore_side.learnAboutActionTaken_Exploration(newState, currentState, incompleteActionChosen);
			
			currentState = newState;
			
			//After agent has learned, send new version of actions, new state, and call planner again
			if(!isValidAction || (!currentState.containsAll(problem.getGoalAction().getPreconditions()) && plan.size() == 0) )
			{
				List temp = Actions_Utility.getIncompleteActionInstancesAsActionInstances(agent.getIncompleteActionInstanceHT());
				problem.setActionInstances(temp);
				problem.setInitialState(currentState);
				plan = initSolverGetPlan();
				if(plan == null) break;
			}
		}
		agent.stopStopwatch();
		////////////////////////////////////////////////////
		
		//To file and console
		if((currentState.containsAll(problem.getGoalAction().getPreconditions())))
		{
			//To file
			try{
				out.append(agent.getTimeToSolve() + " " + agent.getTotalNumberOfActions() + " " + numTimesPlannerCalled); out.flush();
			}catch(Exception e){System.out.println("Error writing to file.");}
		
			//To console
			System.out.print(agent.getTimeToSolve() + " " + agent.getTotalNumberOfActions() + " " + numTimesPlannerCalled);
		}
		else
		{
			//To file
			try{
				out.append("? ? ?"); out.flush();
			}catch(Exception e){System.out.println("Error writing to file.");}
		
			//To console
			System.out.print("? ? ?");
		}
	}
	
	private List<ActionInstance> initSolverGetPlan()
	{	
		numTimesPlannerCalled++;
		
		//Init appropriate planner (a CLA)
		try{
			if (args2[3].equalsIgnoreCase("length")) {
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);

				solverOptions.setUseMultipleSupportersInPlanningGraph(false);
				solver = new PODEFFSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			}
			else if (args2[3].subSequence(0,4).toString().equalsIgnoreCase("pode")){ 
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);
				solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				solverOptions.setRiskArity(Integer.valueOf(args2[3].substring(4)));
				solverOptions.setFaultType(SolverOptions.FAULT_TYPE.PI_FAULTS);
				solver = new PODEPISolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			}
			else if (args2[3].equalsIgnoreCase("solvableCheck")) 
			{
				System.out.println("GreedyBestFirstLengthSolver");
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);

				solverOptions.setUseMultipleSupportersInPlanningGraph(false);
				solver = new PODEFFSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			}
		}catch (IllDefinedProblemException e) {e.printStackTrace();}
				
		List<ActionInstance> plan = solver.run();
					
		return plan;
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("ExplorationLearningTrial_random_length_pode1_solvableTest usage:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file>");
		//System.err.println("\t [2]<seed(int)> [3]<planner ([length | pode1 | solvableCheck)>");
		System.exit(1);
	}
	
	//Initial state does not hold static predicates!!!
	void printProblemInitialStateAndGoalAction()
	{	
		System.out.println("problem: " + problem);
		
		Set<Proposition> currentState = problem.getInitialState();
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INITIAL STATE:\n");
		for (Proposition p : currentState)
			System.out.print(p + " ");
		System.out.println("\n\nEND - INITIAL STATE");
		System.out.println("************************************************************************\n");
		
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETEACTION INSTANCE - GOAL ACTION:\n");
		Actions_Utility.printIncompleteVersionOfActionInstance(problem.getGoalAction());
		System.out.println("\nTHUS, GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		System.out.println("\nEND - INCOMPLETEACTION INSTANCE - GOAL ACTION:\n");
		System.out.println("************************************************************************\n");	
	}
	
	@Override
	protected void finalize() throws Throwable 
	{
	    try{out.close();}        // close open files
	    finally{super.finalize();}
	}
}
