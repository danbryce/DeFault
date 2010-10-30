package edu.usu.cs.ka.oldsystems.incompletecompleteagentsim;

import java.io.*;

public class Tester 
{
	static FileWriter fstream;
	static BufferedWriter out;	
	static File file = new File("Output/TrialOutput.txt");

	private static final int numFiles = 10;

	public static void main (String[] args)
	{
		//[0]<domain-pddl-file>
		//[1]<problem-pddl-file>
		//[2]<seed(int)> - for seed of sim version of actions - [0-9]
		//[3]<planner ["solvableCheck" | "length" | "pode1"]>  
			
		try{
			fstream = new FileWriter(file, true);
			out = new BufferedWriter(fstream);
		}catch(Exception e){System.out.println("Error opening file."); System.exit(1);}
						
		int maxGridSize = 32;
		String[] args2 = new String[4];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
		String[] algorithms = {"solvableCheck", "random","length","pode1"};

		for(int v = 1; v <= 3; v++) 
		{
			for(int gridSize = 2; gridSize <= 2; gridSize*=2) //32
			{
				for(double bridgeDensity = 0.0; bridgeDensity <= 0.0; bridgeDensity += 0.25) //1.0
				{
					for(int k = 1; k <= 1; k++) //numFiles
					{
						args2[0] = pathToDomains + "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
						args2[1] = pathToProblems + "bridges_problem" + extension;
						
						for(int simSeed = 0; simSeed < 1; simSeed++) //10
						{
							args2[2] = Integer.toString(simSeed);
							try{out.append( args[0] + "_"  //domain file - contains v?, size, density of bridges, #seed of that domain
										  + args[2] + " "  //seed for sim version of actions
										  + args[3] + " "  //planner type
										  );
							}catch(Exception e){System.out.println("Error writing to file.");}
							
							for(int alg = 0; alg < algorithms.length; alg++) 
							{
								args2[3] = algorithms[alg];
								ExplorationLearningTrial_random_length_pode1_solvableTest.main(args2);
							}
						}
						try{out.append("\n");}catch(Exception e){System.out.println("Error writing to file.");}
						System.out.println();
					}	
				}
			}
		}
	}
	
}
