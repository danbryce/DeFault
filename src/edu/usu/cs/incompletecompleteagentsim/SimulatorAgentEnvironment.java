package edu.usu.cs.incompletecompleteagentsim;

import edu.usu.cs.incompletecompleteagentsim.Agent.QA_ActionAndPropChoice;
import edu.usu.cs.pddl.goalseffects.*;
import edu.usu.cs.pddl.domain.translation.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.astar.*;
import edu.usu.cs.search.*;

import java.util.*;

public class SimulatorAgentEnvironment 
{
	
	Domain incompleteDomain_agent;
	Domain completeDomain_simulator;
	Problem problem;
	
	public static void main (String[] args)
	{
		SimulatorAgentEnvironment env = new SimulatorAgentEnvironment();
			
		if (args.length != 2)
			env.usage();
		
		Double probability = 0.0;
		Integer seed = 0;
		
		String[] args2 = new String[4];
		args2[0] = args[0];
		args2[1] = args[1];
		args2[2] = probability.toString();
		args2[3] = seed.toString();
	
		IncompleteToComplete domainMaker = new IncompleteToComplete(args2);
		
		env.incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		env.completeDomain_simulator = domainMaker.getModifiedCompleteDomain();
		env.problem = domainMaker.getProblem();
		
		//First print the complete/translated domain to show that there was an adequate deep copy made of the actions
/*		System.out.println("************************************************************************");
		System.out.println("BEGIN - COMPLETE DOMAIN VERSION - to be used by simulator\n");
		IncompleteToComplete.printDomain(env.completeDomain_simulator);
		System.out.println("\nEND - COMPLETE DOMAIN VERSION");
		System.out.println("************************************************************************\n");

		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETE DOMAIN VERSION - to be used by agent\n");
		IncompleteToComplete.printDomain(env.incompleteDomain_agent);
		System.out.println("\nEND - INCOMPLETE DOMAIN VERSION");
		System.out.println("************************************************************************\n");
*/		
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETE PROBLEM VERSION");
		System.out.println("\t(Note: in/complete problem versions are the same.)\n");
		System.out.println(env.problem.toString());
		System.out.println("END - INCOMPLETE PROBLEM VERSION");
		System.out.println("************************************************************************\n");
		
		Set<Proposition> currentState = env.problem.getInitialState();
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INITIAL STATE:\n");
		for (Proposition p : currentState)
			System.out.println(p);
		System.out.println("\nEND - INITIAL STATE");
		System.out.println("************************************************************************\n");
		
		
		System.out.println("************************************************************************");
		System.out.println("BEGIN - SIM-AGENT INTERACTION\n");
		//Could send in the rand seed - currently 0 within these classes
		Agent agent = new Agent(env.incompleteDomain_agent, env.problem);
		Simulator sim = new Simulator(env.completeDomain_simulator, env.problem);

		System.out.println("\n----------------------------------");
		System.out.println("INITIAL STATE:       " + currentState);
		System.out.println("GOAL STATE INCLUDES: " + env.problem.getGoalAction().getPreconditions());
		System.out.println("----------------------------------");
		
		
		//THE INTERACTION BETWEEN SIM/AGENT
		//the case where there is no action available from current state is uncaught 
		//for this random sim/agent interaction
		int loop = 1;
		agent.startStopwatch();
		while(!currentState.containsAll(env.problem.getGoalAction().getPreconditions()))
		{
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("LOOP ITERATION #: " + (loop++));
			
			Set<Proposition> newState;
			if(agent.selectTypeOfLearning().equals(Agent.LearningType.EXPLORATION))
			{
				//Learning by Exploration
				ActionInstance actionChosen = agent.chooseAction_Exploration(currentState);
				newState = sim.updateState(currentState, actionChosen);
				agent.learnAboutActionTaken_Exploration(newState, currentState, actionChosen);
				currentState = newState;
			}
			else
			{
				//Learning by QA
				QA_ActionAndPropChoice agentsActionAndPropChoice = agent.chooseIncompleteActionAndProp_QA();
				boolean isPossiblePropActual = sim.giveFeedbackForQuestion(agentsActionAndPropChoice);
				agent.incorporateKnowledgeGained_QA(isPossiblePropActual, agentsActionAndPropChoice);
			}
			
			System.out.println("\nPRESS ENTER TO CONTINUE...");
		    Scanner sc = new Scanner(System.in);
		       while(!sc.hasNextLine());
		    
		    System.out.println("----------------------------------------------------------------");
		    System.out.println("CURRENT STATE:       " + currentState);
		    System.out.println("GOAL STATE INCLUDES: " + env.problem.getGoalAction().getPreconditions());
		    System.out.println("----------------------------------------------------------------");
		}
		agent.stopStopwatch();
		
		//FINAL RESULTS
		System.out.println("\n----------------------------------");
		System.out.println("GOAL ACHIEVED:           " + env.problem.getGoalAction().getPreconditions());
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
	
	private void printAction_abbr(ActionDef a)
	{
		System.out.println();
		System.out.println("a.getName(): " + a.getName());

		System.out.println("a.getPreCondition(): " + a.getPreCondition());
		System.out.println("a.getPossPreCondition(): " + a.getPossPreCondition());
				
		System.out.println("a.getEffect(): " + a.getEffect());
		System.out.println("a.getPossEffect(): " + a.getPossEffect());
	}
	
}
