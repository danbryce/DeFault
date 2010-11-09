package edu.usu.cs.ka.oldsystems.nov_8_10.batchtesters;

import edu.usu.cs.ka.currentsystem.simulator.Test_PlannerRawPerformance;

public class BatchTester_Test_PlannerRawPerformance_version 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 16;
		args = new String[3];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
	
		//Just mess around with the for loop values...
		
		for(int gridSize = 2; gridSize <= 2; gridSize*=2) //2-32
		{
			for(double bridgeDensity = 0.75; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 2; version <= 3; version++)//1-3
				{
					for(int numFile = 5; numFile <= 10; numFile++) //numFiles 1-10
					{
						for(int simSeed = 0; simSeed < 10000 && Test_PlannerRawPerformance.numSuccesses < 10; simSeed++)
						{							
							args[0] = pathToDomains + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
							args[1] = pathToProblems + "bridges_problem" + extension;
							args[2] = String.valueOf(simSeed);
														
							try
							{ 
								System.out.print(args[0] + " " + args[2] + " ");
								Test_PlannerRawPerformance.main(args); 
								System.out.println();
							}
							catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }
						}//end for seed
						
						if(Test_PlannerRawPerformance.numSuccesses == 0)
							System.out.println(args[0]);
						else
							Test_PlannerRawPerformance.numSuccesses = 0;
						
						System.out.println();

					}//end for num file
					System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
}

