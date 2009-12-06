package edu.usu.cs.plangraph;

import org.junit.Test;

import edu.usu.cs.incomplete.bridges.BridgesDomainCreator;
import edu.usu.cs.search.SearchTest;

public class BridgesTest {
	private final int gridSize = 3;
	private final int numFiles = 10;
	
	@Test
	public void CreateBridges() {
		
		String outputFileLocation = "testfiles/incomplete/bridges";
		
		// Create Bridges
		String[] args = new String[6];
		args[0] = Integer.toString(gridSize);
		args[1] = outputFileLocation;
		args[3] = Double.toString(0.5);
		args[4] = Double.toString(0.5);
		args[5] = Integer.toString(numFiles);
		for(double bridgeDensity = 0.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) {
			args[2] = Double.toString(bridgeDensity);
			BridgesDomainCreator.main(args);
		}
	}
	
	@Test
	public void RunBridges() {
		// Run Bridges
		String[] args = new String[6];
		String pathToDomains = "testfiles/incomplete/bridges/";
		String pathToProblems = "testfiles/incomplete/bridges/";
		String extension = ".pddl";
		String[] algorithms = {
				"frisky",
//				"pode",
//				"friskylength",
//				"friskyEHC",
//				"friskyMS"
		};

		for(double bridgeDensity = 0.0; bridgeDensity <= 1.0; bridgeDensity += 0.25) {
			for(int alg = 0; alg < algorithms.length; alg++) {
				for(int k = 1; k <= numFiles; k++) {
					args[0] = pathToDomains + "bridges_" + gridSize + "_" + bridgeDensity + "_" + k + extension;
					args[1] = pathToProblems + "bridges_problem" + extension;
					args[2] = "output_bridges.txt";
					args[3] = algorithms[alg];
					args[4] = Double.toString(bridgeDensity);
					args[5] = Integer.toString(k);
					SearchTest.main(args);
				}
			}
		}
	}
}

//String[] args = {pathToDomains+"domain_"+problem+"_"+p+"_"+k+extension, 
//pathToProblems+problem+extension, 
////outputNum.toString(),
//"output_pathways.txt",
//algorithms[j], 
//String.valueOf(p),
//String.valueOf(k)};