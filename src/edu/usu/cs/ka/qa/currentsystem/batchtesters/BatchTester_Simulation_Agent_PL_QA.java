package edu.usu.cs.ka.qa.currentsystem.batchtesters;

import edu.usu.cs.ka.qa.currentsystem.simulator.Simulation_PL_QA;

public class BatchTester_Simulation_Agent_PL_QA 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 8;
		args = new String[3];
		String path = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
		
		System.out.println("<domain_simSeed> <2^#initialPossFeatures>");
		System.out.print("<*TYPE_QA*> <TYPE_AGENT> <PLANNER> <#plannerCalls> <(#pcDuringExecution)> ");
		System.out.print("<#actions> <#failedActions> <totalTime> <2^#remainingPossFeatures> ");
		System.out.println("<#QsAsked> <#risksLearnedQA> <#risksLearnedPL> ");
			
		//Just mess around with the for loop values...
		for(int gridSize = 2; gridSize <= 2; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = .5; bridgeDensity <= .5; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 2; version <= 2; version++)//1-3
				{
					for(int numFile = 1; numFile <= 10; numFile++) //numFiles 1-10
					{
						args[0] = path + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
						args[1] = path + "bridges_problem" + extension;
						
						if(gridSize ==2) args[2] = String.valueOf(2);
						else if(gridSize ==4) args[2] = String.valueOf(16);
						else args[2] = String.valueOf(10);
						
						try{ Simulation_PL_QA.main(args); }
						catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }
						
						System.out.println();
					}//end for num file
					System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
}