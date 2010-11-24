package edu.usu.cs.ka.currentsystem.batchtesters;

import edu.usu.cs.ka.currentsystem.simulator.Simulation_PassiveLearningAgent;

public class BatchTester_Simulation_PassiveLearningAgent 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 8;
		args = new String[3];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
			
		//Just mess around with the for loop values...
		for(int gridSize = 2; gridSize <= 2; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 3; version <= 3; version++)//1-3
				{
					for(int numFile = 1; numFile <= 1; numFile++) //numFiles 1-10
					{
						args[0] = pathToDomains + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
						args[1] = pathToProblems + "bridges_problem" + extension;
						args[2] = String.valueOf(5);
	
						try{ Simulation_PassiveLearningAgent.main(args); }
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

