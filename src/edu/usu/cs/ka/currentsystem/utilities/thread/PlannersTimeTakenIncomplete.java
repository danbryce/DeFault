package edu.usu.cs.ka.currentsystem.utilities.thread;
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
public class PlannersTimeTakenIncomplete 
{	
	static String directory = "/Users/CHW/Desktop/KA_Bryce_&_REX-Work_&_Results/Results_Bryce/";
	static String subDirectory = "out_112110/";
	static String subDirectory2 = "out_112210_newBridges/";
	
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
		int maxGridSize = 16;
		
		int[] itemCounts = { 1, 2, 4 };
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
					for(double density = 0.0; density <= 1.0; density +=.25)
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
								
								//System.out.print(filename + " ");
								
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
			System.out.println("*" + i + " \\\\\\");
			
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
				System.out.println("Average time Amir (" + intResultsAmir.get(i).size() + "): " + totalA/intResultsAmir.get(i).size());
			if(intResultsPode.get(i).size() != 0) 
				System.out.println("Average time Pode (" + intResultsPode.get(i).size() + "): " + totalP/intResultsPode.get(i).size());
			if(intResultsJDD.get(i).size() != 0) 
				System.out.println("Average time JDD (" + intResultsJDD.get(i).size() + "): " + totalJ/intResultsJDD.get(i).size());
		}
		
		System.out.println();
	}
	
	//parcprinter_pode3_22_6.txt
	static void ParcPrinterMaxTime()
	{
		System.out.println("ParcPrinter - by fileNumber (1-30)");
		
		int numFiles = 30;
		int instances = 10;
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for(int ppFile = 1; ppFile <= numFiles; ppFile++)
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			for (String algorithm : algorithms) 
			{	
				for(int instance = 1; instance <= instances; instance++)
				{
					String filename = "";
					filename += "parcprinter_";
					filename += algorithm + "_";
					
					if(ppFile < 10) filename +="0";	
					filename += ppFile + "_";
					
					filename += instance;
					filename += ".txt";
					
					File file = new File(directory + subDirectory + filename);
					
					//System.out.print(filename + " ");
					
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
			resultsAmir.add(resultForSizeAmir);
			resultsPode.add(resultForSizePode);
			resultsJDD.add(resultForSizeJDD);
		}
		
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
			System.out.println("*" + i + " \\\\\\");
			
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
				System.out.println("Average time Amir (" + intResultsAmir.get(i).size() + "): " + totalA/intResultsAmir.get(i).size());
			if(intResultsPode.get(i).size() != 0) 
				System.out.println("Average time Pode (" + intResultsPode.get(i).size() + "): " + totalP/intResultsPode.get(i).size());
			if(intResultsJDD.get(i).size() != 0) 
				System.out.println("Average time JDD (" + intResultsJDD.get(i).size() + "): " + totalJ/intResultsJDD.get(i).size());
		}
		
		System.out.println();
	}
	
	//pathways_p01_0.0_jdd_1.txt
	static void PathwaysMaxTime()
	{
		System.out.println("Pathways - by problem (1-20)");
		
		int problemCount = 20;
		Double [] density = {.0, .01, .25, .5, .75, 1.0};
		int instanceCount = 10;
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for (int pCounter = 1; pCounter <= problemCount; pCounter++) 
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
						
						if(pCounter < 10) filename += "0";
						filename += pCounter + "_";
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
			System.out.println("*" + i + " \\\\\\");
			
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
				System.out.println("Average time Amir (" + intResultsAmir.get(i).size() + "): " + totalA/intResultsAmir.get(i).size());
			if(intResultsPode.get(i).size() != 0) 
				System.out.println("Average time Pode (" + intResultsPode.get(i).size() + "): " + totalP/intResultsPode.get(i).size());
			if(intResultsJDD.get(i).size() != 0) 
				System.out.println("Average time JDD (" + intResultsJDD.get(i).size() + "): " + totalJ/intResultsJDD.get(i).size());
		}
		
		System.out.println();
	}
	
	//bridges_v2_length_16_0.0_10.txt
	static void BridgesMaxTimeNew()
	{
		System.out.println("Bridges_new - by gridSize (2, 4, 8, 16)");
		
		int instanceCount = 10;
		int maxGridSize = 16;
		
		LinkedList<LinkedList<String>> resultsAmir = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsPode = new LinkedList<LinkedList<String>>();
		LinkedList<LinkedList<String>> resultsJDD = new LinkedList<LinkedList<String>>();
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSizeAmir = new LinkedList<String>();
			LinkedList<String> resultForSizePode = new LinkedList<String>();
			LinkedList<String> resultForSizeJDD = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(int v = 1; v <=3; v++)
				{
					for(double density = 0.0; density <= 1.0; density +=.25)
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
							
							File file = new File(directory + subDirectory2 + filename);	
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
			System.out.println("*" + i + " \\\\\\");
			
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
				System.out.println("Average time Amir (" + intResultsAmir.get(i).size() + "): " + totalA/intResultsAmir.get(i).size());
			if(intResultsPode.get(i).size() != 0) 
				System.out.println("Average time Pode (" + intResultsPode.get(i).size() + "): " + totalP/intResultsPode.get(i).size());
			if(intResultsJDD.get(i).size() != 0) 
				System.out.println("Average time JDD (" + intResultsJDD.get(i).size() + "): " + totalJ/intResultsJDD.get(i).size());
		}
		
		System.out.println();
	}
}

