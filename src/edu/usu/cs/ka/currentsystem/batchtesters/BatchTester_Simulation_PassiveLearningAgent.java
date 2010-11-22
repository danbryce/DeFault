package edu.usu.cs.ka.currentsystem.batchtesters;

import edu.usu.cs.ka.currentsystem.simulator.Simulation_PassiveLearningAgent;

public class BatchTester_Simulation_PassiveLearningAgent 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 16;
		args = new String[4];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
		
		String[] agentType = {"RG"/*, "CL"*/};
	
		System.out.println("<domainFile_simSeed> <initial#Models> (3x:) <planner> <#TimesPlannerCalled> <Total#Actions> <#failedActions> <totalTime> <final#Models>");
		System.out.println("*: s = s', S v F case.");
		System.out.println("%: possPre combo already failed.");
		System.out.println("$: failed in past.");
		System.out.println("&: fail in future.");
		System.out.println("@: endless loop detected.");
		System.out.println("!: negative exponent exception.\n");
		
		//Just mess around with the for loop values...
		for(int gridSize = 4; gridSize <= 4; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = 0.75; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 1; version <= 3; version++)//1-3
				{
					for(int numFile = 1; numFile <= 10; numFile++) //numFiles 1-10
					{
						for(int simSeed = 0; simSeed < 10000 && Simulation_PassiveLearningAgent.numSuccesses < 10; simSeed++)
						{	
							//Hanging domains with bridges_problem - using jdd planner
							if(gridSize == 4 && bridgeDensity == .5 && version == 1 && numFile == 1 && simSeed == 3) {}
							else if(gridSize == 4 && bridgeDensity == .5 && version == 1 && numFile == 2 && simSeed == 15) {}
							else if(gridSize == 4 && bridgeDensity == .5 && version == 1 && numFile == 8 && simSeed == 7) {}//solves in 973 secs
							else if(gridSize == 4 && bridgeDensity == .5 && version == 1 && numFile == 8 && simSeed == 12) {}
							else if(gridSize == 4 && bridgeDensity == .5 && version == 1 && numFile == 8 && simSeed == 17) {}
							else if(gridSize == 4 && bridgeDensity == .5 && version == 2 && numFile == 2 && simSeed == 18) {}//hangs on pode1
							else if(gridSize == 4 && bridgeDensity == .5 && version == 2 && numFile == 4 && simSeed == 3) {}//hangs on pode1
							else if(gridSize == 4 && bridgeDensity == .5 && version == 2 && numFile == 6 && simSeed == 209) {}
							else if(gridSize == 4 && bridgeDensity == .5 && version == 2 && numFile == 6 && simSeed == 694) {}
							else if(gridSize == 4 && bridgeDensity == .5 && version == 2 && numFile == 8 && simSeed == 18) {}
							
							//Hanging domains with bridges_problem_version - using jdd planner
							//if(gridSize == 4 && bridgeDensity == 1.0 && version == 2 && numFile == 1 && simSeed == 4530) {}
							else
							{
								args[0] = pathToDomains + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
								args[1] = pathToProblems + "bridges_problem" + extension;
								args[2] = String.valueOf(simSeed);
								
								for(int agent = 0; agent < agentType.length; agent++)
								{
									args[3] = agentType[agent];
									
									try{ Simulation_PassiveLearningAgent.main(args); }
									catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }
								
									//System.runFinalization();
									//System.gc();
								}
							}
						}//end for seed
						
						if(Simulation_PassiveLearningAgent.numSuccesses == 0)
							System.out.println(args[0]);
						else
							Simulation_PassiveLearningAgent.numSuccesses = 0;
						
						System.out.println();	
					}//end for num file
					System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
}

