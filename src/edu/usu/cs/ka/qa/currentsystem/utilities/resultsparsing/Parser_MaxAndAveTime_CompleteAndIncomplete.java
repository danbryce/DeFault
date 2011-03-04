package edu.usu.cs.ka.qa.currentsystem.utilities.resultsparsing;
import java.util.*;
import java.io.*;
import java.text.*;

/**
 * Outputs the times for each solver for domains/problems
 *  in a logical order of size grid or problem number by max first.
 * 
 * Uses files in this directory location:
 * /Users/CHW/Desktop/PRP_Results/
 */
public class Parser_MaxAndAveTime_CompleteAndIncomplete 
{	
	static String directory = "/Users/CHW/Desktop/KA_Bryce_&_REX-Work_&_Results/Results_Planner_Raw_Performance/";
	
	static String[] algorithms = {"pode1", "jdd", "length"};
	
	public static void main(String[] args) 
	{
		HoboNavMaxTime();
		ParcPrinterMaxTime();
		PathwaysMaxTime();
		BridgesMaxTimeNew();
	}
	
	//hobonav_2_7_0.25_1_pode2.txt
	static void HoboNavMaxTime()
	{
		System.out.println("HoboNav - by gridSize (2, 4, 8, 16)");
		
		int instanceCount = 10;
		int maxGridSize = 8;
		
		int[] itemCounts = { 1, 2, 4 };
		
		LinkedList<LinkedList<String>> resultsAmirComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsAmirIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDIncomplete = new LinkedList<LinkedList<String>>();
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSizeAmirComplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeAmirIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDIncomplete = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(double density = 0.0; density <= 1.0; density +=.25)
				{
					for(int itemCount: itemCounts)
					{
						String filename = "";
						filename += "hobonav_";
						filename += gridSize + "_";
						filename += density + "_";
						filename += itemCount + "_";
						filename += instance;
						filename += ".txt";
						
						File file = new File(directory + filename);
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();
								if(line.contains("testfiles") && !line.contains("xception"))
								{
									String[] st = line.split(" ");
									
									if(!st[4].equals("?") && !st[14].equals("?") && !st[4].equals("T") && !st[14].equals("T"))
									{
										resultForSizeAmirComplete.add(st[4]);
										resultForSizeAmirIncomplete.add(st[14]);
									}
									
									if(!st[7].equals("?") && !st[17].equals("?") && !st[7].equals("T") && !st[17].equals("T"))
									{
										resultForSizePodeComplete.add(st[7]);
										resultForSizePodeIncomplete.add(st[17]);
									}
									
									if(!st[10].equals("?") && !st[20].equals("?") && !st[10].equals("T") && !st[20].equals("T"))
									{
										resultForSizeJDDComplete.add(st[10]);
										resultForSizeJDDIncomplete.add(st[20]);
									}
								}
							}
						} catch (FileNotFoundException e) {}	
					}
				}
			}
			resultsAmirComplete.add(resultForSizeAmirComplete);
			resultsPodeComplete.add(resultForSizePodeComplete);
			resultsJDDComplete.add(resultForSizeJDDComplete);
			resultsAmirIncomplete.add(resultForSizeAmirIncomplete);
			resultsPodeIncomplete.add(resultForSizePodeIncomplete);
			resultsJDDIncomplete.add(resultForSizeJDDIncomplete);
		}
		
		processAndPrint(resultsAmirComplete,   resultsPodeComplete,   resultsJDDComplete,
				resultsAmirIncomplete, resultsPodeIncomplete, resultsJDDIncomplete);	
	}
	
	//parcprinter_pode3_22_6.txt
	static void ParcPrinterMaxTime()
	{
		System.out.println("ParcPrinter - by fileNumber (1-30)");
		
		int numFiles = 30;
		int instances = 10;
		
		LinkedList<LinkedList<String>> resultsAmirComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsAmirIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDIncomplete = new LinkedList<LinkedList<String>>();
		for(int ppFile = 1; ppFile <= numFiles; ppFile++)
		{
			LinkedList<String> resultForSizeAmirComplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeAmirIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDIncomplete = new LinkedList<String>();	
			for(int instance = 1; instance <= instances; instance++)
			{
				String filename = "";
				filename += "parcprinter_";
				
				if(ppFile < 10) filename +="0";	
				filename += ppFile + "_";
				
				filename += instance;
				filename += ".txt";
				
				File file = new File(directory + filename);
				try 
				{
					Scanner scanner = new Scanner(file);
					while (scanner.hasNextLine()) 
					{
						String line = scanner.nextLine();
						if(line.contains("testfiles") && !line.contains("xception"))
						{
							String[] st = line.split(" ");
							
							if(!st[4].equals("?") && !st[14].equals("?") && !st[4].equals("T") && !st[14].equals("T"))
							{
								resultForSizeAmirComplete.add(st[4]);
								resultForSizeAmirIncomplete.add(st[14]);
							}
							
							if(!st[7].equals("?") && !st[17].equals("?") && !st[7].equals("T") && !st[17].equals("T"))
							{
								resultForSizePodeComplete.add(st[7]);
								resultForSizePodeIncomplete.add(st[17]);
							}
							
							if(!st[10].equals("?") && !st[20].equals("?") && !st[10].equals("T") && !st[20].equals("T"))
							{
								resultForSizeJDDComplete.add(st[10]);
								resultForSizeJDDIncomplete.add(st[20]);
							}
						}
					}
				} catch (FileNotFoundException e) {}	
			}
			resultsAmirComplete.add(resultForSizeAmirComplete);
			resultsPodeComplete.add(resultForSizePodeComplete);
			resultsJDDComplete.add(resultForSizeJDDComplete);
			resultsAmirIncomplete.add(resultForSizeAmirIncomplete);
			resultsPodeIncomplete.add(resultForSizePodeIncomplete);
			resultsJDDIncomplete.add(resultForSizeJDDIncomplete);
		}
		
		processAndPrint(resultsAmirComplete,   resultsPodeComplete,   resultsJDDComplete,
				resultsAmirIncomplete, resultsPodeIncomplete, resultsJDDIncomplete);	
	}
	
	//pathways_p01_0.0_jdd_1.txt
	static void PathwaysMaxTime()
	{
		System.out.println("Pathways - by problem (1-20)");
		
		int problemCount = 20;
		Double [] density = {.0, .01, .25, .5, .75, 1.0};
		int instanceCount = 10;
		
		LinkedList<LinkedList<String>> resultsAmirComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsAmirIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDIncomplete = new LinkedList<LinkedList<String>>();
		for (int pCounter = 1; pCounter <= problemCount; pCounter++) 
		{
			LinkedList<String> resultForSizeAmirComplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeAmirIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDIncomplete = new LinkedList<String>();
			for(Double d : density)
			{
				for(int instance = 1; instance <= instanceCount; instance++)
				{
					String filename = "";
					filename += "pathways_p";
					
					if(pCounter < 10) filename += "0";
					filename += pCounter + "_";
					filename += d + "_";							
					filename += instance;
					filename += ".txt";
					
					File file = new File(directory + filename);
					try 
					{
						Scanner scanner = new Scanner(file);
						while (scanner.hasNextLine()) 
						{
							String line = scanner.nextLine();
							
							if(line.contains("testfiles") && !line.contains("xception"))
							{
								String[] st = line.split(" ");
								
								if(!st[4].equals("?") && !st[14].equals("?") && !st[4].equals("T") && !st[14].equals("T"))
								{
									resultForSizeAmirComplete.add(st[4]);
									resultForSizeAmirIncomplete.add(st[14]);
								}
								
								if(!st[7].equals("?") && !st[17].equals("?") && !st[7].equals("T") && !st[17].equals("T"))
								{
									resultForSizePodeComplete.add(st[7]);
									resultForSizePodeIncomplete.add(st[17]);
								}
								
								if(!st[10].equals("?") && !st[20].equals("?") && !st[10].equals("T") && !st[20].equals("T"))
								{
									resultForSizeJDDComplete.add(st[10]);
									resultForSizeJDDIncomplete.add(st[20]);
								}
							}
						}
					} catch (FileNotFoundException e) {}	
				}
			}
			resultsAmirComplete.add(resultForSizeAmirComplete);
			resultsPodeComplete.add(resultForSizePodeComplete);
			resultsJDDComplete.add(resultForSizeJDDComplete);
			resultsAmirIncomplete.add(resultForSizeAmirIncomplete);
			resultsPodeIncomplete.add(resultForSizePodeIncomplete);
			resultsJDDIncomplete.add(resultForSizeJDDIncomplete);
		}
		
		processAndPrint(resultsAmirComplete,   resultsPodeComplete,   resultsJDDComplete,
				resultsAmirIncomplete, resultsPodeIncomplete, resultsJDDIncomplete);	
	}
	
	//bridges_v2_length_16_0.0_10.txt
	static void BridgesMaxTimeNew()
	{
		System.out.println("Bridges_new - by gridSize (2, 4, 8, 16)");
		
		int instanceCount = 10;
		int maxGridSize = 16;
		
		LinkedList<LinkedList<String>> resultsAmirComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDComplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsAmirIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPodeIncomplete = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDDIncomplete = new LinkedList<LinkedList<String>>();
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSizeAmirComplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDComplete = new LinkedList<String>();
			LinkedList<String> resultForSizeAmirIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizePodeIncomplete = new LinkedList<String>();
			LinkedList<String> resultForSizeJDDIncomplete = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(int v = 1; v <= 3; v++)
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
						
						File file = new File(directory + filename);
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();
								if(line.contains("testfiles") && !line.contains("xception"))
								{
									String[] st = line.split(" ");
									
									if(!st[4].equals("?") && !st[14].equals("?") && !st[4].equals("T") && !st[14].equals("T"))
									{
										resultForSizeAmirComplete.add(st[4]);
										resultForSizeAmirIncomplete.add(st[14]);
									}
									
									if(!st[7].equals("?") && !st[17].equals("?") && !st[7].equals("T") && !st[17].equals("T"))
									{
										resultForSizePodeComplete.add(st[7]);
										resultForSizePodeIncomplete.add(st[17]);
									}
									
									if(!st[10].equals("?") && !st[20].equals("?") && !st[10].equals("T") && !st[20].equals("T"))
									{
										resultForSizeJDDComplete.add(st[10]);
										resultForSizeJDDIncomplete.add(st[20]);
									}
								}
							}
						} catch (FileNotFoundException e) {System.out.println(filename + " DNE");}	
					}
				}
			}
			resultsAmirComplete.add(resultForSizeAmirComplete);
			resultsPodeComplete.add(resultForSizePodeComplete);
			resultsJDDComplete.add(resultForSizeJDDComplete);
			resultsAmirIncomplete.add(resultForSizeAmirIncomplete);
			resultsPodeIncomplete.add(resultForSizePodeIncomplete);
			resultsJDDIncomplete.add(resultForSizeJDDIncomplete);
		}
		
		processAndPrint(resultsAmirComplete,   resultsPodeComplete,   resultsJDDComplete,
						resultsAmirIncomplete, resultsPodeIncomplete, resultsJDDIncomplete);
	}
	
	public static void processAndPrint(LinkedList<LinkedList<String>> one,  LinkedList<LinkedList<String>> two,  LinkedList<LinkedList<String>> three,
								LinkedList<LinkedList<String>> four, LinkedList<LinkedList<String>> five, LinkedList<LinkedList<String>> six    )
	{
		LinkedList<LinkedList<Double>> doubleResultsAmirComplete   = convertToLLofLLsDouble(one);	
		LinkedList<LinkedList<Double>> doubleResultsPodeComplete   = convertToLLofLLsDouble(two);	
		LinkedList<LinkedList<Double>> doubleResultsJDDComplete    = convertToLLofLLsDouble(three);		
		LinkedList<LinkedList<Double>> doubleResultsAmirIncomplete = convertToLLofLLsDouble(four);		
		LinkedList<LinkedList<Double>> doubleResultsPodeIncomplete = convertToLLofLLsDouble(five);
		LinkedList<LinkedList<Double>> doubleResultsJDDIncomplete  = convertToLLofLLsDouble(six);
		
		for(int i = 0; i < doubleResultsAmirComplete.size(); i++)
		{
			System.out.println("\n" + "*" + i + " \\\\\\");
			
			double totalA_C = 0;
			double totalP_C = 0;
			double totalJ_C = 0;
			for(Double time : doubleResultsAmirComplete.get(i))
				totalA_C += time;
			
			for(Double time : doubleResultsPodeComplete.get(i))
				totalP_C += time;
			
			for(Double time : doubleResultsJDDComplete.get(i))
				totalJ_C += time;
			
			double totalA_Inc = 0;
			double totalP_Inc = 0;
			double totalJ_Inc = 0;
			for(Double time : doubleResultsAmirIncomplete.get(i))
				totalA_Inc += time;
			
			for(Double time : doubleResultsPodeIncomplete.get(i))
				totalP_Inc += time;
			
			for(Double time : doubleResultsJDDIncomplete.get(i))
				totalJ_Inc += time;
			
			DecimalFormat df = new DecimalFormat("#0.0000");
			
			if(doubleResultsAmirComplete.get(i).size() != 0)
			{
				String average = df.format(totalA_C/doubleResultsAmirComplete.get(i).size());
				System.out.print(    "Average time Amir_C   (" + doubleResultsAmirComplete.get(i).size() + "): " + average);
				System.out.println("  Max time Amir_C  : " + doubleResultsAmirComplete.get(i).get(0) + " " + doubleResultsAmirComplete.get(i).toString());
			}
			if(doubleResultsAmirIncomplete.get(i).size() != 0)
			{
				String average = df.format(totalA_Inc/doubleResultsAmirIncomplete.get(i).size());
				System.out.print(    "Average time Amir_Inc (" + doubleResultsAmirIncomplete.get(i).size() + "): " + average);
				System.out.println("  Max time Amir_Inc: " + doubleResultsAmirIncomplete.get(i).get(0) + " " + doubleResultsAmirIncomplete.get(i).toString());
			}
			System.out.println();
			if(doubleResultsPodeComplete.get(i).size() != 0)
			{
				String average = df.format(totalP_C/doubleResultsPodeComplete.get(i).size());
				System.out.print(    "Average time Pode_C   (" + doubleResultsPodeComplete.get(i).size() + "): " + average);
				System.out.println("  Max time Pode_C  : " + doubleResultsPodeComplete.get(i).get(0) + " " + doubleResultsPodeComplete.get(i).toString());
			}
			if(doubleResultsPodeIncomplete.get(i).size() != 0)
			{
				String average = df.format(totalP_Inc/doubleResultsPodeIncomplete.get(i).size());
				System.out.print(    "Average time Pode_Inc (" + doubleResultsPodeIncomplete.get(i).size() + "): " + average);
				System.out.println("  Max time Pode_Inc: " + doubleResultsPodeIncomplete.get(i).get(0) + " " + doubleResultsPodeIncomplete.get(i).toString());
			}
			System.out.println();
			if(doubleResultsJDDComplete.get(i).size() != 0)
			{
				String average = df.format(totalJ_C/doubleResultsJDDComplete.get(i).size());
				System.out.print(    "Average time JDD_C    (" + doubleResultsJDDComplete.get(i).size() + "): " + average);
				System.out.println("  Max time JDD_C   : " + doubleResultsJDDComplete.get(i).get(0) + " " + doubleResultsJDDComplete.get(i).toString());
			}
			if(doubleResultsJDDIncomplete.get(i).size() != 0)
			{
				String average = df.format(totalJ_Inc/doubleResultsJDDIncomplete.get(i).size());
				System.out.print(    "Average time JDD_Inc  (" + doubleResultsJDDIncomplete.get(i).size() + "): " + average);
				System.out.println("  Max time JDD_Inc : " + doubleResultsJDDIncomplete.get(i).get(0) + " " + doubleResultsJDDIncomplete.get(i).toString());
			}
			System.out.println();
		}
		
		System.out.println();
	}
	
	public static LinkedList<LinkedList<Double>> convertToLLofLLsDouble(LinkedList<LinkedList<String>> LLLL_S)
	{
		LinkedList<LinkedList<Double>> doubleResults = new LinkedList<LinkedList<Double>>();
		for(LinkedList<String> r : LLLL_S)
		{	
			LinkedList<Double> doubleResultForSize = new LinkedList<Double>();
			for(String s : r)
				doubleResultForSize.add(Double.valueOf(s));
			
			Collections.sort(doubleResultForSize);
			Collections.reverse(doubleResultForSize);
			
			doubleResults.add(doubleResultForSize);
		}
		
		return doubleResults;	
	}
	
}

