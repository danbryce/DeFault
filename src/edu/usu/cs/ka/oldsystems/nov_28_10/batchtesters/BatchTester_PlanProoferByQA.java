package edu.usu.cs.ka.oldsystems.nov_28_10.batchtesters;

import edu.usu.cs.ka.oldsystems.nov_28_10.simulator.*;

public class BatchTester_PlanProoferByQA 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 16;
		args = new String[3];
		String extension = ".pddl";
	
		//Grid size
		for(int gridSize = 4; gridSize <= 8; gridSize*=2) //2-32
		{
			//Bridge density
			for(double bridgeDensity = .0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{		
				//Version
				for(int v = 1; v <= 3; v++)//1-3
				{
					//Num file
					for(int k = 1; k <= 10; k++) //numFiles 1-10
					{				
						args[0] = "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
						args[1] = "bridges_problem" + extension;
						
						for(int simSeed = 0; simSeed < 10000 && Simulation_PlanProoferByQA.numSuccesses < 10; simSeed++)
						{							
							args[2] = String.valueOf(simSeed);
							try{
								Simulation_PlanProoferByQA.main(args);
							}catch(Error e){System.out.println("\nError\n"); e.printStackTrace();}
						}
						
						Simulation_PlanProoferByQA.numSuccesses = 0;
						System.out.println();
					}//end for num file
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}	

}
