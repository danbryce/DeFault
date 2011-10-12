package edu.usu.cs.incomplete.blindnav;

import org.junit.Test;

import edu.usu.cs.Default;

public class BlindnavTests {

	@Test
	public void blindnavTests()
	{
		String domainPath = "testfiles/incomplete/blindnav/";
		String problemFile = "testfiles/incomplete/blindnav/blindnav_problem.pddl";
		String outputFile = "output_blindnav.txt";
		String[] algorithms = {
				"pode",
				"jdd",
				"length"
		};
		
		int instanceCount = 10;
		int maxGridSize = 8;
		
		
		for (int gridSize = 2; gridSize <= maxGridSize; gridSize *= 2) {
			for (String algorithm : algorithms) {
				
				if ("pode".equals(algorithm)) {
					for (int arity = 1; arity <= 3; arity++) {
						for (int instance = 1; instance <= instanceCount; instance++) {
							String[] args = {
									domainPath + "blindnav_" + gridSize + "_" + instance + ".pddl",
									problemFile,
									outputFile,
									algorithm,
									Integer.toString(arity),
							};
							
							Default.main(args);
						}
					}
				} else {
					for (int instance = 1; instance <= instanceCount; instance++) {
						String[] args = {
								domainPath + "blindnav_" + gridSize + "_" + instance + ".pddl",
								problemFile,
								outputFile,
								algorithm,
						};
						
						Default.main(args);
					}
				}
			}
		}
	}
}
