package edu.usu.cs.ka.qa.currentsystem.batchtesters;

import edu.usu.cs.ka.qa.currentsystem.simulator.*;

public class BatchTester_Test_KAQA_DomainExpertAndAgent_Setup 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{
		System.out.println("BEGIN - KAQA_DomainExpertAndAgent_Setup TESTS");
		
		Bridges(args);
		
		System.out.println("DONE - KAQA_DomainExpertAndAgent_Setup TESTS");
	}
	
	public static void Bridges(String[] args)
	{
		args = new String[3];
		String path = "testfiles/incomplete/bridges/";
		
		System.out.println("BEGIN BRIDGES\n");
			
		//Just mess around with the for loop values...
		for(int gridSize = 2; gridSize <= 2; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 3; version <= 3; version++)//1-3
				{
					for(int numFile = 1; numFile <= 1; numFile++) //numFiles 1-10
					{
						args[0] = path + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + ".pddl";
						args[1] = path + "bridges_problem.pddl";
						
						for(int simSeed = 0; simSeed < 1; simSeed++)
						{
							args[2] = String.valueOf(simSeed);
							
							try{ Test_KAQA_DomainExpertAndAgent_Setup.main(args); }
							catch(Error e){ System.out.println("\nError in BatchTester testBridges\n"); e.printStackTrace(); }
						}
						System.out.println();
					}//end for num file
					System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("END BRIDGES");	
	}
}

