package edu.usu.cs.incomplete.bridges;

import org.junit.Test;

import edu.usu.cs.Default;

public class BridgesTest 
{
	private final static  int numFiles = 10;

	public static void main(String[] args){
		CreateBridges();
	}
	
	@Test
	public static void CreateBridges() 
	{
		//The possclob should be .5 or 0
		//The possadd  should be .5 or 0

		//where
		//args[3] is for possclob
		//args[4] is for possadd

		//v1 is precopen only          => args[3] && args[4] == 0
		//v2 is precopen and possclob  => args[3] == .5
		//v3 is all                    => args[3] && args[4] == .5

		String outputFileLocation = "testfiles/incomplete/bridges";
		int maxGridSize = 2;
		// Create Bridges

		for (int v = 3; v <=3; v++){

			String[] args = new String[6];
			//args[0] = Integer.toString(gridSize);
			args[1] = outputFileLocation;
			if(v == 1){
			args[3] = Double.toString(0.0);
			args[4] = Double.toString(0.0);
			}
			else if(v == 2){
				args[3] = Double.toString(0.5);
				args[4] = Double.toString(0.0);
				}
			else if(v == 3){
				args[3] = Double.toString(0.5);
				args[4] = Double.toString(0.5);
				}
			args[5] = Integer.toString(numFiles);
			for(int gs = 2; gs <= maxGridSize; gs *= 2) 
			{
				for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) 
				{
					args[0] = Integer.toString(gs);
					args[2] = Double.toString(bridgeDensity);
					edu.usu.cs.incomplete.bridges.BridgesDomainCreator.main(args);
				}
			}
		}
	}

//	@Test
//	public void RunBridges() 
//	{
//		int maxGridSize = 4;
//		String[] args = new String[6];
//		String pathToDomains = "testfiles/incomplete/bridges/";
//		String pathToProblems = "testfiles/incomplete/bridges/";
//		String extension = ".pddl";
//		String[] algorithms = {"length","pode1", "jdd"};
//
//		for(int v = 1; v <= 3; v++) {
//			for(int gridSize = 4; gridSize <= maxGridSize; gridSize*=2) {
//				for(double bridgeDensity = .0; bridgeDensity <= 1.0; bridgeDensity += 0.25) {
//					for(int alg = 1; alg < algorithms.length; alg++) {
//						for(int k = 1; k <= numFiles; k++) {
//							args[0] = pathToDomains + "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
//							args[1] = pathToProblems + "bridges_problem" + extension;
//							args[2] = "output_bridges.txt";
//							args[3] = algorithms[alg];
//							args[4] = Double.toString(bridgeDensity);
//							args[5] = Integer.toString(k);
//							Default.main(args);
//						}
//					}
//				}
//			}
//		}
//	}
//
}	

//	@Test
//	public void RunBridges() {
//		// Run Bridges
//		int maxGridSize = 16;
//		String[] args = new String[6];
//		String pathToDomains = "testfiles/incomplete/bridges/";
//		String pathToProblems = "testfiles/incomplete/bridges/";
//		String extension = ".pddl";
//		String[] algorithms = {
////				"frisky",
////				"quadqueue",
//				"pode",
////				"friskylength",
////				"friskyEHC",
////				"friskyMS"  
//		};
//
//		for(int v = 1; v <= 3; v++) {
//			for(int gridSize = 2; gridSize <= maxGridSize; gridSize*=2) {
//				for(double bridgeDensity = 1.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) {
//					for(int alg = 0; alg < algorithms.length; alg++) {
//						for(int k = numFiles-1; k <= numFiles-1; k++) {
//							args[0] = pathToDomains + "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
//							args[1] = pathToProblems + "bridges_problem" + extension;
//							args[2] = "output_bridges.txt";
//							args[3] = algorithms[alg];
//							args[4] = Double.toString(bridgeDensity);
//							args[5] = Integer.toString(k);
//							SearchTest.main(args);
//						}
//					}
//				}
//			}
//		}
//	}
//}

//String[] args = {pathToDomains+"domain_"+problem+"_"+p+"_"+k+extension, 
//pathToProblems+problem+extension, 
////outputNum.toString(),
//"output_pathways.txt",
//algorithms[j], 
//String.valueOf(p),
//String.valueOf(k)};