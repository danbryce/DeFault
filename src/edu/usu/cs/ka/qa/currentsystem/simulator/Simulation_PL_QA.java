package edu.usu.cs.ka.qa.currentsystem.simulator;

import java.util.*;

import edu.usu.cs.ka.qa.currentsystem.agentsystem.*;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.AgentTypes;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.QA.QA_Types;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Planner.PlannerTypes;
import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

public class Simulation_PL_QA
{		
	static Planner planners;
	DomainExpert expert;
	Agent agent;
	
	PlannerTypes pType;
	static Simulation_PL_QA instance;
	
	static int timeLimit;
	String resultString;
	
	//Results stuff
	static Long startTime;
	static Long finishTime;
		
	Simulation_PL_QA(String[] args, int simSeed)
	{	
		if (args.length != 3) { System.out.println(" " + args.length); usage(args); System.exit(1); }
		
		timeLimit = Integer.valueOf(args[2]) * 1000;
		
		expert = new DomainExpert(args[0], args[1], simSeed);		
		planners = new Planner(args[0], args[1]);

		resultString = "";
		
		instance = this;
	}
	
	public static Simulation_PL_QA getInstance() {return instance;}//Incomplete v. of singleton pattern assumes instance always previously exists.
	public PlannerTypes getPlannerType(){return pType;}
	public Planner getPlanner(){return planners;}

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
		int randomInt = randomGenerator.nextInt(3);
		switch(randomInt)
		{
			case 0: if(runPlannerThread(PlannerTypes.AMIR) == null) 	return false; break;
			case 1: if(runPlannerThread(PlannerTypes.PODE1) == null) 	return false; break;
			case 2: if(runPlannerThread(PlannerTypes.JDD) == null) 		return false; break;
		}

		expert.restoreActionsToStateBeforePlannerCall();
		isSolvableTest = false;
		
		return true;
	}
	
	static boolean gotAResult;
	public static void main(String[] args)
	{	
		int numSuccesses = 0;
		
		System.out.println();
//		System.out.println("domainFile: " + args[0]);
//		System.out.println("problemFile: " + args[1]);
//		System.out.println("thread timeLimit: " + args[2]);
//		System.out.println("tests startTime: " + startStopwatch());
//		System.out.println();
		
		for(int simSeed = 0; (simSeed < 1000) && (numSuccesses < 1); simSeed++)
		{
			try
			{
				Simulation_PL_QA sim = new Simulation_PL_QA(args, simSeed);
				if(sim.isSolvableDomain())
				{
					gotAResult = false;
			
					String domain = args[0].replace("testfiles/incomplete/", "");
					sim.resultString += domain + "_" + simSeed + " 2^" + sim.planners.getInitialNumRisks();
					sim.resultString += "\n";
					
					sim.runSimulationForGivenQAType(args, QA_Types.NONE);
					if(gotAResult)
					{
						sim.resultString += "\n";
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALL);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALL_IN_PLAN);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALL_IN_PFE);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALLCritical_IN_PFE);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.BESTCubeVar_IN_PFE);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.BESTMintermVar_IN_PFE);
						
						sim.resultString += "\n";
						
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALLPossPres);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALLPossPres_IN_PLAN);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALLPossPres_IN_PFE);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.ALLCriticalPossPres_IN_PFE);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.BESTPossPreCubeVar_IN_PFE);
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.BESTPossPreMintermVar_IN_PFE);
						
						sim.resultString += "\n";
						sim.runSimulationForGivenQAType(args, QA_Types.BEST_QTree);
						
						System.out.println(sim.resultString);

						numSuccesses++;
					}
				}
			}catch(Exception e){System.out.println("\nUnhandled Exception"); e.printStackTrace();}
		}
		
//		System.out.println();
//		System.out.println("numSuccesses    : " + numSuccesses);
//		System.out.println("tests finishTime: " + stopStopwatch());
//		System.out.println("tests totalTime : " + (finishTime - startTime)/1000.0);
	}
	
	private void runSimulationForGivenQAType(String[] args, QA_Types qaType)
	{
		resultString += " *" + qaType + "* " + Agent.AgentTypes.RG;
		
		try{ runSimulation(PlannerTypes.AMIR,  args, AgentTypes.RG, qaType); } catch(Exception e){ e.printStackTrace(); resultString += " amir E E E E E E E E E"; }
		//try{ runSimulation(PlannerTypes.PODE1, args, AgentTypes.RG, qaType); } catch(Exception e){ /*e.printStackTrace();*/ resultString += " pode1 E E E E E E E E E"; }
		//try{ runSimulation(PlannerTypes.JDD, args, AgentTypes.RG, qaType);   } catch(Exception e){ /*e.printStackTrace();*/ resultString += " jdd E E E E E E E E E"; }
		
		//resultString += " CL";
		
		//try{ runSimulation(PlannerTypes.AMIR,  args, AgentTypes.CL, qaType); } 	   catch(Exception e)	{ e.printStackTrace(); resultString += " amir E E E E E E E E"; }
		//try{ runSimulation(PlannerTypes.PODE1, args, Agent.AgentTypes.CL, qaType); } catch(Exception e)	{ e.printStackTrace(); resultString += " pode1 E E E E E E E E"; }
		//try{ runSimulation(PlannerTypes.JDD, args, Agent.AgentTypes.CL, qaType);   } catch(Exception e)	{ e.printStackTrace(); resultString += " jdd E E E E E E E E"; }
	}
	
	boolean timeout;
	private void runSimulation(PlannerTypes plannerType, String [] args, AgentTypes agentType, QA_Types qaType)
	{	
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
		boolean endlessLoop = timeout = false;

		//BEGIN SIMULATION//////////////////////////////////////////////////////////
		agent.startStopwatch();
		
		currState = nextState = agent.getProblem().getInitialState();
		
		agent.qa.askQuestionsByType(qaType, null); //works for QA TYPE - ALL RISKS only
		
		//FIRST POSSIBLE PLAN OBTAINED
		//QA TYPE - ALL RISKS IN PLAN && ALL RISKS IN PLAN FAILURE EXPLANATION SENTENCE
		plan = runPlannerThread(plannerType);
		while(agent.qa.askQuestionsByType(qaType, plan))
			plan = runPlannerThread(plannerType);
		
		//EXECUTION/PLANNING LOOP
		int countReplanningEpisodesDuringExecution = 0;
		while((agent.getNumActionsTaken() < 1000) && (planners.getNumTimesPlannerCalled() < 100) && 
			  (plan != null) && (plan.size() != 0))
		{	
			//PREPARE TO ACT
			boolean actionTaken = false;
			currAction = (IncompleteActionInstance) plan.remove(0);
			
			//ACT
			if(agent.isActionApplicable(currAction, currState, plan))
			{	
				actionTaken = true;
				nextState = expert.applyAction(currState, currAction);
				agent.learnAboutActionTaken(currAction, currState, nextState);
				if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions())) break;
			}
			
			//RE-PLAN
			if( agent.isActionFailure(currAction, currState, nextState) || plan.size() == 0 || 
			   !agent.isActionApplicable(currAction, currState, plan))
			{	
				if((agent.isActionFailure(currAction, currState, nextState) && actionTaken) || 
				   (agent.existsActionFailureInPastEntailFailVar() && !actionTaken))
						agent.incrementFailedActionsCount();
				
				if((agentType.equals(AgentTypes.CL)) && (agent.getNumFailedActions() > 0)) break;
				
				//Note that the problem has been updated within agent
				agent.getProblem().setInitialState(nextState); 
				agent.removeFailFromKBForNewPlan();
				plan = runPlannerThread(plannerType); //plan = planners.getPlan(plannerType);
				countReplanningEpisodesDuringExecution++;
				while(agent.qa.askQuestionsByType(qaType, plan))
				{
					plan = runPlannerThread(plannerType);
					countReplanningEpisodesDuringExecution++;
				}
				if(plan == null || plan.size() == 0) break;	
				if(plan.get(0).equals(currAction)) { endlessLoop = true; break; }
			}	
			currState = nextState;	
		}
				
		agent.stopStopwatch();
		//END SIMULATION////////////////////////////////////////////////////////////

		//RESULTS
		if(nextState.containsAll(agent.getProblem().getGoalAction().getPreconditions()))
		{	
			gotAResult = true;
			resultString += " " + plannerType + " " + planners.getNumTimesPlannerCalled() + "(" + countReplanningEpisodesDuringExecution + ")";
			resultString += " " + agent.getNumActionsTaken() + " " + agent.getNumFailedActions();
			resultString += " " + agent.getTimeToSolve() + " 2^" + planners.getFinalNumRisks();
			resultString += " " + agent.getNumQsAsked() + " " + agent.getNumRisksLearnedQA() + " " + agent.getNumRisksLearnedPL();
		}
		else
		{			
			if((agent.getNumActionsTaken() == 1000) || (planners.getNumTimesPlannerCalled() == 500))
				resultString += " " + plannerType + " " + planners.getNumTimesPlannerCalled() + " X " + agent.getNumActionsTaken() + " X X X X X X";
			else if(endlessLoop) 	resultString += " " + plannerType + " L L L L L L L L L";
			else if(timeout)		resultString += " " + plannerType + " T T T T T T T T T";
			else if(plan == null) 	resultString += " " + plannerType + " N N N N N N N N N";
			else					resultString += " " + plannerType + " ? ? ? ? ? ? ? ? ?";
		}
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
			catch (java.lang.OutOfMemoryError e){}
			catch (Exception e){}
			
			callingThread.interrupt();
			done = true;
		}
	}
	
	private static Long startStopwatch(){ startTime = System.currentTimeMillis(); return startTime; }
	private static Long stopStopwatch() { finishTime = System.currentTimeMillis();return finishTime;}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args[0] + " " + args[1] + " " + args[2]);
		System.err.println("Simulation_PassiveLearningAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<threadLimit>");
	}
	
	/**
	 * Used to show that planners change action descriptions for parcprinter and pathways domains.
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
