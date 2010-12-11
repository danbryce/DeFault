package edu.usu.cs.ka.currentsystem.utilities.thread;
import java.util.*;
import java.io.*;


/**
 * Outputs the times for all solvers combined for domains/problems
 *  in a logical order of size grid or problem number by max first.
 * 
 * Uses Bryce files in this directory location:
 * /Users/CHW/Desktop/out_112110/
 * /Users/CHW/Desktop/out - bridges wout at_0_0 - 11.22.10/
 */
public class ParserForMaxTime 
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
		
		LinkedList<LinkedList<String>> results = new LinkedList<LinkedList<String>>();
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSize = new LinkedList<String>();
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
											resultForSize.add(st[2]);
										}
									}
								} catch (FileNotFoundException e) {}	
							}
						}
					}
			}
			
			results.add(resultForSize);
		}
		
		//for(LinkedList<String> r : results)
		//	System.out.println(r.toString());
		
		LinkedList<LinkedList<Integer>> intResults = new LinkedList<LinkedList<Integer>>();
		
		for(LinkedList<String> r : results)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResults.add(intResultForSize);
		}
		
		for(LinkedList<Integer> r : intResults)
		{
			Collections.sort(r);
			Collections.reverse(r);
		}
		
		int gridSize = 2;
		for(LinkedList<Integer> r : intResults)
		{
			System.out.println(gridSize + ": " + r.size() + " - " + r.toString());
			gridSize *= 2;
		}
		
		System.out.println();
	}
	
	//parcprinter_pode3_22_6.txt
	static void ParcPrinterMaxTime()
	{
		System.out.println("ParcPrinter - by fileNumber (1-30)");
		
		int numFiles = 30;
		int instances = 10;
		
		LinkedList<LinkedList<String>> results = new LinkedList<LinkedList<String>>();
		
		
		for(int ppFile = 1; ppFile <= numFiles; ppFile++)
		{
			LinkedList<String> resultForSize = new LinkedList<String>();
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
								resultForSize.add(st[2]);
							}
						}
					} catch (FileNotFoundException e) {}	
				}
			}
			results.add(resultForSize);
		}
		
		//for(LinkedList<String> r : results)
		//	System.out.println(r.toString());
		
		LinkedList<LinkedList<Integer>> intResults = new LinkedList<LinkedList<Integer>>();
		
		for(LinkedList<String> r : results)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResults.add(intResultForSize);
		}
		
		for(LinkedList<Integer> r : intResults)
		{
			Collections.sort(r);
			Collections.reverse(r);
		}
		
		int fileNumber = 1;
		for(LinkedList<Integer> r : intResults)
		{
			if(fileNumber < 10) System.out.print("0");	
			System.out.println(fileNumber++ + ": " + r.size() + " - " + r.toString());
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
		
		LinkedList<LinkedList<String>> results = new LinkedList<LinkedList<String>>();
		
		for (int pCounter = 1; pCounter <= problemCount; pCounter++) 
		{
			LinkedList<String> resultForSize = new LinkedList<String>();
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
									resultForSize.add(st[2]);
								}
							}
						} catch (FileNotFoundException e) {}	
					}
				}
			}
			results.add(resultForSize);
		}
		
		//for(LinkedList<String> r : results)
		//	System.out.println(r.toString());
		
		LinkedList<LinkedList<Integer>> intResults = new LinkedList<LinkedList<Integer>>();
		
		for(LinkedList<String> r : results)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResults.add(intResultForSize);
		}
		
		for(LinkedList<Integer> r : intResults)
		{
			Collections.sort(r);
			Collections.reverse(r);
		}
		
		int pCounter = 1;
		for(LinkedList<Integer> r : intResults)
		{
			System.out.println(pCounter++ + ": " + r.size() + " - " + r.toString());
		}
		
		System.out.println();
	}
	
	//bridges_v2_length_16_0.0_10.txt
	static void BridgesMaxTimeNew()
	{
		System.out.println("Bridges_new - by gridSize (2, 4, 8, 16)");
		
		int instanceCount = 10;
		int maxGridSize = 16;
		
		LinkedList<LinkedList<String>> results = new LinkedList<LinkedList<String>>();
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSize = new LinkedList<String>();
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
										resultForSize.add(st[2]);
									}
								}
							} catch (FileNotFoundException e) {}	
						}
					}
				}
			}
			
			results.add(resultForSize);
		}
		
		//for(LinkedList<String> r : results)
		//	System.out.println(r.toString());
		
		LinkedList<LinkedList<Integer>> intResults = new LinkedList<LinkedList<Integer>>();
		
		for(LinkedList<String> r : results)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResults.add(intResultForSize);
		}
		
		for(LinkedList<Integer> r : intResults)
		{
			Collections.sort(r);
			Collections.reverse(r);
		}
		
		int gridSize = 2;
		for(LinkedList<Integer> r : intResults)
		{
			System.out.println(gridSize + ": " + r.size() + " - " + r.toString());
			gridSize *= 2;
		}
		
		System.out.println();
	}
	
	//blindnav_2_1_length.txt
	static void BlindNavMaxTime()
	{
		System.out.println("BlindNav");
		
		int instanceCount = 10;
		int maxGridSize = 32;
		
		LinkedList<LinkedList<String>> results = new LinkedList<LinkedList<String>>();
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			LinkedList<String> resultForSize = new LinkedList<String>();
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for (String algorithm : algorithms) 
				{
					String filename = "";
					filename += "blindnav_";
					filename += gridSize + "_";
					filename += instance + "_";
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
								resultForSize.add(st[2]);
							}
						}
					} catch (FileNotFoundException e) {}	
				}
			}
			
			results.add(resultForSize);
		}
		
		//for(LinkedList<String> r : results)
		//	System.out.println(r.toString());
		
		LinkedList<LinkedList<Integer>> intResults = new LinkedList<LinkedList<Integer>>();
		
		for(LinkedList<String> r : results)
		{	
			LinkedList<Integer> intResultForSize = new LinkedList<Integer>();
			for(String s : r)
				intResultForSize.add(Integer.valueOf(s));
			
			intResults.add(intResultForSize);
		}
		
		for(LinkedList<Integer> r : intResults)
		{
			Collections.sort(r);
			Collections.reverse(r);
		}
		
		for(LinkedList<Integer> r : intResults)
			System.out.println( r.size() + " - " + r.toString());	
		
		System.out.println();
	}
}
