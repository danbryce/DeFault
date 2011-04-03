package edu.usu.cs.ka.qa.currentsystem.batchtesters;

import edu.usu.cs.ka.qa.currentsystem.simulator.SimulationPLQAF;

public class BatchTester_SimulationPLQAF 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{	
//		System.out.println("<domain_simSeed> <2^#initialPossFeatures>");
//		System.out.print("<TYPE_QA> <TYPE_AGENT> <PLANNER> <#plannerCalls> <#plannerCallsDuringExecution> ");
//		System.out.print("<#actions> <#failedActions> <totalTime> <2^#remainingPossFeatures> ");
//		System.out.println("<#QsAsked> <#risksLearnedQA> <#risksLearnedPL> ");
		
		//testBridges();
		//testParcPrinter();
		//testPathways();
		testHoboNav();
	}			

	//bridges_v2_4_0.75_2.pddl_34
	public static void testBridges()
	{
		int maxGridSize = 8;
		String[] args = new String[2];
		String path = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
			
		//Just mess around with the for loop values...
		for(int gridSize = 2; gridSize <= 4; gridSize *= 2) //2-32
		{
			for(double bridgeDensity = .25; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
			{	
				for(int version = 1; version <= 3; version++)//1-3
				{
					for(int numFile = 1; numFile <= 10; numFile++) //numFiles 1-10
					{
						args[0] = path + "bridges_v" + version + "_" + gridSize + "_" + bridgeDensity + "_" + numFile + extension;
						args[1] = path + "bridges_problem" + extension;
						
						if(bridgeDensity == 1.0 && numFile != 1)
							continue;
						else
						{
							try{ SimulationPLQAF.main(args); }
							catch(Error e){ System.out.println("\nError in BatchTester testBridges\n"); e.printStackTrace(); }
						}
						
						//System.out.println();
					}//end for num file
					//System.out.println();
				}//end for bridge density
			}//end for version
		}//end for size
		
		System.out.println("DONE");
	}
	
	public static void testParcPrinter()
	{
		int maxGridSize = 8;
		String[] args = new String[2];
		String pathToDomains = "testfiles/incomplete/parcprinter/";
		String pathToProblems = "testfiles/incomplete/parcprinter/";
		String extension = ".pddl";
		
		int[] problemNumbers = { 1,  2,  3,  4,  5, 11, 12, 13, 21, 22, 23, 24};
		int[] timeLimits	 = { 5, 10, 15, 15, 25,  5, 30, 20,  5, 30, 15, 35};
			
		//Just mess around with the for loop values...
		//for(int i = 0; i < 1; i++)
		//for(int i = 1; i < problemNumbers.length; i++)
		for(int i = 1; i < 2; i++)
		{
			for(int instance = 4; instance <= 4; instance++)
			//for(int instance = 1; instance <= 10; instance++)
			{
				for(double density = .25; density <= 1.0; density +=.25)
				{	
					String fileName = "p";
					if(problemNumbers[i] < 10) 
						fileName += "0";
					fileName += problemNumbers[i] + "_";
					fileName += instance + "_";
					fileName += density;
					
					args[0] = pathToDomains + fileName +"-domain-incomplete" + extension;
					args[1] = pathToProblems + fileName +"-problem-incomplete" + extension;
	
					try{ SimulationPLQAF.main(args); }
					catch(Error e){ System.out.println("\nError in BatchTester testPP\n"); e.printStackTrace(); }
				}

				//System.out.println();
			}//end for version
			//System.out.println();
		}//end for size
		
		System.out.println("DONE");
	}

	public static void testPathways()
	{
		int problemCount = 20;
		int instanceCount = 10;
		
		String path = "testfiles/incomplete/pathways/";
		
		String[] args = new String[2];
		
		for (int pCounter = 1; pCounter <= problemCount; pCounter++) 
		{
			for(double density = .25; density <= 1.0; density += 0.25)
			{
				for(int instance = 1; instance <= instanceCount; instance++)
				{
					String dFilename = path;
					dFilename += "domain_p";
					
					if(pCounter < 10) dFilename += "0";
					dFilename += pCounter + "_";
					dFilename += density + "_";							
					dFilename += instance;
					dFilename += ".pddl";
					
					String pFilename = path + "p";
					if(pCounter < 10)
						pFilename += "0";
					pFilename += pCounter + ".pddl";
					
					args[0] = dFilename;
					args[1] = pFilename;
					
					try{ SimulationPLQAF.main(args); }
					catch(Error e){ System.out.println("\nError in BatchTester testPathways\n"); e.printStackTrace(); }
				}
			}
		}
	}

	//bridges_v2_4_0.75_2.pddl_34
	public static void testHoboNav()
	{
		String[] args = new String[2];
		String path = "testfiles/incomplete/hobonav/";
		String extension = ".pddl";
		
		int[] itemCounts = {1,2,4};
		//int[] itemCounts = {4};
		//int[] itemCounts = {1};
		//int[] itemCounts = {2};
			
		//Just mess around with the for loop values...
		for (int gridSize = 2; gridSize <= 4; gridSize *= 2) //from 2 to 32
		{
			for(int instance = 1; instance <= 10; instance++)//from 1 to 10
			{
				for(double density = .25; density <= 1.0; density +=.25)//from .25 to 1.0
				{
					for(int itemCount: itemCounts)
					{
						String filename = "";
						filename += "hobonav_";
						filename += gridSize + "_";
						filename += density + "_";
						filename += itemCount + "_";
						filename += instance;
						filename += extension;
						args[0] = path + filename;
						args[1] = path + "hobonav_problem_" + gridSize + extension;
						
						if(density == 1.0 && instance != 1)
							continue;
						else
						{
							try{ SimulationPLQAF.main(args); }
							catch(Error e){ System.out.println("\nError in BatchTester testHobonav\n"); e.printStackTrace(); }
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