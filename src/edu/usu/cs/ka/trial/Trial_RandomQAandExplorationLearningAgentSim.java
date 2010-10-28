package edu.usu.cs.ka.trial;

import edu.usu.cs.ka.agentsystem.mainsystem.*;
import edu.usu.cs.ka.agentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import java.util.*;

public class Trial_RandomQAandExplorationLearningAgentSim 
{
	
	Domain incompleteDomain_agent;
	Domain completeDomain_simulator;
	Problem problem;
	
	String[] args2;
	Trial_RandomQAandExplorationLearningAgentSim(String[] args)
	{
		if (args.length != 2)
			usage();
		
		Double probability = 1.0;
		Integer seed = 0;
				
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(args[0], args[1]);
		
		incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
		
		//TO CONFIRM THE DOMAINS AND PROBLEMS INITIALLY CREATED
		//DomainAndProblemMAker_Utility.printProblemInitialStateAndGoalAction(problem);
	}
		
	public static void main (String[] args)
	{
		Trial_RandomQAandExplorationLearningAgentSim env = new Trial_RandomQAandExplorationLearningAgentSim(args);
		
		//TO CONFIRM THE DOMAINS AND PROBLEMS INITIALLY CREATED
		//env.printDomainsAndProblem();
		
		//Random QA/Exploration Agent/Sim Trial using domain, problem, seed, and probability given.
		env.randomQAAndExplorationAgentSimTrialOverGivenDomainAndProblem();
	}
	
	public void randomQAAndExplorationAgentSimTrialOverGivenDomainAndProblem()
	{
		System.out.println("************************************************************************");
		System.out.println("BEGIN - SIM-AGENT INTERACTION\n");
		//Could send in the rand seed - currently 0 within these classes
		Agent agent = new Agent(incompleteDomain_agent, problem);
		DomainExpert sim = new DomainExpert(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args2[3]));

		Set<Proposition> currentState = problem.getInitialState();
		System.out.println("\n----------------------------------");
		System.out.println("INITIAL STATE:       " + currentState);
		System.out.println("GOAL STATE INCLUDES: " + problem.getGoalAction().getPreconditions());
		System.out.println("----------------------------------");
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//THE INTERACTION BETWEEN SIM/AGENT
		//the case where there is no action available from current state is uncaught 
		//for this random sim/agent interaction
		int loop = 1;
		agent.startStopwatch();
		while(!currentState.containsAll(problem.getGoalAction().getPreconditions()))
		{
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("LOOP ITERATION #: " + (loop++));
			
			Set<Proposition> newState;
			if(agent.selectTypeOfLearning_randSwitch().equals(Agent.LearningType.EXPLORATION))
			{
				//Learning by Exploration
				IncompleteActionInstance incompleteActionChosen = agent.explore_side.chooseAction_Random(currentState);
				newState = sim.updateState(currentState, incompleteActionChosen);
				agent.explore_side.learnAboutActionTaken(newState, currentState, incompleteActionChosen);
				currentState = newState;
			}
			else
			{
				//Learning by QA
				QA_Learning.QA_ActionAndPropChoice agentsActionAndPropChoice = agent.qa_side.chooseIncompleteActionAndProp_QA();
				boolean isPossiblePropActual = sim.giveFeedbackForQuestion(agentsActionAndPropChoice);
				agent.qa_side.incorporateKnowledgeGained_QA(isPossiblePropActual, agentsActionAndPropChoice);
			}
			
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
		System.err.println("\t FUTURE: <probability(double)> <seed(int)>");
		System.err.println("\t CURRENT: set to 1.0, 0.");
		System.exit(1);
	}
}
