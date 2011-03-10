package edu.usu.cs.ka.qa.currentsystem.utilities.resultsparsing;
import java.util.*;
import java.io.*;

/**
 * Outputs the times for each solver for domains/problems
 *  in a logical order of size grid or problem number by max first.
 * 
 * Uses Bryce files in these folders:
 * ~/.../out_112110/
 * ~/.../out_112210_newBridges/
 */
public class Parser_AveTime_Incomplete 
{	
	static String directory = "/Users/CHW/Desktop/DB work - 3.4.11/";
	static String subDirectory = "out/";
	
	static String[] algorithms = {"jdd", "length", "pode1"};
	
	public static void main(String[] args) 
	{
		//ParcPrinterMaxTime();
		PathwaysMaxTime();
		//HoboNavMaxTime();
		//BridgesMaxTime();
	}
	
	//parcprinter_pode3_22_6.txt
	static void ParcPrinterMaxTime()
	{
		System.out.println("ParcPrinter - by fileNumber (1-30)");
		
		int instances = 10;
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		int[] numFiles = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30};
		
		for(int ppFile : numFiles)
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			
			for (String algorithm : algorithms) 
			{	
				for(int instance = 1; instance <= instances; instance++)
				{
					for(double density = 0.25; density <= 1.0; density +=.25)
					{
						String filename = "";
						filename += "parcprinter_";
						filename += algorithm + "_";
						
						if(ppFile < 10) filename +="0";	
						filename += ppFile + "_";
						
						filename += instance + "_";
						filename += density;
						filename += ".txt";
						
						File file = new File(directory + subDirectory + filename);
						
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();							
								if(line.contains("Elapsed time:"))
								{
									String[] st = line.split(" ");
									if(algorithm.equals("length")) resultForSizeAmir.add(st[2]);
									if(algorithm.equals("pode1")) resultForSizePode.add(st[2]);
									if(algorithm.equals("jdd")) resultForSizeJDD.add(st[2]);
								}
							}
						} catch (FileNotFoundException e) {}
					}
				}
			}
			resultsAmir.add(resultForSizeAmir);
			resultsPode.add(resultForSizePode);
			resultsJDD.add(resultForSizeJDD);
		}
		
		processResultsAndPrint(resultsAmir, resultsPode, resultsJDD, numFiles);
	}
	
	//pathways_p01_0.0_jdd_1.txt
	static void PathwaysMaxTime()
	{
		System.out.println("Pathways - by problem (1-20)");
		
		int problemCount = 20;
		Double [] density = {.0, .01, .25, .5, .75, 1.0};
		int[] numProblems = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
		int instanceCount = 10;
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for(int pFileNum : numProblems)
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			for (String algorithm : algorithms) 
			{
				for(Double d : density)
				{
					for(int instance = 1; instance <= instanceCount; instance++)
					{
						String filename = "";
						filename += "pathways_p";
						
						if(pFileNum < 10) filename += "0";
						filename += pFileNum + "_";
						filename += d + "_";
						filename += algorithm + "_";							
						filename += instance;
						filename += ".txt";
						
						File file = new File(directory + subDirectory + filename);			
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();							
								if(line.contains("Elapsed time:"))
								{
									String[] st = line.split(" ");
									//System.out.println(st[2]);
									if(algorithm.equals("length")) resultForSizeAmir.add(st[2]);
									if(algorithm.equals("pode1")) resultForSizePode.add(st[2]);
									if(algorithm.equals("jdd")) resultForSizeJDD.add(st[2]);
								}
							}
						} catch (FileNotFoundException e) {}	
					}
				}
			}
			resultsAmir.add(resultForSizeAmir);
			resultsPode.add(resultForSizePode);
			resultsJDD.add(resultForSizeJDD);
		}
		
		processResultsAndPrint(resultsAmir, resultsPode, resultsJDD, numProblems);
	}

	//hobonav_2_7_0.25_1_pode2.txt
	static void HoboNavMaxTime()
	{
		System.out.println("HoboNav - by gridSize (2, 4, 8, 16, 32, 64)");
		
		int[] sizes = {2,4,8,16,32,64};
		int instanceCount = 10;
		int[] itemCounts = { 1, 2, 4 };
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for (int gridSize : sizes) 
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(double density = 0.25; density <= 1.0; density +=.25)
				{
					for(int itemCount: itemCounts)
					{
						for (String algorithm : algorithms) 
						{
							String filename = "";
							filename += "hobonav_";
							filename += gridSize + "_";
							filename += instance + "_";
							filename += density + "_";
							filename += itemCount + "_";
							filename += algorithm;
							filename += ".txt";
							
							File file = new File(directory + subDirectory + filename);
							
							try 
							{
								Scanner scanner = new Scanner(file);
								while (scanner.hasNextLine()) 
								{
									
									String line = scanner.nextLine();
									
									if(line.contains("Elapsed time:"))
									{
										String[] st = line.split(" ");
										
										if(algorithm.equals("length")) resultForSizeAmir.add(st[2]);
										if(algorithm.equals("pode1")) resultForSizePode.add(st[2]);
										if(algorithm.equals("jdd")) resultForSizeJDD.add(st[2]);
										
									}
								}
							} catch (FileNotFoundException e) {}	
						}
					}
				}
			}
			resultsAmir.add(resultForSizeAmir);
			resultsPode.add(resultForSizePode);
			resultsJDD.add(resultForSizeJDD);
		}
				
		processResultsAndPrint(resultsAmir, resultsPode, resultsJDD, sizes);
	}
	
	//bridges_v2_length_16_0.0_10.txt
	static void BridgesMaxTime()
	{
		System.out.println("Bridges - by gridSize (2, 4, 8, 16, 32)");
		
		int[] sizes = {2,4,8,16,32};
		int instanceCount = 10;
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for (int gridSize : sizes) 
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(int v = 1; v <=3; v++)
				{
					for(double density = .25; density <= 1.0; density +=.25)
					{
						for (String algorithm : algorithms) 
						{
							String filename = "";
							filename += "bridges_";
							filename += "v" + v + "_";
							filename += algorithm + "_";
							filename += gridSize + "_";
							filename += density + "_";
							filename += instance;
							filename += ".txt";
							
							File file = new File(directory + subDirectory + filename);	
							try 
							{
								Scanner scanner = new Scanner(file);
								while (scanner.hasNextLine()) 
								{
									String line = scanner.nextLine();							
									if(line.contains("Elapsed time:"))
									{
										String[] st = line.split(" ");
										//System.out.println(st[2]);
										if(algorithm.equals("length")) resultForSizeAmir.add(st[2]);
										if(algorithm.equals("pode1")) resultForSizePode.add(st[2]);
										if(algorithm.equals("jdd")) resultForSizeJDD.add(st[2]);
									}
								}
							} catch (FileNotFoundException e) {}	
						}
					}
				}
			}
			resultsAmir.add(resultForSizeAmir);
			resultsPode.add(resultForSizePode);
			resultsJDD.add(resultForSizeJDD);
		}
		
		processResultsAndPrint(resultsAmir, resultsPode, resultsJDD, sizes);
	}
	
	static void processResultsAndPrint(	LinkedList<LinkedList<String>> resultsAmir,
										LinkedList<LinkedList<String>> resultsPode,
										LinkedList<LinkedList<String>> resultsJDD, 
										int[] sizes)
	{
		LinkedList<LinkedList<Integer>> intResultsAmir = new LinkedList<LinkedList<Integer>>();
		for(LinkedList<String> r : resultsAmir)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResultsAmir.add(intResultForSize);
		}
		
		LinkedList<LinkedList<Integer>> intResultsPode = new LinkedList<LinkedList<Integer>>();
		for(LinkedList<String> r : resultsPode)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResultsPode.add(intResultForSize);
		}
		
		LinkedList<LinkedList<Integer>> intResultsJDD= new LinkedList<LinkedList<Integer>>();
		for(LinkedList<String> r : resultsJDD)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResultsJDD.add(intResultForSize);
		}
		
		for(int i = 0; i < intResultsAmir.size(); i++)
		{
			System.out.println(sizes[i] + "-------------------------------------------");
			
			int totalA = 0;
			int totalP = 0;
			int totalJ = 0;
			for(Integer time : intResultsAmir.get(i))
				totalA += time;
			
			for(Integer time : intResultsPode.get(i))
				totalP += time;
			
			for(Integer time : intResultsJDD.get(i))
				totalJ += time;
			
			if(intResultsAmir.get(i).size() != 0) 
				System.out.println("Amir - Num solved: " + intResultsAmir.get(i).size() + "\t AveTime: " + totalA/intResultsAmir.get(i).size());
			if(intResultsPode.get(i).size() != 0) 
				System.out.println("Pode - Num solved: " + intResultsPode.get(i).size() + "\t AveTime: " + totalP/intResultsPode.get(i).size());
			if(intResultsJDD.get(i).size() != 0) 
				System.out.println("JDD - Num solved:  " + intResultsJDD.get(i).size()  + "\t AveTime: " + totalJ/intResultsJDD.get(i).size());
		}
		
		System.out.println();
	}
}

