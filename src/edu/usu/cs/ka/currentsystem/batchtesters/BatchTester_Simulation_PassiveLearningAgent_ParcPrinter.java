package edu.usu.cs.ka.currentsystem.batchtesters;

import edu.usu.cs.ka.currentsystem.simulator.Simulation;

public class BatchTester_Simulation_PassiveLearningAgent_ParcPrinter 
{
	private static final int numFiles = 10;

	public static void main (String[] args)
	{				
		int maxGridSize = 8;
		args = new String[3];
		String pathToDomains = "testfiles/incomplete/parcprinter/";
		String pathToProblems = "testfiles/incomplete/parcprinter/";
		String extension = ".pddl";
		
		int[] problemNumbers = { 1,  2,  3,  4,  5, 11, 12, 13, 21, 22, 23, 24};
		int[] timeLimits	 = { 5, 10, 15, 15, 25,  5, 30, 20,  5, 30, 15, 35};
			
		//Just mess around with the for loop values...
		//for(int i = 0; i < 1; i++)
		for(int i = 0; i < problemNumbers.length; i++)
		{
			for(int instance = 1; instance <= 10; instance++)
			{
				String fileName = "p";
				if(problemNumbers[i] < 10) fileName += "0";
				fileName += problemNumbers[i];
				fileName += "_" + instance;
				
				args[0] = pathToDomains + fileName +"-domain-incomplete" + extension;
				args[1] = pathToProblems + fileName +"-problem-incomplete" + extension;
				args[2] = String.valueOf(timeLimits[i]);

				try{ Simulation.main(args); }
				catch(Error e){ System.out.println("\nError\n"); e.printStackTrace(); }

				//System.out.println();
			}//end for version
			//System.out.println();
		}//end for size
		
		System.out.println("DONE");
	}
}

