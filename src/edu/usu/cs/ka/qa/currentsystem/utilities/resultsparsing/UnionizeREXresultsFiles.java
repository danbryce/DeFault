package edu.usu.cs.ka.qa.currentsystem.utilities.resultsparsing;

import java.util.*;
import java.io.*;

public class UnionizeREXresultsFiles 
{
	static String 	directory 			= "C:\\Documents and Settings\\Christopher\\Desktop\\";
	static String 	bigResultsFolder 	= "QA - Results Files - 2.7.11.10PM\\";
	static String	subFolderNFQT   	= "NotFullQTree\\";
	static String	subFolderFQT   		= "FullQTree\\";
	static String	date				= "2.7.11.11PM";

	public static void main(String[] args) 
	{
		ParcPrinterResults();
		//PathwaysResults();
		//HoboNavResults();
		//BridgesResults();
	}
	
	static void ParcPrinterResults()
	{
		String filenameNFQT	= "ParcPrinter Results - _N_2.7.11.10PM.txt";
		String filenameFQT	= "ParcPrinter Results - _Y_2.7.11.10PM.txt";
		
		unionFiles(filenameNFQT, filenameFQT, "QA - ParcPrinter Results - ");
	}
	static void PathwaysResults()
	{
		String filenameNFQT	= "Pathways Results - _N_2.7.11.10PM.txt";
		String filenameFQT	= "Pathways Results - _Y_2.7.11.10PM.txt";
		
		unionFiles(filenameNFQT, filenameFQT, "QA - Pathways Results - ");
	}
	static void HoboNavResults()
	{
		String filenameNFQT	= "Hobonav Results - _N_2.7.11.10PM.txt";
		String filenameFQT	= "Hobonav Results - _Y_2.7.11.10PM.txt";
		
		unionFiles(filenameNFQT, filenameFQT, "QA - HoboNav Results - ");
	}
	static void BridgesResults()
	{
		String filenameNFQT	= "Bridges Results - _N_2.7.11.10PM.txt";
		String filenameFQT	= "Bridges Results - _Y_2.7.11.10PM.txt";
		
		unionFiles(filenameNFQT, filenameFQT, "QA - Bridges Results - ");
	}
	
	static void unionFiles(String filenameNFQT, String filenameFQT, String outFile)
	{
		File fileNFQT = new File(directory + bigResultsFolder + subFolderNFQT + filenameNFQT);
		File fileFQT = new File(directory + bigResultsFolder + subFolderFQT + filenameFQT);
		
		TreeMap<String, String> results = new TreeMap<String, String>();
		int count = 0;
		try 
		{
			Scanner scannerNFQT = new Scanner(fileNFQT);
			while (scannerNFQT.hasNextLine()) 
			{
				String line = scannerNFQT.nextLine();
				String[] lineTokens = line.split(" ");
			
				results.put(lineTokens[0], line);	
			}

			Scanner scannerFQT = new Scanner(fileFQT);
			while (scannerFQT.hasNextLine()) 
			{
				String line = scannerFQT.nextLine();
				String[] lineTokens = line.split(" ");
			
				if(results.containsKey(lineTokens[0]))
				{
					//System.out.println(count + 1 + ": " + lineTokens[0]);
					count++;
				}
				else
				{
					System.out.println("Unique result: " + lineTokens[0]);
				}
				
				results.put(lineTokens[0], line);	
			}
		} catch (FileNotFoundException e) {}
		
		System.out.println(filenameNFQT + ", results updated: " + count + "\n");
		
		writeResultsToFile(outFile + date, new LinkedList<String>(results.values()));
	}
	
	static void writeResultsToFile(String filename, LinkedList<String> results)
	{
	      try{
	    	    FileWriter fstream = new FileWriter(directory + filename + ".txt");
	    	    BufferedWriter out = new BufferedWriter(fstream);
	    	    
	    	    for(String r : results)
	    			out.write(r + "\n");

	    	    out.close();
	      }catch (Exception e){System.err.println("Error: " + e.getMessage());}
	}
}
