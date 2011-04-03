package edu.usu.cs.ka.qa.currentsystem.simulator;

import java.util.*;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.*;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.AgentTypes;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.QA.QA_Types;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Planner.PlannerTypes;
import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.RelaxedPlanSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class SimulationPLQA
{		
	static Planner planners;
	DomainExpert expert;
	Agent agent;
	
	PlannerTypes pType;
	static SimulationPLQA instance;
	
	static int timeLimit;
	String resultString;
	
	//Results stuff
	static Long startTime;
	static Long finishTime;
	
	//Settings
	static boolean debug = true;
	public static final int maxPlannerCalls = 2000;//Don't forget - the QTree and Planner classes use this variable!!!!
	public static final int maxSeeds = 10000;
	public static final int maxSuccesses = 10;
		
	SimulationPLQA(String[] args, int simSeed)
	{			
		timeLimit = Integer.valueOf(args[2]) * 1000;
		
		expert = new DomainExpert(args[0], args[1], simSeed);		
		planners = new Planner(args[0], args[1]);
		QTree.counterRPSCalls = 0;

		resultString = "";
		
		instance = this;
	}
	
	public static SimulationPLQA getInstance() {return instance;}//Incomplete v. of singleton pattern assumes instance always previously exists.
	public PlannerTypes getPlannerType(){return pType;}
	public static Planner getPlanner(){return planners;}

	/**
	 * Choose any planner, as all perform comparably on the classical version of the problem.
	 * @return boolean is Solvable
	 */
	static boolean isSolvableTest;
	public boolean isSolvableDomain()
	{	
		isSolvableTest = true;
		
		planners.setProblem(expert.getProblem());

		Random randomGenerator = new Random(0);
		int randomInt = randomGenerator.nextInt(2);
		switch(randomInt)
		{
			case 0: if(runPlannerThread(PlannerTypes.AMIR) == null) 	
						return false;
					break;
			case 1: if(runPlannerThread(PlannerTypes.JDD) == null) 
						return false;
					break;
		}

		expert.restoreActionsToStateBeforePlannerCall();
		isSolvableTest = false;
		
		return true;
	}
	
	static boolean gotAResult;
	public static void main(String[] args)
	{	
		if (args.length != 3) { System.out.println(" " + args.length); usage(args); System.exit(1); }
		
		boolean isForEyeballs = false; 
		
		int numSuccesses = 0;
		
		System.out.println();
		System.out.println("domainFile: " + args[0]);
		System.out.println("problemFile: " + args[1]);
		System.out.println("thread timeLimit: " + args[2]);
		System.out.println("tests startTime: " + startStopwatch());
		System.out.println();
		
		for(int simSeed = 0; (simSeed < maxSeeds) && (numSuccesses < maxSuccesses); simSeed++)
		{		
			try
			{
				SimulationPLQA sim = new SimulationPLQA(args, simSeed);
				if(sim.isSolvableDomain())
				{				
					gotAResult = false;
			
					String domain = args[0].replace("testfiles/incomplete/", "");
					sim.resultString += domain + "_" + simSeed + " 2^" + sim.planners.getInitialNumRisks();
					
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.NONE, false);	
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.ALL, false);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.ALL_IN_PLAN, false);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.ALL_IN_PFE, false);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BESTCubeVar_IN_PFE, false);				
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BEST_QTreeOneStepReg, false);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BEST_QTreeOneStepRPS, false);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.resultString += " RPS_Starter";
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BESTCubeVar_IN_PFE, true);				
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BEST_QTreeOneStepReg, true);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BEST_QTreeOneStepRPS, true);
					
					if(gotAResult)
					{
						numSuccesses++;
						System.out.println(sim.resultString);
					}
				}
			}catch(Exception e){if(debug) { System.out.println("\nUnhandled Exception"); e.printStackTrace();} }
		}
		
		System.out.println();
		System.out.println("numSuccesses    : " + numSuccesses);
		System.out.println("tests finishTime: " + stopStopwatch());
		System.out.println("tests totalTime : " + (finishTime - startTime)/1000.0);
	}
	
	private void runSimulationForGivenQAType(String[] args, QA_Types qaType, boolean isRPSQAStarter)
	{
		resultString += " " + qaType;
		
		resultString += " " + AgentTypes.RG;

		try{ runSimulation(PlannerTypes.AMIR,  args, AgentTypes.RG, qaType, isRPSQAStarter); } catch(Exception e)		{  /*e.printStackTrace();*/ resultString += " AMIR E E E E E E E E E"; }
		try{ runSimulation(PlannerTypes.JDD, args, Agent.AgentTypes.RG, qaType, isRPSQAStarter);   } catch(Exception e)	{  /*e.printStackTrace();*/ resultString += " JDD E E E E E E E E E"; }
		
		resultString += " " + AgentTypes.CL + " ";

		try{ runSimulation(PlannerTypes.AMIR,  args, AgentTypes.CL, qaType, isRPSQAStarter); } catch(Exception e)		{  /*e.printStackTrace();*/ resultString += " AMIR E E E E E E E E E"; }
		try{ runSimulation(PlannerTypes.JDD, args, Agent.AgentTypes.CL, qaType, isRPSQAStarter);   } catch(Exception e)	{  /*e.printStackTrace();*/ resultString += " JDD E E E E E E E E E"; }
	}
	
	boolean timeout;
	private void runSimulation(PlannerTypes plannerType, String [] args, AgentTypes agentType, QA_Types qaType, boolean isRPSQAStarter)
	{	
		if(debug)System.out.println("\n//" + plannerType + " " + agentType + " " + qaType + "///////////////////");
		
		//AGENT SETUP
		if(agentType.equals(Agent.AgentTypes.RG)) 		agent = new Agent_RG(args[0], args[1]);
		else if(agentType.equals(Agent.AgentTypes.CL))	agent = new Agent_CL(args[0], args[1]);
		
		//PLANNER SETUP
		planners.setProblem(agent.getProblem()); //Sets planner's problem to agent's incomplete version (was expert's/outdated)
		//The planner's problem's actionList auto-updates from Agent to Planner by this reference.
		planners.resetNumTimesPlannerCalledCount();
		pType = plannerType;
		
		//EXECUTION SETUP
		Set<Proposition> currState, nextState;
		IncompleteActionInstance currAction;
		List<ActionInstance> plan;
		boolean endlessLoop = timeout = false;

		//BEGIN SIMULATION//////////////////////////////////////////////////////////
		agent.startStopwatch();
		
		currState = nextState = agent.getProblem().getInitialState();
		
		agent.qa.askQuestionsByType(qaType, null, false); //works for QA TYPE - ALL RISKS only
		
		if(isRPSQAStarter) //The inbuilt assumption here is that there is ALWAYS a relaxed plan,
			agent.qa.askQsFromRelaxedPlanGraph(); //and we can ask q's from it until this RP has no PFE (i.e., PFE == FALSE/0)
		
		//FIRST POSSIBLE PLAN OBTAINED
		//QA TYPE - ALL RISKS IN PLAN && ALL RISKS IN PLAN FAILURE EXPLANATION SENTENCE
		plan = runPlannerThread(plannerType);	
		while(agent.qa.askQuestionsByType(qaType, plan, false)) //updates agent's actionList
			plan = runPlannerThread(plannerType);
		if(debug) System.out.println("FIRST PLAN: " + plan);
		if(debug && plan != null && Planner.duplicateActionCheck(plan))
			System.out.println("\n2 IN A ROW.");
		
		List<ActionInstance> originalPlan = Actions_Utility.makeActionsListDeepCopy(plan);
		
		
		//EXECUTION/PLANNING LOOP
		int countReplanningEpisodesDuringExecution = 0;
		while((agent.getNumActionsTaken() < 1000) && (planners.getNumTimesPlannerCalled() < maxPlannerCalls) && 
				(plan != null) && (plan.size() != 0))
		{	
			//Ask Q's about next action
			if(qaType.toString().contains("Next"))
			{
				if(debug) System.out.println("QA on next action: " + plan.get(0));
				
				agent.qa.askQuestionsByType(qaType, plan, false);
			}
			
			//PREPARE TO ACT
			boolean actionTaken = false;
			currAction = (IncompleteActionInstance) plan.get(0);
			
			//ACT
			boolean isActionApplicable = agent.isActionApplicable(currAction, currState, plan);
			if(isActionApplicable)
			{	
				if(debug)System.out.println("ACTION TAKEN: " + currAction);			
				plan.remove(0);
				actionTaken = true;
				nextState = expert.applyAction(currState, currAction);
				agent.learnAboutActionTaken(currAction, currState, nextState);
				agent.getProblem().setInitialState(nextState);
								
				if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions())) 
				{
					currState = nextState;
					break;
				}
			}
			
			boolean isActionFailure = false;
			if(actionTaken)
			{
				isActionFailure = agent.isActionFailure(currAction, currState, nextState);
				
				if(debug && isActionFailure)System.out.println("FAIL");
				if(debug && isActionFailure && !qaType.equals(QA.QA_Types.NONE)) resultString += " !*F*!";
			}
			
			//RE-PLAN
			if(isActionFailure || plan.size() == 0 || !isActionApplicable)
			{	
				if(debug && !isActionApplicable) System.out.println("!isActionApplicable: " + currAction);
				if(debug && isActionFailure) System.out.println("isActionFailure: " + currAction);
				
				if((isActionFailure && actionTaken) || (agent.existsActionFailureInPastEntailFailVar() && !actionTaken))
						agent.incrementFailedActionsCount();
									
				try { agent.removeFailFromKBForNewPlan();} catch(Exception e) {}
				
				if(isRPSQAStarter)
					agent.qa.askQsFromRelaxedPlanGraph();
				
				plan = runPlannerThread(plannerType); //plan = planners.getPlan(plannerType);
				countReplanningEpisodesDuringExecution++;
				while(agent.qa.askQuestionsByType(qaType, plan, false))
				{
					plan = runPlannerThread(plannerType);
					countReplanningEpisodesDuringExecution++;
				}
				
				if(debug)System.out.println("NEW PLAN  : " + plan);	
				
				if(plan == null || plan.size() == 0) 
					break;
				
				if(plan.equals(originalPlan)) 
				{ 
					if(debug)
					{
						System.out.println("*NEW PLAN  : " + plan);
						System.out.println("*OG PLAN  : " + originalPlan);
						System.out.println("currState: " + currState);
						System.out.println("*CURR ACT  : ");
						Actions_Utility.printIncompleteVersionOfActionInstance(plan.get(0));
					}
					
					endlessLoop = true; 
					break; 
				}
				else
					originalPlan = Actions_Utility.makeActionsListDeepCopy(plan);
						
				if(debug && plan != null && Planner.duplicateActionCheck(plan))
					System.out.println("\n!*2 IN A ROW*!");
			}
			
			currState = nextState;
		}
				
		agent.stopStopwatch();
		//END SIMULATION////////////////////////////////////////////////////////////

		//RESULTS
		if(currState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{	
			resultString += " " + plannerType + " " + planners.getNumTimesPlannerCalled() + " " + countReplanningEpisodesDuringExecution;
			resultString += " " + agent.getNumActionsTaken() + " " + agent.getNumFailedActions();
			resultString += " " + agent.getTimeToSolve() + " 2^" + planners.getFinalNumRisks();
			resultString += " " + agent.getNumQsAsked() + " " + agent.getNumRisksLearnedQA() + " " + agent.getNumRisksLearnedPL();
			
			gotAResult = true;
		}
		else if((agent.getNumActionsTaken() >= 1000) || (planners.getNumTimesPlannerCalled() >= maxPlannerCalls))
				resultString += " " + plannerType + " X X X X X X X X X";
		else if(endlessLoop) 		resultString += " " + plannerType + " L L L L L L L L L";
		else if(timeout)			resultString += " " + plannerType + " T T T T T T T T T";
		else if(plan == null) 		resultString += " " + plannerType + " N N N N N N N N N";
		else if(plan.size() == 0) 	resultString += " " + plannerType + " S S S S S S S S S";
		else						resultString += " " + plannerType + " ? ? ? ? ? ? ? ? ?";
	}
	
	/**
	 * To speed up batch testing, planner is allowed 8x the time used to find the classical version of the problem.
	 * This is a sweet spot determined by ka/simulator/Test_PlannerRawPerformance.
	 * To determine if simSeed can be solved, runPlannerThread is first called using the Domain Experts's
	 *  version of the actions. In that case, the agent is not yet created.
	 * Else, runPlannerThread is called by Agent. Planners can change the action descriptions,
	 *  hence the call to Agent.restoreActionsToStateBeforePlannerCall().
	 * 
	 * @param plannerType
	 * @return
	 */
	public List<ActionInstance> runPlannerThread(Planner.PlannerTypes plannerType)
	{
		ExecThread execThread = new ExecThread(Thread.currentThread(), planners, plannerType);
		
		long start = System.currentTimeMillis();
		long now = System.currentTimeMillis();
		execThread.start();
		
		int	maxTime = 0;
		
		if(isSolvableTest) 	maxTime = timeLimit / 4;
		else				maxTime = timeLimit * 2;

		while ((now - start) < maxTime)
		{
			try { Thread.sleep(500); } catch (Exception e){}
			now = System.currentTimeMillis();
			if(execThread.done) break;
		}
		
		execThread.stop();	
		if((now - start) >= maxTime) timeout = true; //plan will be null
		if(agent != null) agent.restoreActionsToStateBeforePlannerCall();	

		return execThread.plan;
	}
	
	class ExecThread extends Thread 
	{
		Thread callingThread;
		public boolean done = false;
		
		Planner planner;
		PlannerTypes plannerType;
		List<ActionInstance> plan = null;
		
		ExecThread(Thread CallingThread, Planner p, Planner.PlannerTypes pType)
		{
			planner = p;
			plannerType = pType;
			callingThread = CallingThread;
			done = false;
		}
		
		public void run()
		{			
			try { plan = planner.getPlan(plannerType); }
			catch (java.lang.OutOfMemoryError e){e.printStackTrace();}
			catch (Exception e){e.printStackTrace();}
			
			callingThread.interrupt();
			done = true;
		}
	}
	
	private static Long startStopwatch(){ startTime = System.currentTimeMillis(); return startTime; }
	private static Long stopStopwatch() { finishTime = System.currentTimeMillis();return finishTime;}
	
	private static void usage(String[] args) 
	{
		System.err.println("Simulation_PassiveLearningAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<threadLimit>");
	}
	
	/**
	 * Used to show that planners change action descriptions for parcprinter and pathways domains.
	 * This is handled by Planner.getPlan() keeping deep copies of the actions
	 * @param when
	 */
	public void badActionMaintenenceChecker(String when)
	{
		List<ActionInstance> expertHTlist  = Actions_Utility.getListFrom_Int_IAI_HT(expert.actionsCV_HT);		
		List<ActionInstance> agentHTList = Actions_Utility.getListFrom_String_IAI_HT(agent.actionsHT);
		
		System.out.println(when);
		System.out.print("Agent           List: "); Actions_Utility.showActionsCountPADAndPossPADs(agent.getActions());
		System.out.print("Agent             HT: "); Actions_Utility.showActionsCountPADAndPossPADs(agentHTList);
		System.out.print("Agent   problem List: "); Actions_Utility.showActionsCountPADAndPossPADs(agent.getProblem().getActions());
		System.out.print("Expert          List: "); Actions_Utility.showActionsCountPADAndPossPADs(expert.getActions());
		System.out.print("Expert            HT: "); Actions_Utility.showActionsCountPADAndPossPADs(expertHTlist);
		System.out.print("Expert  problem List: "); Actions_Utility.showActionsCountPADAndPossPADs(expert.getProblem().getActions());
		System.out.print("Planner problem List: "); Actions_Utility.showActionsCountPADAndPossPADs(planners.getProblem().getActions());
		System.out.println();
	}
}
