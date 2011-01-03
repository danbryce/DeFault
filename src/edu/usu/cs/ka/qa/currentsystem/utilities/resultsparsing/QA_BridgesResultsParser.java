package edu.usu.cs.ka.qa.currentsystem.utilities.resultsparsing;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.LinkedList;
import java.util.Scanner;

public class QA_BridgesResultsParser 
{
	static String directory = "/Users/CHW/Desktop/";
	static String resultsFolder = "Results/";
	
	public static void main(String[] args) 
	{
		BridgesResults();
	}
	
	//bridges_v2_length_16_0.0_10.txt
	//<domain_simSeed> <2^#initialPossFeatures>
	//<*TYPE_QA*> <TYPE_AGENT> <PLANNER> <#plannerCalls> <(#pcDuringExecution)>
	//<#actions> <#failedActions> <totalTime> <2^#remainingPossFeatures> 
	//<#QsAsked> <#risksLearnedQA> <#risksLearnedPL>
	//TYPES_QA = NONE, ALL, ALL_IN_PLAN, ALL_IN_PFE
	static void BridgesResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> resultsNONE = new LinkedList<String>();
		LinkedList<String> resultsALL = new LinkedList<String>();
		LinkedList<String> resultsALL_IN_PLAN = new LinkedList<String>();
		LinkedList<String> resultsALL_IN_PFE = new LinkedList<String>();
		
		LinkedList<String> metaResults = new LinkedList<String>();
		
		System.out.println("\nBridges///////////////////////////////////////////");
		
		int instanceCount = 10;
		int maxGridSize = 4;

		for (int gridSize = 4; gridSize <= maxGridSize; gridSize *= 2) 
		{
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(int v = 1; v <=3; v++)
				{
					for(double density = 0.0; density <= 1.0; density +=.25)
					{
						String filename = "";
						filename += "bridges_";
						filename += "v" + v + "_";
						filename += gridSize + "_";
						filename += density + "_";
						filename += instance;
						filename += ".txt";
						
						File file = new File(directory + resultsFolder + filename);
						
						String metaResult = filename + " ";
						
						int countSuccesses = 0;
						boolean completed = false;
						String totalTime = "";
						
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								System.out.println();
								String line = scanner.nextLine();
								System.out.print(line);
								if(line.contains("bridges") && !line.contains("File"))
								{
									countSuccesses++;
									
									results.add(line);
									line = scanner.nextLine();
									resultsNONE.add(line);
									line = scanner.nextLine();
									resultsALL.add(line);
									line = scanner.nextLine();
									resultsALL_IN_PLAN.add(line);
									line = scanner.nextLine();
									resultsALL_IN_PFE.add(line);
								}
								
								if(line.contains("totalTime") && !line.contains("<*TYPE_QA*>"))
								{
									int colonLocation = line.indexOf(":");
									totalTime = line.substring(colonLocation);
									completed = true;
								}
							}
								
						} catch (FileNotFoundException e) {metaResult += "DNE";}	
												
						if(!metaResult.contains("DNE"))
							metaResult += countSuccesses;

						if(completed)
							metaResult += " " + totalTime;
						else if(!completed && !metaResult.contains("DNE"))
							metaResult += " DNF";
						
						metaResults.add(metaResult);
					}
				}
			}
		}

		System.out.println("\n\nMETARESULTS****************************************");
		for(String r : metaResults)
			System.out.println(r);
		System.out.println("END METARESULTS************************************");

		System.out.println();
		System.out.println("RESULTS********************************************");
		for(int i = 0; i < results.size(); i++)
		{
			System.out.println(results.get(i));
			System.out.println("\t" + resultsNONE.get(i));
			System.out.println("\t" + resultsALL.get(i));
			System.out.println("\t" + resultsALL_IN_PLAN.get(i));
			System.out.println("\t" + resultsALL_IN_PFE.get(i));
		}
		System.out.println("END RESULTS****************************************");

		System.out.println("\nEND Bridges///////////////////////////////////////\n");
	}

}




