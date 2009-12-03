package edu.usu.cs.plangraph;

import org.junit.Test;

import edu.usu.cs.incomplete.bridges.BridgesDomainCreator;
import edu.usu.cs.search.SearchTest;

public class BridgesTest {
	@Test
	public void CreateAndRunBridges() {
		
		int gridSize = 3;
		String outputFileLocation = "testfiles/incomplete/bridges";
		int numFiles = 10;
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
		
		// Create Bridges
		String[] args = new String[4];
		args[0] = Integer.toString(gridSize);
		args[2] = outputFileLocation;
		args[3] = Integer.toString(numFiles);
		for(double density = 0.25; density <= 1.0; density += 0.25) {
			args[1] = Double.toString(density);
			BridgesDomainCreator.main(args);
		}
		
		// Run Bridges
		for(double density = 0.25; density <= 1.0; density += 0.25) {
			for(int alg = 0; alg < algorithms.length; alg++) {
				for(int k = 1; k <= numFiles; k++) {
					args = new String[6];
					args[0] = pathToDomains + "bridges_" + density + "_" + k + extension;
					args[1] = pathToProblems + "bridges_" + density + "_problem" + extension;
					args[2] = "output_bridges.txt";
					args[3] = algorithms[alg];
					args[4] = Double.toString(density);
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