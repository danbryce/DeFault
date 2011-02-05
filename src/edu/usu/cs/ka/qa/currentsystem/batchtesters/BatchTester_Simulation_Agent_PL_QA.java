package edu.usu.cs.ka.qa.currentsystem.batchtesters;

import edu.usu.cs.ka.currentsystem.simulator.Simulation;
import edu.usu.cs.ka.qa.currentsystem.simulator.Simulation_PL_QA;

public class BatchTester_Simulation_Agent_PL_QA 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{	
		System.out.println("<domain_simSeed> <2^#initialPossFeatures>");
		System.out.print("<TYPE_QA> <TYPE_AGENT> <PLANNER> <#plannerCalls> <#plannerCallsDuringExecution> ");
		System.out.print("<#actions> <#failedActions> <totalTime> <2^#remainingPossFeatures> ");
		System.out.println("<#QsAsked> <#risksLearnedQA> <#risksLearnedPL> ");
		
		testBridges();
	}			

	//bridges_v2_4_0.75_2.pddl_34
	public static void testBridges()
	{
		int maxGridSize = 8;
		String[] args = new String[3];
		String path = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
			
		//Just mess around with the for loop values...
		for(int gridSize = 2; gridSize <= 2; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 2; version <= 2; version++)//1-3
				{
					for(int numFile = 1; numFile <= 1; numFile++) //numFiles 1-10
					{
						args[0] = path + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
						args[1] = path + "bridges_problem_version" + extension;
						
						if(gridSize ==2) args[2] = String.valueOf(2);
						else if(gridSize ==4) args[2] = String.valueOf(3);
						else args[2] = String.valueOf(10);
						
						try{ Simulation_PL_QA.main(args); }
						catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }
						
						//System.out.println();
					}//end for num file
					//System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
	
	public static void testParcPrinter()
	{
		int maxGridSize = 8;
		String[] args = new String[3];
		String pathToDomains = "testfiles/incomplete/parcprinter/";
		String pathToProblems = "testfiles/incomplete/parcprinter/";
		String extension = ".pddl";
		
		int[] problemNumbers = { 1,  2,  3,  4,  5, 11, 12, 13, 21, 22, 23, 24};
		int[] timeLimits	 = { 5, 10, 15, 15, 25,  5, 30, 20,  5, 30, 15, 35};
			
		//Just mess around with the for loop values...
		//for(int i = 0; i < 1; i++)
		for(int i = 0; i < problemNumbers.length; i++)
		{
			for(int instance = 1; instance <= 10; instance++)
			{
				String fileName = "p";
				if(problemNumbers[i] < 10) fileName += "0";
				fileName += problemNumbers[i];
				fileName += "_" + instance;
				
				args[0] = pathToDomains + fileName +"-domain-incomplete" + extension;
				args[1] = pathToProblems + fileName +"-problem-incomplete" + extension;
				args[2] = String.valueOf(timeLimits[i]);

				try{ Simulation_PL_QA.main(args); }
				catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }

				//System.out.println();
			}//end for version
			//System.out.println();
		}//end for size
		
		System.out.println("DONE");
	}
}