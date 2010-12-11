package edu.usu.cs.ka.currentsystem.simulator;

import edu.usu.cs.ka.currentsystem.agentsystem.*;
import edu.usu.cs.ka.currentsystem.simulator.Simulation.ExecThread;
import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;

import java.io.*;
import java.util.*;

/* This class has been built to check if the changes made to an ActionInstance 
 * show up in both the HT and the List containers of the problem's ActionInstances.
 */
public class Test_PlannerRawPerformance 
{	
	Planner planners;
	static int timeLimit;
	
	Test_PlannerRawPerformance(String [] args)
	{		
		if (args.length != 3) { usage(args); System.exit(1); }
		
		planners = new Planner(args[0], args[1]);
		
		timeLimit = Integer.valueOf(args[2]) * 1000;
	}
	
	public static void main(String [] args)
	{	
		Test_PlannerRawPerformance test = new Test_PlannerRawPerformance(args);
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
		for(int simSeed = 0; simSeed < 1000 && numSuccesses < 10; simSeed ++)
		{
			boolean cSuccess = false;
			boolean incSuccess = false;
			List<ActionInstance> plan;
			
			String resultString = "";
			resultString += args[0] + "_" + simSeed;
				
			//COMPLETE VERSION OF ACTIONS//////////////////////////////////////////////////////////////////////////
			isSolvableTest = true;
			DomainExpert expert = new DomainExpert(args[0], args[1], simSeed);
			planners.setProblem(expert.getProblem()); //Sets planner's actions to complete version
			//Recall that parcprinter and pathways change actions during planning.
			//Note that problem's actions are restored by Planner.
			//Because Expert is not called on, his action list doesn't need restoration.
			
			//AMIR plan
			plan = runPlannerThread("amir");	
			if(plan == null && !timeout) 
				resultString += " COMPLETE amir ? ?";
			else if(plan == null && timeout) 
				resultString += " COMPLETE amir T T";
			else
			{
				cSuccess = true;
				resultString += " COMPLETE amir " + plan.size() + " " + planners.getTimeToSolve();
			}
			
			//PODE1
			plan = runPlannerThread("pode1");			
			if(plan == null && !timeout) 
				resultString += " pode1 ? ?";
			else if(plan == null && timeout) 
				resultString += " pode1 T T";
			else
			{
				cSuccess = true;
				resultString += " pode1 " + plan.size() + " " + planners.getTimeToSolve();
			}
			
			//JDD
			plan = runPlannerThread("jdd");			
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
				plan = runPlannerThread("amir");
				if(plan == null && !timeout) 
					resultString += " INCOMPLETE amir ? ?";
				else if(plan == null && timeout) 
					resultString += " INCOMPLETE amir T T";
				else 
				{
					incSuccess = true;
					resultString += " INCOMPLETE amir " + plan.size() + " " + planners.getTimeToSolve();
				}
				
				//BRYCE
				plan = runPlannerThread("pode1");
				if(plan == null && !timeout) 
					resultString += " pode1 ? ?";
				else if(plan == null && timeout) 
					resultString += " pode1 T T";
				else
				{
					incSuccess = true;
					resultString += " pode1 " + plan.size() + " " + planners.getTimeToSolve();
				}
				
				//JDD
				plan = runPlannerThread("jdd");			
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
					
					//try{ out.write(resultString + "\n"); } catch(Exception e){e.printStackTrace();}
						  
					numSuccesses++;
				}
			}		
		}
		
		//try{ out.close(); } catch(Exception e){e.printStackTrace();}
	}
	
	boolean timeout;
	private List<ActionInstance> runPlannerThread(String plannerType)
	{
		ExecThread execThread = new ExecThread(Thread.currentThread(), planners, plannerType);
		
		long start = System.currentTimeMillis();
		long now = System.currentTimeMillis();
		execThread.start();
		
		int maxTime = 0;
		if(isSolvableTest)	maxTime = timeLimit/4;
		else				maxTime = timeLimit;
				
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
		String plannerType;
		List<ActionInstance> plan = null;
		
		ExecThread(Thread CallingThread, Planner p, String pType)
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
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Simulation_TestAgentAndDomainExpertStub args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<thread time limit>");
	}
}
