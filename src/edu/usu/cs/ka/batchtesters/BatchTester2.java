package edu.usu.cs.ka.batchtesters;

import edu.usu.cs.ka.trial.*;

public class BatchTester2
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 16;
		args = new String[2];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
	
		//Just mess around with the for loop values...
		
		//Grid size
		for(int gridSize = 4; gridSize <= 4; gridSize*=2) //2-32
		{
			//Bridge density
			for(double bridgeDensity = .5; bridgeDensity <= .5; bridgeDensity += 0.25) //0.0 - 1.0
			{		
				//Version
				for(int v = 3; v <= 3; v++)//1-3
				{
					//Num file
					for(int k = 1; k <= 1; k++) //numFiles 1-10
					{				
						args[0] = pathToDomains + "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
						args[1] = pathToProblems + "bridges_problem" + extension;
						
						try{
							Trial_Multi_ExplorationLearningTrial_random_length_pode1_solvable.main(args);
						}catch(Error e){System.out.println("\nError\n"); e.printStackTrace();}
					}//end for num file
					System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}	
}

