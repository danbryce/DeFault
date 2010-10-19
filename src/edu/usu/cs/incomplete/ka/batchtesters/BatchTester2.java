package edu.usu.cs.incomplete.ka.batchtesters;

import edu.usu.cs.incomplete.ka.trial.*;

import java.io.*;

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
	
		//Grid size
		for(int gridSize = 8; gridSize <= 8; gridSize*=2) //2-32
		{
			//Bridge density
			for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{		
				//Version
				for(int v = 1; v <= 1; v++)//1-3
				{
					//Num file
					for(int k = 1; k <= 10; k++) //numFiles 1-10
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

