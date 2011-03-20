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

public class SimulationPLQAF
{		
	static Planner planners;
	DomainExpert expert;
	Agent agent;
	
	PlannerTypes pType;
	static SimulationPLQAF instance;
	
	String resultString;
	
	//Results stuff
	static Long startTime;
	static Long finishTime;
	
	//Settings
	static boolean debug = false;
	static boolean isForEyeballs = false;
	static boolean isForFile = true;
	public static final int maxPlannerCalls 		= 10000;//Don't forget - the QTree and Planner classes use this variable!!!!
	public static final int maxActions 				= 1000;
	public static final int maxSeeds 				= 10000;
	public static final int maxSuccesses 			= 10;
	public static final int maxTimeSimulation 		= 3600;//one hour = 3600
	public static final double plannerTimeLimit 	= 600; //5 minutes = 300, 10 minutes = 600
		
	SimulationPLQAF(String[] args, int simSeed)
	{					
		expert = new DomainExpert(args[0], args[1], simSeed);		
		planners = new Planner(args[0], args[1]);
		QTree.counterRPSCalls = 0;

		resultString = "";
		
		instance = this;
	}
	
	public static SimulationPLQAF getInstance() {return instance;}//Incomplete v. of singleton pattern assumes instance always previously exists.
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
		if (args.length != 2) { System.out.println(" " + args.length); usage(args); System.exit(1); }
		
		int numSuccesses = 0;
		
		if(isForFile)
		{
			System.out.println();
			System.out.println("domainFile: " + args[0]);
			System.out.println("problemFile: " + args[1]);
			System.out.println("thread timeLimit: " + plannerTimeLimit + " secs");
			System.out.println("tests startTime: " + startStopwatch());
			System.out.println();
		}
		
		for(int simSeed = 0; (simSeed < maxSeeds) && (numSuccesses < maxSuccesses); simSeed++)
		{	
			try
			{
				if(isForEyeballs)System.out.println("*" + simSeed);
				
				SimulationPLQAF sim = new SimulationPLQAF(args, simSeed);
				if(sim.isSolvableDomain())
				{	
					if(isForEyeballs)System.out.println(simSeed);
					
					gotAResult = false;
					
					String domain = args[0].replace("testfiles/incomplete/", "");
					sim.resultString += domain + "_" + simSeed;
					sim.resultString += " " + sim.expert.getNumActionsInDomain() + " 2^" + sim.planners.getInitialNumRisks();
					
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.NONE);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInKBonceTil);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInKBallTil);	
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BestCubeVarInKBandPFE_onceThenReplan_toKBOneClause, false);
//					if(isForEyeballs) sim.resultString += "\n";
//					sim.runSimulationForGivenQAType(args, QA_Types.BestCubeVarInKBandPFE_tilKBOneClause, false);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInKBintPFEonceTil);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInKBintPFEallTil);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInKBintPFEplusPFEonceTil);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInKBintPFEplusPFEallOnce);	
					if(isForEyeballs) sim.resultString += "\n";					
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInPFEonceTil);
					if(isForEyeballs) sim.resultString += "\n";
					sim.runSimulationForGivenQAType(args, QA_Types.BCVInPFEallTil);
								
					if(gotAResult)
					{
						numSuccesses++;
						System.out.println(sim.resultString);
					}
				}
			}catch(Exception e){if(debug) System.out.println("\nUnhandled Exception"); e.printStackTrace();}
		}
		
		if(isForFile)
		{
			System.out.println();
			System.out.println("numSuccesses    : " + numSuccesses);
			System.out.println("tests finishTime: " + stopStopwatch());
			System.out.println("tests totalTime : " + (finishTime - startTime)/1000.0 + " secs");
		}
	}
	
	private void runSimulationForGivenQAType(String[] args, QA_Types qaType)
	{
		resultString += " " + qaType;
		
		resultString += " " + AgentTypes.RG;

		try{ runSimulation(PlannerTypes.AMIR,  args, AgentTypes.RG, qaType); } 	   catch(Exception e) { e.printStackTrace(); resultString += " AMIR E E E E E E E E E"; }
		try{ runSimulation(PlannerTypes.JDD, args, Agent.AgentTypes.RG, qaType); } catch(Exception e) { e.printStackTrace(); resultString += " JDD E E E E E E E E E"; }
		
		resultString += " " + AgentTypes.CL;

		try{ runSimulation(PlannerTypes.AMIR,  args, AgentTypes.CL, qaType); } 	   catch(Exception e) { e.printStackTrace(); resultString += " AMIR E E E E E E E E E"; }
		try{ runSimulation(PlannerTypes.JDD, args, Agent.AgentTypes.CL, qaType); } catch(Exception e) { e.printStackTrace(); resultString += " JDD E E E E E E E E E"; }
	}
	
	boolean timeoutPlanner, timeoutSimulation;
	private void runSimulation(PlannerTypes plannerType, String [] args, AgentTypes agentType, QA_Types qaType)
	{	
		if(debug)System.out.println("\n//" + plannerType + " " + agentType + " " + qaType + "///////////////////");
		//System.out.println("\n//" + plannerType + " " + agentType + " " + qaType + "///////////////////");
		
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
		boolean isNoInitialPlanFound;
		boolean endlessLoop = isNoInitialPlanFound = timeoutPlanner = timeoutSimulation = false;

		//BEGIN SIMULATION//////////////////////////////////////////////////////////
		agent.startStopwatch();
		
		currState = nextState = agent.getProblem().getInitialState();
		
		agent.qa.askQuestionsByType(qaType, null, false); //works for QA TYPE - ALL RISKS only

		
		//FIRST POSSIBLE PLAN OBTAINED
		//QA TYPE - ALL RISKS IN PLAN && ALL RISKS IN PLAN FAILURE EXPLANATION SENTENCE
		plan = runPlannerThread(plannerType);	
		while(agent.qa.askQuestionsByType(qaType, plan, false) && (planners.getNumTimesPlannerCalled() <= maxPlannerCalls)) //updates agent's actionList
			plan = runPlannerThread(plannerType);
		
		List<ActionInstance> originalPlan = null;
		if(plan == null)
			isNoInitialPlanFound = true;
		else
			originalPlan = Actions_Utility.makeActionsListDeepCopy(plan);
		
		if(debug) System.out.println("FIRST PLAN: " + plan);
		if(debug && plan != null && Planner.duplicateActionCheck(plan))
			System.out.println("\n2 IN A ROW.");
		
		//EXECUTION/PLANNING LOOP
		int countReplanningEpisodesDuringExecution = 0;
		while((agent.getNumActionsTaken() < maxActions) && (planners.getNumTimesPlannerCalled() < maxPlannerCalls) && 
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
				if(debug) System.out.println("ACTION TAKEN: " + currAction);			
				
				plan.remove(0);
				actionTaken = true;
				nextState = expert.applyAction(currState, currAction);
				agent.learnAboutActionTaken(currAction, currState, nextState);
				agent.getProblem().setInitialState(nextState);
				
				if(nextState.equals(currState) && debug ) System.out.println("NO STATE CHANGE");
								
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
				if(debug && isActionFailure) 	 System.out.println("isActionFailure: " + currAction);
				
				if((isActionFailure && actionTaken) || (agent.existsActionFailureInPastEntailFailVar() && !actionTaken))
						agent.incrementFailedActionsCount();
				
				plan = runPlannerThread(plannerType); //plan = planners.getPlan(plannerType);
				countReplanningEpisodesDuringExecution++;
				while((agent.qa.askQuestionsByType(qaType, plan, false)) && (planners.getNumTimesPlannerCalled() <= maxPlannerCalls))
				{
					plan = runPlannerThread(plannerType);
					countReplanningEpisodesDuringExecution++;
				}
								
				if(plan == null || plan.size() == 0) 
					break;
				
				if(Actions_Utility.comparePlansShallowEquality(originalPlan, plan))//isLoop
				{ 
					if(debug)
					{
						System.out.println("*NEW PLAN  : " + plan);
						System.out.println("*OG PLAN  : " + originalPlan);
						System.out.println("currState: " + currState);
						System.out.println("*CURR ACT (Agent) : ");
						Actions_Utility.printIncompleteVersionOfActionInstance(plan.get(0));
						ActionInstance xpertVersion = Actions_Utility.getActionInListOfActions(plan.get(0).getName(), expert.getActions());
						System.out.println("*CURR ACT (Expert) : ");
						Actions_Utility.printIncompleteVersionOfActionInstance(xpertVersion);
					}
					
					if(!qaType.toString().contains("BCVInKB"))
					{
						endlessLoop = true; 
						break; 
					}
					else
					{
						while(plan != null && Actions_Utility.comparePlansShallowEquality(originalPlan, plan)
								&& agent.qa.askQuestionsByType(qaType, plan, true) && (planners.getNumTimesPlannerCalled() <= maxPlannerCalls))
						{
							plan = runPlannerThread(plannerType);
							countReplanningEpisodesDuringExecution++;
						}

						if(plan == null || plan.size() == 0) 
							break;
						
						if(Actions_Utility.comparePlansShallowEquality(originalPlan, plan))
						{
							endlessLoop = true; 
							break; 
						}
						else
							originalPlan = Actions_Utility.makeActionsListDeepCopy(plan);
						
					}
				}
				else
					originalPlan = Actions_Utility.makeActionsListDeepCopy(plan);
						
				if(debug && plan != null && Planner.duplicateActionCheck(plan))
					System.out.println("\n!*2 IN A ROW*!");
				
				try { agent.removeFailFromKBForNewPlan();} catch(Exception e) {}
			}
			
			currState = nextState;
			
			if(debug) 
			{
				System.out.println("NEW PLAN  : " + plan);
				System.out.println("#actions:       " + agent.getNumActionsTaken());
				System.out.println("#planner calls: " + planners.getNumTimesPlannerCalled()); 
			}
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
		else if((agent.getNumActionsTaken() >= maxActions) || (planners.getNumTimesPlannerCalled() >= maxPlannerCalls))
				resultString += " " + plannerType + " X X X X X X X X X";
		else if(endlessLoop) 							resultString += " " + plannerType + " L L L L L L L L L";
		else if(timeoutSimulation)						resultString += " " + plannerType + " T T T T T T T T T";
		else if(timeoutPlanner)							resultString += " " + plannerType + " t t t t t t t t t";
		else if(plan == null && isNoInitialPlanFound) 	resultString += " " + plannerType + " N N N N N N N N N";
		else if(plan == null && !isNoInitialPlanFound) 	resultString += " " + plannerType + " n n n n n n n n n";
		else if(plan.size() == 0) 						resultString += " " + plannerType + " S S S S S S S S S";
		else											resultString += " " + plannerType + " ? ? ? ? ? ? ? ? ?";
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
		
		double maxTime = plannerTimeLimit * 1000;

		while ((now - start) < maxTime)
		{
			try { Thread.sleep(1000); } catch (Exception e){}
			
			now = System.currentTimeMillis();
			
			//System.out.print(((now - start)/1000) + " ");
			
			if(!isSolvableTest && (agent.getCurrentExecutionTime() >= maxTimeSimulation)) 
				break;
			
			if(execThread.done) 
				break;
		}
		
		//System.out.println();
		
		if((now - start) >= maxTime) 
			timeoutPlanner = true; //plan will be null
		if(!isSolvableTest && (agent.getCurrentExecutionTime() > maxTimeSimulation)) 
			timeoutSimulation = true; //plan will be null
		if(agent != null) 
			agent.restoreActionsToStateBeforePlannerCall();	

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
			catch (java.lang.OutOfMemoryError e){}
			catch (Exception e){}
			
			//callingThread.interrupt();
			done = true;
		}
	}
	
	private static Long startStopwatch(){ startTime = System.currentTimeMillis(); return startTime; }
	private static Long stopStopwatch() { finishTime = System.currentTimeMillis();return finishTime;}
	
	private static void usage(String[] args) 
	{
		System.err.println("Simulation_PassiveLearningAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file>");
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
