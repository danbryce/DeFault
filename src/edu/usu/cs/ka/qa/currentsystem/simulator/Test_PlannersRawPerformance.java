package edu.usu.cs.ka.qa.currentsystem.simulator;

import edu.usu.cs.ka.qa.currentsystem.agentsystem.*;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Planner.PlannerTypes;
import edu.usu.cs.ka.qa.currentsystem.simulator.SimulationPLQA.ExecThread;
import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.io.*;
import java.util.*;

/**
 * This class concerns planner performance on complete vs. incomplete action descriptions.
 *  See runPlannerThread notes.
 */
public class Test_PlannersRawPerformance 
{	
	Planner planners;
	static int timeLimit = 1200;//20 minutes - the default time limit for all ka planning
	static int maxSeeds = 1000;
	static int maxSuccesses = 10;
	
	Test_PlannersRawPerformance(String [] args)
	{		
		if (args.length != 2) { usage(args); System.exit(1); }
		
		planners = new Planner(args[0], args[1]);
	}
	
	public static void main(String [] args)
	{	
		Test_PlannersRawPerformance test = new Test_PlannersRawPerformance(args);
		test.runTest(args);
	}
	
	static boolean isSolvableTest;
	public void runTest(String [] args)
	{
		//String outFileName = args[0];
		//outFileName = outFileName.replace("testfiles/incomplete/bridges/", "");
		//outFileName = outFileName.replace(".pddl", ".txt");
		
		//File file = new File("/Users/CHW/Desktop/PRP_Results/", outFileName);
		//FileWriter fstream;
	    //try {  fstream = new FileWriter(file); } catch(Exception e){e.printStackTrace(); return;}
	    //BufferedWriter out = new BufferedWriter(fstream);
		
		int numSuccesses = 0;
		for(int simSeed = 0; simSeed < maxSeeds && numSuccesses < maxSuccesses; simSeed ++)
		{
			boolean cSuccess = false;
			boolean incSuccess = false;
			
			List<ActionInstance> plan;
			
			String resultString = "";
			String domain = args[0].replace("testfiles/incomplete/", "");
			resultString += domain + "_" + simSeed;
			
			try{
				//COMPLETE VERSION OF ACTIONS//////////////////////////////////////////////////////////////////////////
				DomainExpert expert = new DomainExpert(args[0], args[1], simSeed);
				planners.setProblem(expert.getProblem()); //Sets planner's actions to complete version
				//Recall that planners change action descriptions for parcprinter and pathways domains
				// (removes add effects that are never preconditions) to speed planning.
				//Note that problem's actions are restored by Planner in the method getPlan();
				//Because Expert is not called on, his action list doesn't need restoration (see Simulation).
				
				//AMIR
				plan = runPlannerThread(PlannerTypes.AMIR);	
				if(plan == null && !timeout) 
					resultString += " COMPLETE amir ? ?";
				else if(plan == null && timeout) 
					resultString += " COMPLETE amir T T";
				else
				{
					cSuccess = true;
					resultString += " COMPLETE amir " + plan.size() + " " + planners.getTimeToSolve();
				}
				
				expert.restoreActionsToStateBeforePlannerCall();
				
				//PODE1
				plan = runPlannerThread(PlannerTypes.PODE1);			
				if(plan == null && !timeout) 
					resultString += " pode1 ? ?";
				else if(plan == null && timeout) 
					resultString += " pode1 T T";
				else
				{
					cSuccess = true;
					resultString += " pode1 " + plan.size() + " " + planners.getTimeToSolve();
				}
				
				expert.restoreActionsToStateBeforePlannerCall();
				
				//JDD
				plan = runPlannerThread(PlannerTypes.JDD);			
				if(plan == null && !timeout) 
					resultString += " jdd ? ?";
				else if(plan == null && timeout) 
					resultString += " jdd T T";
				else
				{
					cSuccess = true;
					resultString += " jdd " + plan.size() + " " + planners.getTimeToSolve();
				}
				
				if(cSuccess)
				{
					//INCOMPLETE VERSION OF ACTIONS//////////////////////////////////////////////////////////////////////////
					isSolvableTest = false;
					planners = new Planner(args[0], args[1]); //Reset problem and actions.
					
					//AMIR
					plan = runPlannerThread(PlannerTypes.AMIR);
					if(plan == null && !timeout) 
						resultString += " INCOMPLETE amir ? ?";
					else if(plan == null && timeout) 
						resultString += " INCOMPLETE amir T T";
					else 
					{
						incSuccess = true;
						resultString += " INCOMPLETE amir " + plan.size() + " " + planners.getTimeToSolve();
					}
					
					planners = new Planner(args[0], args[1]); //Reset problem and actions.
					
					//BRYCE
					plan = runPlannerThread(PlannerTypes.PODE1);
					if(plan == null && !timeout) 
						resultString += " pode1 ? ?";
					else if(plan == null && timeout) 
						resultString += " pode1 T T";
					else
					{						
						incSuccess = true;
						resultString += " pode1 " + plan.size() + " " + planners.getTimeToSolve();
					}
					
					planners = new Planner(args[0], args[1]); //Reset problem and actions.
					
					//JDD
					plan = runPlannerThread(PlannerTypes.JDD);			
					if(plan == null && !timeout) 
						resultString += " jdd ? ?";
					else if(plan == null && timeout) 
						resultString += " jdd T T";
					else
					{				
						incSuccess = true;
						resultString += " jdd " + plan.size() + " " + planners.getTimeToSolve();
					}
					
					if(incSuccess)
					{
						System.out.println(resultString);
							  
						numSuccesses++;
					}
				}
					
				}catch(Exception e) {e.printStackTrace();}
			}
			//try{ out.close(); } catch(Exception e){e.printStackTrace();}
		}
		
		
	
	
	
	/**
	 * Thread are employed because in rare cases a planner will not return a result.
	 * Allow the planner enough time to solve the problem's classical version.
	 * Give the planner a much greater time to solve the incomplete version.
	 * These results can be analyzed to find a thread limit that allows planner to solve
	 *  the vast majority of incomplete problem versions, while not hanging on
	 *  problems that do not return a result using a given planner.
	 * @param plannerType
	 * @return
	 */
	boolean timeout;
	private List<ActionInstance> runPlannerThread(PlannerTypes plannerType)
	{
		ExecThread execThread = new ExecThread(Thread.currentThread(), planners, plannerType);
		
		long start = System.currentTimeMillis();
		long now = System.currentTimeMillis();
		execThread.start();
		
		int maxTime = timeLimit * 1000;//converts secs to millisecs

				
		while ((now - start) < maxTime)
		{
			try { Thread.sleep(500); } catch (Exception e){}
			now = System.currentTimeMillis();
			if(execThread.done) 
				break;
		}
		
		execThread.stop();	
		if((now - start) >= maxTime)
			timeout = true;

		return execThread.plan;
	}
	
	class ExecThread extends Thread 
	{
		Thread callingThread;
		public boolean done = false;
		
		Planner planner;
		PlannerTypes plannerType;
		List<ActionInstance> plan = null;
		
		ExecThread(Thread CallingThread, Planner p, PlannerTypes pType)
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
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Test_PlannersRawPerformance args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file>");
	}
}
