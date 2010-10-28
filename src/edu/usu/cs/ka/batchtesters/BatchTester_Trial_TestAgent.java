package edu.usu.cs.ka.batchtesters;

import edu.usu.cs.ka.trial.Trial_TestAgent;

public class BatchTester_Trial_TestAgent 
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
		
		//Grid size
		for(int gridSize = 2; gridSize <= 2; gridSize*=2) //2-32
		{
			//Bridge density
			for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{		
				//Version
				for(int v = 3; v <= 3; v++)//1-3
				{
					//Num file
					for(int k = 1; k <= 1; k++) //numFiles 1-10
					{	
						for(int simSeed = 0; simSeed < 1 && Trial_TestAgent.numSuccesses < 1; simSeed++)
						{							
							args[0] = pathToDomains + "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
							args[1] = pathToProblems + "bridges_problem" + extension;
							args[2] = String.valueOf(simSeed);
							
							try{ Trial_TestAgent.main(args); }
							catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }
						}//end for seed
						
						if(Trial_TestAgent.numSuccesses == 0)
							System.out.println("bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension);
						else
							Trial_TestAgent.numSuccesses = 0;

					}//end for num file
					System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
}

