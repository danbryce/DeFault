package edu.usu.cs.ka.currentsystem.utilities.thread;
import java.util.*;
import java.io.*;


public class ParserForREXresults 
{	
	public static void main(String[] args) 
	{
		HoboNavResults();
		ParcPrinterResults();
		PathwaysResults();
		BridgesResults();
	}
		
	//hobonav_2_7_0.25_1_pode2.txt
	static void HoboNavResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("HoboNav///////////////////////////////////////////");
		
		int instanceCount = 10;
		int maxGridSize = 16;
		
		int[] itemCounts = { 1, 2, 4 };
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
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
						
						File file = new File("/Users/CHW/Desktop/Hobonav - 11.23.10/" + filename);
						
						String metaResult = filename + " ";
						
						int countSuccesses = 0;
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();							
								if(line.contains("cweber"))
								{
									line = line.replace("/home/cweber/graphplanner/testfiles/incomplete/hobonav/", "");
									results.add(line);
									
									countSuccesses++;
								}
								
								if(line.contains("Exception") && !metaResult.contains("*"))
									metaResult += "* ";
								
							}
						} catch (FileNotFoundException e) {metaResult += "DNE ";}
						
						metaResult += countSuccesses;
						metaResults.add(metaResult);
					}
				}
			}
		}
		
		for(String r : metaResults)
			System.out.println(r);
		
		System.out.println();
		for(String r : results)
			System.out.println(r);
		
		System.out.println("END HoboNav///////////////////////////////////////\n");
		metaResults.add("END HoboNav///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("Hobonav Results - 11.23.10", results);
	}
	
	//parcprinter_pode3_22_6.txt
	static void ParcPrinterResults()
	{	
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("ParcPrinter///////////////////////////////////////////");
		metaResults.add(" -problems 6, 10, 14, 17, 20, 25-30 have no");
		metaResults.add("  possible plan in Bryce results and are omitted.");
		
		int[] files = {1,2,3,4,5,7,8,9,11,12,13,15,16,18,19,21,22,23,24};
		int instances = 10;
		
		for(int fileCounter = 0; fileCounter < files.length; fileCounter++)
		{
			for(int instance = 1; instance <= instances; instance++)
			{
				String filename = "";
				filename += "parcprinter_";
				
				if(files[fileCounter] < 10) filename +="0";	
				filename += files[fileCounter] + "_";
				
				filename += instance;
				filename += ".txt";
				
				File file = new File("/Users/CHW/Desktop/ParcPrinter - 11.23.10/" + filename);
				
				String metaResult = filename + " ";
				
				int countSuccesses = 0;
				try 
				{
					Scanner scanner = new Scanner(file);
					while (scanner.hasNextLine()) 
					{
						String line = scanner.nextLine();							
						if(line.contains("cweber"))
						{
							line = line.replace("/home/cweber/graphplanner/testfiles/incomplete/parcprinter/", "");
							results.add(line);
							
							countSuccesses++;
						}
						
						if(line.contains("Exception") && !metaResult.contains("*"))
							metaResult += "* ";
					}
				} catch (FileNotFoundException e) {metaResult += "DNE ";}	
				
				metaResult += countSuccesses;
				metaResults.add(metaResult);
			}
		}
		
		for(String r : metaResults)
			System.out.println(r);
		
		System.out.println();
		for(String r : results)
			System.out.println(r);
		
		System.out.println("END ParcPrinter///////////////////////////////////////\n");
		metaResults.add("END ParcPrinter///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("ParcPrinter Results - 11.23.10", results);
	}
	
	//pathways_p01_0.0_jdd_1.txt
	static void PathwaysResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("Pathways///////////////////////////////////////////");
		
		int problemCount = 20;
		Double [] density = {.0, .01, .25, .5, .75, 1.0};
		int instanceCount = 10;
			
		for (int pCounter = 1; pCounter <= problemCount; pCounter++) 
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
					filename += instance;
					filename += ".txt";
					
					File file = new File("/Users/CHW/Desktop/Pathways - 11.23.10/" + filename);
					
					String metaResult = filename + " ";
					
					int countSuccesses = 0;
					try 
					{
						Scanner scanner = new Scanner(file);
						while (scanner.hasNextLine()) 
						{
							String line = scanner.nextLine();							
							if(line.contains("cweber"))
							{
								line = line.replace("/home/cweber/graphplanner/testfiles/incomplete/pathways/", "");
								results.add(line);
								
								countSuccesses++;
							}
							
							if(line.contains("Exception") && !metaResult.contains("*"))
								metaResult += "* ";
						}
					} catch (FileNotFoundException e) {metaResult += "DNE ";}	
					
					metaResult += countSuccesses;
					metaResults.add(metaResult);
				}
			}

		}
		
		for(String r : metaResults)
			System.out.println(r);

		System.out.println();
		for(String r : results)
			System.out.println(r);
		
		System.out.println("END Pathways///////////////////////////////////////\n");
		metaResults.add("END Pathways///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("Pathways Results - 11.23.10", results);
	}
	
	//bridges_v2_length_16_0.0_10.txt
	static void BridgesResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("Bridges///////////////////////////////////////////");
		
		int instanceCount = 10;
		int maxGridSize = 16;

		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
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
						
						File file = new File("/Users/CHW/Desktop/Bridges - 11.23.10/" + filename);
						
						String metaResult = filename + " ";
						
						int countSuccesses = 0;
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();							
								if(line.contains("cweber"))
								{
									line = line.replace("/home/cweber/graphplanner/testfiles/incomplete/bridges/", "");
									results.add(line);
									
									countSuccesses++;
								}
								
								if(line.contains("Exception") && !metaResult.contains("*"))
									metaResult += "* ";
							}
						} catch (FileNotFoundException e) {metaResult += "DNE ";}	
						
						metaResult += countSuccesses;
						metaResults.add(metaResult);
					}
				}
			}
		}
				
		for(String r : metaResults)
			System.out.println(r);

		System.out.println();
		for(String r : results)
			System.out.println(r);

		System.out.println("END Bridges///////////////////////////////////////\n");
		metaResults.add("END Bridges///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("Bridges Results - 11.23.10", results);
	}
	
	static void writeResultsToFile(String filename, LinkedList<String> results)
	{
	      try{
	    	    FileWriter fstream = new FileWriter("/Users/CHW/Desktop/" + filename + ".txt");
	    	    BufferedWriter out = new BufferedWriter(fstream);
	    	    
	    	    for(String r : results)
	    			out.write(r + "\n");

	    	    out.close();
	      }catch (Exception e){System.err.println("Error: " + e.getMessage());}
	}
	
	static void writeMetaResultsToFile(LinkedList<String> metaResults)
	{
	      try{
	    	    FileWriter fstream = new FileWriter("/Users/CHW/Desktop/MetaResults.txt", true);
	    	    BufferedWriter out = new BufferedWriter(fstream);
	    	    
	    	    for(String r : metaResults)
	    			out.write(r + "\n");

	    	    out.close();
	      }catch (Exception e){System.err.println("Error: " + e.getMessage());}
	}	
}
