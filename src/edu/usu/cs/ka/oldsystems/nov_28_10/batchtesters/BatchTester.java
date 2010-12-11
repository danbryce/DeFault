package edu.usu.cs.ka.oldsystems.nov_28_10.batchtesters;

public class BatchTester 
{
//	static FileWriter fstream;
//	static BufferedWriter out;	
//	static File file;
//	
//	private static final int numFiles = 10;
//
//	public static void main (String[] args)
//	{
//		//[0]<domain-pddl-file>
//		//[1]<problem-pddl-file>
//		//[2]<seed(int)> - for seed of sim version of actions - [0-9]
//		//[3]<planner ["solvableCheck" | "length" | "pode1"]>  
//			
//		//try{
//		//	fstream = new FileWriter(file, true);
//		//	out = new BufferedWriter(fstream);
//		//}catch(Exception e){System.out.println("Error opening file."); e.printStackTrace(); System.exit(1);}
//						
//		int maxGridSize = 16;
//		String[] args2 = new String[4];
//		String pathToDomains = "testfiles/incomplete/bridges/";
//		String pathToProblems = "testfiles/incomplete/bridges/";
//		String extension = ".pddl";
//		//String[] algorithms = {"random"};
//		//String[] algorithms = {"solvableCheck"};
//		String[] algorithms = {"solvableCheck", "random","length","pode1"};
//		//String[] algorithms = {"length"};
//		//String[] algorithms = {"pode1"};
//
//		
//		//Grid size
//		for(int gridSize = 8; gridSize <= 8; gridSize*=2) //2-32
//		{
//			System.out.println("GS: " + gridSize);
//			
//			file = new File("Output/TrialOutput-bridges_size" + gridSize + ".txt");
//			try{
//				fstream = new FileWriter(file, true);
//				out = new BufferedWriter(fstream);
//			}catch(Exception e){System.out.println("Error opening file."); e.printStackTrace(); System.exit(1);}
//			
//			//Version
//			for(int v = 1; v <= 3; v++)//1-3
//			{
//				//System.out.println("V: " + v);
//				
//				//Bridge density
//				for(double bridgeDensity = .0; bridgeDensity <= 1.0; bridgeDensity += 0.25) //0.0 - 1.0
//				{
//					//System.out.println("BD: " + bridgeDensity);
//					
//					//Num file
//					for(int k = 1; k <= 10; k++) //numFiles 1-10
//					{
//						//System.out.println("NF: " + k);
//						
//						args2[0] = pathToDomains + "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
//						args2[1] = pathToProblems + "bridges_problem" + extension;
//						
//						//Simulator seed
//						int isSolvableFound = 0;
//						for(int simSeed = 0; (simSeed < 1000) && (isSolvableFound < 10); simSeed++) //0-?
//						{
//							//System.out.println("****************************************");
//							//System.out.println("SS: " + simSeed);
//							
//							args2[2] = Integer.toString(simSeed);
//							args2[3] = algorithms[0]; //solvableCheck first
//							//System.out.println("ALG: " + args2[3]);
//							
//							try{ ExplorationLearningTrial_random_length_pode1_solvableTest.main(args2);
//							}catch(Error e){System.out.println("Heap Error?"); e.printStackTrace();}
//							
//							//If the domain and sim seed is solvable, do these things
//							if(ExplorationLearningTrial_random_length_pode1_solvableTest.isSolvable)
//							{
//								isSolvableFound++;
//								
//								//Write isSolvable results to file
//								try{
//									out.append( 
//												"bridges_v" + v + 
//												"_" + gridSize + 
//												"_" + bridgeDensity +
//												"_" + k + 
//												extension + 
//												" " + simSeed +
//												" " + args2[3] + 
//												" " + ExplorationLearningTrial_random_length_pode1_solvableTest.isSolvableTime +
//												" " + ExplorationLearningTrial_random_length_pode1_solvableTest.isSolvableNumActions
//											  );
//									
//								}catch(Exception e){System.out.println("1Error writing to file."); e.printStackTrace();}
//								
//								//To screen
//								System.out.print("bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension + " " + simSeed);
//								System.out.print(" " + args2[3]);
//								System.out.print(" " + ExplorationLearningTrial_random_length_pode1_solvableTest.isSolvableTime);
//								System.out.print(" " + ExplorationLearningTrial_random_length_pode1_solvableTest.isSolvableNumActions);
//								
//								//Call the other type solvers - Alg = random, length, pode1
//								for(int alg = 1; alg < algorithms.length; alg++) 
//								{
//									args2[3] = algorithms[alg];
//									System.out.print(" " + args2[3]);
//											
//									try{out.append(" " + args2[3] + " ");
//									}catch(Exception e){System.out.println("1Error writing to file."); e.printStackTrace();}
//									
//									try{
//										ExplorationLearningTrial_random_length_pode1_solvableTest.main(args2);
//									}catch(Error e){System.out.println("Heap Error?"); e.printStackTrace();}
//								}
//											
//								//at end of the testing for a good seed
//								try{out.append("\n");
//								}catch(Exception e){System.out.println("2Error writing to file."); e.printStackTrace();}
//								System.out.println();
//							}//end if
//						}//end for sim seeds
//						
//						//leave a blank line in between the sets of 10
//						try{out.append("\n");
//						}catch(Exception e){System.out.println("3Error writing to file."); e.printStackTrace();}
//						System.out.println();
//					}//end for num file	
//				}//end for bridge density
//			}//end for version
//			
//			try{out.close();}catch(Exception e){System.out.println("Error closing file."); e.printStackTrace();}
//			System.out.println("DONE");
//		}//end for size
//	}
//	
//	protected void finalize() throws Throwable {
//	    try {
//	        out.close();        // close open files
//	    } finally {
//	        super.finalize();
//	    }
//	}
//	
}
