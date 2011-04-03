package edu.usu.cs.ka.qa.currentsystem.utilities.resultsparsing;
import java.util.*;
import java.io.*;

public class Parser_REXresults 
{	
	//static String directory = "C:\\Documents and Settings\\Christopher\\Desktop\\";
	//static String bigResultsFolder = "out\\";;
	static String directory = "/Users/CHW/Desktop/";
	static String bigResultsFolder = "out/";
	static String outputFolderDateTimeAppend = "AAAI11LP_3.22.11_C_finalv";

	static boolean isFullQTree = false;
	static boolean isLineCleaner = true;
	static boolean isBugCheck = false;
	static boolean isIntersection = false;
	
	public static void main(String[] args) 
	{
		//ParcPrinterResults();
		//PathwaysResults();
		//HoboNavResults();
		BridgesResults();
		
		//bugFixer();
		//bugCheck(null);
	}
	
	//parcprinter_pode3_22_6.txt
	static void ParcPrinterResults()
	{	
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("ParcPrinter///////////////////////////////////////////");
		metaResults.add(" -problems 6, 10, 14, 17, 19, 20, 24-30 have no");
		metaResults.add("  possible plan in Bryce results and are omitted.");
		
		int[] files = {1,2,3,4,5,7,8,9,11,12,13,15,16,18,21,22,23};
		int instances = 10;
		
		for(int fileCounter = 0; fileCounter < files.length; fileCounter++)
		{
			for(int instance = 1; instance <= instances; instance++)
			{
				for(double density = .25; density <= 1.0; density +=.25)
				{
					String filename = "";
					filename += "parcprinter_";
					
					if(files[fileCounter] < 10) filename +="0";	
					filename += files[fileCounter] + "_";
					
					filename += instance + "_";
					filename += density;
					filename += ".txt";
					
					File file = new File(directory + bigResultsFolder + filename);
					
					String metaResult = filename + " ";
					
					int countSuccesses = 0;
					boolean completed = false;
					String totalTime = "";
					
					try 
					{
						Scanner scanner = new Scanner(file);
						while (scanner.hasNextLine()) 
						{
							String line = scanner.nextLine();							
							if(line.contains("cweber") && !line.contains("File"))
							{
								line = line.replace("/home/cweber/graphplanner/", "");
								if(isLineCleaner) line = lineCleaner(line);
								if(isBugCheck)	line = bugCheck(line);
								
								if(isIntersection && !line.contains("?"))
									results.add(line);
								else if(!isIntersection)
									results.add(line);
								
								countSuccesses++;
							}
							
							if(line.contains("Exception") && !metaResult.contains("*"))
								metaResult += "* ";
							
							if(line.contains("totalTime"))
							{
								int colonLocation = line.indexOf(":");
								totalTime = line.substring(colonLocation);
								completed = true;
							}
						}
					} catch (FileNotFoundException e) {metaResult += "DNE ";}	
					
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
		
		for(String r : metaResults)
			System.out.println(r);
		
		System.out.println();
		for(String r : results)
			System.out.println(r);
		
		System.out.println("END ParcPrinter///////////////////////////////////////\n");
		metaResults.add("END ParcPrinter///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("ParcPrinter_Results_" + outputFolderDateTimeAppend, results);
	}
	
	//pathways_p01_0.0_jdd_1.txt
	static void PathwaysResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("Pathways///////////////////////////////////////////");
		int problemCount = 20;
		Double [] density = { .25, .5, .75, 1.0}; //no .0, .01
		int instanceCount = 10;
		int[] files = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,19,20};//the problems
			
		for(int fileCounter = 0; fileCounter < files.length; fileCounter++)
		{
			for(Double d : density)
			{
				for(int instance = 1; instance <= instanceCount; instance++)
				{
					String filename = "";
					filename += "pathways_p";
					
					if(files[fileCounter] < 10) filename += "0";
					filename += files[fileCounter] + "_";
					filename += d + "_";							
					filename += instance;
					filename += ".txt";
					
					File file = new File(directory + bigResultsFolder + filename);
					
					String metaResult = filename + " ";
					
					int countSuccesses = 0;
					boolean completed = false;
					String totalTime = "";
					
					try 
					{
						Scanner scanner = new Scanner(file);
						while (scanner.hasNextLine()) 
						{
							String line = scanner.nextLine();							
							if(line.contains("cweber") && !line.contains("File"))
							{
								line = line.replace("/home/cweber/graphplanner/", "");
								if(isLineCleaner) line = lineCleaner(line);
								if(isBugCheck)	line = bugCheck(line);
								
								if(isIntersection && !line.contains("?"))
									results.add(line);
								else if(!isIntersection)
									results.add(line);
								
								countSuccesses++;
							}
							
							if(line.contains("Exception") && !metaResult.contains("*"))
								metaResult += "* ";
							
							if(line.contains("totalTime"))
							{
								int colonLocation = line.indexOf(":");
								totalTime = line.substring(colonLocation);
								completed = true;
							}
						}
					} catch (FileNotFoundException e) {metaResult += "DNE ";}	
					
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
		
		for(String r : metaResults)
			System.out.println(r);

		System.out.println();
		for(String r : results)
			System.out.println(r);
		
		System.out.println("END Pathways///////////////////////////////////////\n");
		metaResults.add("END Pathways///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("Pathways_Results_" + outputFolderDateTimeAppend, results);
	}
	
	//hobonav_2_7_0.25_1_pode2.txt
	static void HoboNavResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("HoboNav///////////////////////////////////////////");
		
		int instanceCount = 10;
		int maxGridSize = 32;
		
		int[] itemCounts = { 1, 2, 4 };
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(double density = .25; density <= 1.0; density +=.25)
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
						
						File file = new File(directory + bigResultsFolder + filename);
						
						String metaResult = filename + " ";
						
						int countSuccesses = 0;
						boolean completed = false;
						String totalTime = "";
						
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();							
								if(line.contains("cweber") && !line.contains("File"))
								{
									line = line.replace("/home/cweber/graphplanner/hobonav/", "");
									if(isLineCleaner) 	line = lineCleaner(line);
									if(isBugCheck)	line = bugCheck(line);
									
									if(isIntersection && !line.contains("?"))
										results.add(line);
									else if(!isIntersection)
										results.add(line);
									
									countSuccesses++;
								}
								
								if(line.contains("Exception") && !metaResult.contains("*"))
									metaResult += "* ";
								
								if(line.contains("totalTime"))
								{
									int colonLocation = line.indexOf(":");
									totalTime = line.substring(colonLocation);
									completed = true;
								}
							}
						} catch (FileNotFoundException e) {metaResult += "DNE ";}
						
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
		
		for(String r : metaResults)
			System.out.println(r);
		
		System.out.println();
		for(String r : results)
			System.out.println(r);
		
		System.out.println("END HoboNav///////////////////////////////////////\n");
		metaResults.add("END HoboNav///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("Hobonav_Results_" + outputFolderDateTimeAppend, results);
	}
	
	//bridges_v2_length_16_0.0_10.txt
	static void BridgesResults()
	{
		LinkedList<String> results = new LinkedList<String>();
		LinkedList<String> metaResults = new LinkedList<String>();
		
		metaResults.add("Bridges///////////////////////////////////////////");
		
		int instanceCount = 10;
		int maxGridSize = 32;

		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) 
		{
			for(int instance = 1; instance <= instanceCount; instance++)
			{
				for(int v = 1; v <=3; v++)
				{
					for(double density = .25; density <= 1.0; density +=.25)
					{
						String filename = "";
						filename += "bridges_";
						filename += "v" + v + "_";
						filename += gridSize + "_";
						filename += density + "_";
						filename += instance;
						filename += ".txt";
						
						File file = new File(directory + bigResultsFolder + filename);
						
						String metaResult = filename + " ";
						
						int countSuccesses = 0;
						boolean completed = false;
						String totalTime = "";
						
						try 
						{
							Scanner scanner = new Scanner(file);
							while (scanner.hasNextLine()) 
							{
								String line = scanner.nextLine();							
								if(line.contains("cweber") && !line.contains("File"))
								{
									line = line.replace("/home/cweber/graphplanner/bridges/", "");
									if(isLineCleaner) 
										line = lineCleaner(line);
									if(isBugCheck)	
										line = bugCheck(line);
									
									if(isIntersection && !line.contains("?"))
										results.add(line);
									else if(!isIntersection)
										results.add(line);
									
									countSuccesses++;
								}
								
								if(line.contains("Exception") && !metaResult.contains("*"))
									metaResult += "* ";
								
								if(line.contains("totalTime"))
								{
									int colonLocation = line.indexOf(":");
									totalTime = line.substring(colonLocation);
									completed = true;
								}
							}
						} catch (FileNotFoundException e) {metaResult += "DNE ";}	
						
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

		for(String r : metaResults)
			System.out.println(r);

		System.out.println();
		for(String r : results)
			System.out.println(r);

		System.out.println("END Bridges///////////////////////////////////////\n");
		metaResults.add("END Bridges///////////////////////////////////////\n");
		
		writeMetaResultsToFile(metaResults);
		writeResultsToFile("Bridges_Results_" + outputFolderDateTimeAppend, results);
	}
	
	static void writeResultsToFile(String filename, LinkedList<String> results)
	{
	      try{
	    	    FileWriter fstream = new FileWriter(directory + filename + ".txt");
	    	    BufferedWriter out = new BufferedWriter(fstream);
	    	    
	    	    for(String r : results)
	    			out.write(r + "\n");

	    	    out.close();
	      }catch (Exception e){System.err.println("Error in writeResultsToFile: " + e.getMessage());}
	}
	
	static void writeMetaResultsToFile(LinkedList<String> metaResults)
	{
	      try{
	    	    FileWriter fstream = new FileWriter(directory + "MetaResults_" + outputFolderDateTimeAppend + ".txt", true);
	    	    BufferedWriter out = new BufferedWriter(fstream);
	    	    
	    	    for(String r : metaResults)
	    			out.write(r + "\n");

	    	    out.close();
	      }catch (Exception e){System.err.println("Error in writeMResultsToFile: " + e.getMessage());}
	}
	
	//First run  of batchtesting didn't add 9 E's for an exception for the CL Agent, but 8.
	static String bugCheck(String line)
	{	
		String[] lineTokens = line.split(" ");
		
		LinkedList<String> tokens = new LinkedList<String>();
		for(int i = 0; i < lineTokens.length; i++)
		{
			if(!lineTokens[i].contains("*F*"))
				tokens.add(lineTokens[i]);
			if(lineTokens[i].equals("jdd") || lineTokens[i].equals("amir"))
			{				
				if(!lineTokens[i+9].equals("E"))
				{
					for(int count = 0; count < 9; count++)
						tokens.add("E");
					i += 8;
				}
			}
		}

		line = "";
		for (int i = 0; i < tokens.size(); i++)
			line += tokens.get(i) + " ";
		
		return line;
	}
	
	//Remove failure tokens
	static String lineCleaner(String line)
	{	
		String[] lineTokens = line.split(" ");
		
		LinkedList<String> tokens = new LinkedList<String>();
		for(int i = 0; i < lineTokens.length; i++)
		{
			if(isIntersection && lineTokens[i].contains("2^"))//simulation timeout
				tokens.add(lineTokens[i].replace("2^", ""));
			else if(lineTokens[i].equals("T"))//simulation timeout
				tokens.add("?");
			else if(lineTokens[i].equals("t"))//planner timeout
				tokens.add("?");
			else if(lineTokens[i].equals("E"))//Exception
				tokens.add("?");
			else if(lineTokens[i].equals("X"))//Exceeded max plannerCalls or maxActions
				tokens.add("?");
			else if(lineTokens[i].equals("L"))//Loop
				tokens.add("?");
			else if(lineTokens[i].equals("N"))//no plan found initial
				tokens.add("?");
			else if(lineTokens[i].equals("n"))//no plan found during execution
				tokens.add("?");
			else if(lineTokens[i].equals("S"))//no result and plan size is 0
				tokens.add("?");
			else if(lineTokens[i].equals("-"))//did not run test
				tokens.add("?");
			else if(lineTokens[i].equals("amir"))
				tokens.add("AMIR");
			else if(lineTokens[i].equals("jdd"))
				tokens.add("JDD");

			else
				tokens.add(lineTokens[i]);
		}

		line = "";
		for (int i = 0; i < tokens.size(); i++)
			line += tokens.get(i) + " ";
		
		return line;
	}
}
