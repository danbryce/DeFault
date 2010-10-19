package edu.usu.cs.incomplete.ka.batchtesters;

import edu.usu.cs.incomplete.ka.trial.*;

public class BatchTester_PlannersRawPerformance 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 8;
		args = new String[3];
		String extension = ".pddl";
	
		//Grid size
		for(int gridSize = 4; gridSize <= 8; gridSize*=2) //2-32
		{		
			//Version
			for(int v = 1; v <= 3; v++)//1-3
			{
				//Bridge density
				for(double bridgeDensity = 0.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
				{
					//Num file
					for(int k = 1; k <= 10; k++) //numFiles 1-10
					{				
						args[0] = "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
						args[1] = "bridges_problem" + extension;
						
						for(int simSeed = 0; simSeed < 10000 && Trial_PlannersRawPerformance.numSuccesses < 1; simSeed++)
						{							
							args[2] = String.valueOf(simSeed);
							try{
								Trial_PlannersRawPerformance.main(args);
							}catch(Error e){System.out.println("\nError\n"); e.printStackTrace();}
						}
						
						if(Trial_PlannersRawPerformance.numSuccesses == 0)
							System.out.println(args[0]);
						else
							Trial_PlannersRawPerformance.numSuccesses = 0;
					}//end for num file
				}//end for version
			}//end for bridge density
			
			System.out.println();
		}//end for size
		
		System.out.println("DONE");
	}	
}
