package edu.usu.cs.ka.qa.currentsystem.batchtesters;

import edu.usu.cs.ka.qa.currentsystem.simulator.*;

public class BatchTester_TestRawPerformance 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 8;
		//args = new String[3];
		args = new String[2];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
			
		//Just mess around with the for loop values...
		for(int gridSize = 4; gridSize <= 4; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = .5; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 1; version <= 3; version++)//1-3
				{
					for(int numFile = 1; numFile <= 10; numFile++) //numFiles 1-10
					{
						args[0] = pathToDomains + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
						args[1] = pathToProblems + "bridges_problem_version" + extension;
						
						//if(gridSize ==2) 		args[2] = String.valueOf(10);
						//else if(gridSize ==4) 	args[2] = String.valueOf(20);
						//else if(gridSize ==8)	args[2] = String.valueOf(40);
						//else					args[2] = String.valueOf(80);
						
						if(bridgeDensity == 1.0 && numFile > 1)
							continue;
						else
						{
							try{ Test_PlannersRawPerformance.main(args); }
							catch(Error e){ System.out.println("\nError in BatchTester testRawPerformance\n"); e.printStackTrace(); }
						}
						
						//System.out.println();
					}//end for num file
					//System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
}

