package edu.usu.cs.ka.currentsystem.utilities.thread;

import java.util.*;

public class RunAll 
{
	public static void main(String[] args) 
	{

//---------------Configuration Options---------------------
//Uncomment only those test that you wish to preform. For grading purposes
//all lines will be enabled. 
//--------------------------------------------------------

		int timeLimit = 500000; //The timelimit for each run given in milliseconds
	
		String[] MapSize = {
			"4",
			"8", 
//			"16",
//			"32"
		};
		
		String[] SearchStratigies = {
			"BreadthFirst",
//			"DepthFirst",
//			"UniformCost",
//			"IDDFS",
//			"BestFirst",
//			"AStar"
		};
		
		String[] Heuristics = {
			"Manhattan",
//			"StraitLine",
//			"Custom"
		};
		
		String[] CycleCheck = {
			"",         //Without Cycle Check
//			"-cc"       //With Cycle Check
		};
		String[] ClosedList = {
			"",         //Without ClosedList
//			"-cl"       //With ClosedList
		};



//-------------------End of configuration-----------------
//------------Please do not edit below this line----------

		String[][] MapSeed = {{"9","3","8","2"},  //Possible Seeds
						      {"3","8","129","24"}}; //Impossible Seeds
		
		for(int sizeIndex = 0; sizeIndex < MapSize.length; sizeIndex++)
		{
			for(int seedIndex = 0; seedIndex < 2; seedIndex++)
			{
				for(int searchIndex = 0; searchIndex < SearchStratigies.length; searchIndex++)
				{
					for(int ccIndex = 0; ccIndex < CycleCheck.length; ccIndex++)
					{
						for(int clIndex = 0; clIndex < ClosedList.length; clIndex++)
						{
							if(SearchStratigies[searchIndex] == "BestFirst" ||
							   SearchStratigies[searchIndex] == "AStar")
							{
								for(int heurIndex = 0; heurIndex < Heuristics.length; heurIndex++)
								{
									String[] arguments = {"-a","false",
											  			  "-d", MapSize[sizeIndex],
														  "-r", MapSeed[seedIndex][sizeIndex],
														  "-search", SearchStratigies[searchIndex],
														  "-h", Heuristics[heurIndex],
														  CycleCheck[ccIndex],
														  ClosedList[clIndex]};
									ExecThread execThread = new ExecThread(Thread.currentThread(), arguments);
									long start = System.currentTimeMillis();
									long now = System.currentTimeMillis();
									execThread.start();
									while (now - start < timeLimit)
									{
										try {
										Thread.sleep(500);
										}
										catch (Exception e)
										{}
										now = System.currentTimeMillis();
										if(execThread.done)
											break;
									}
									execThread.stop();	
									System.out.println("Time was " + String.valueOf((now - start) / 1000));
								}
							}
							else
							{
								String[] arguments = {"-a","false",
													  "-d", MapSize[sizeIndex],
													  "-r", MapSeed[seedIndex][sizeIndex],
													  "-search", SearchStratigies[searchIndex],
													  CycleCheck[ccIndex],
													  ClosedList[clIndex]};
								ExecThread execThread = new ExecThread(Thread.currentThread(), arguments);
								long start = System.currentTimeMillis();
								long now = System.currentTimeMillis();
								execThread.start();
								while (now - start < timeLimit)
								{
									try {
										Thread.sleep(500);
									}
									catch (Exception e) {}
									now = System.currentTimeMillis();
									if(execThread.done)	{
										break;
									}
								}
								execThread.stop();	
								double seconds = (now - start) / 1000;
								System.out.format("Time was %f\n", seconds);
							}
						}
					}
				}
			}
		}
	}
}
