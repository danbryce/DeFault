package edu.usu.cs.plangraph;

import org.junit.Test;
import edu.usu.cs.search.SearchTest;

public class BridgesToCpp {
	@Test
	public void ConvertToCpp() {
		int gridSize = 3;
		String translationType = "pond";
		String bridgesDir = "testfiles/incomplete/bridges/";
		String bridgesCppDir = "testfiles/conformant/bridges/" + translationType + "/";
		
		String[] args = new String[5];
		String extension = ".pddl";
		
		for(double density = 0.0; density <= 1.0; density += 0.25) {
			for(int i = 1; i <= 10; i++) {
				args[0] = bridgesDir + "bridges_" + gridSize + "_" + density + "_" + i + extension;
				args[1] = bridgesDir + "bridges_problem" + extension;
				args[2] = bridgesCppDir + "cpp_domain_" + gridSize + "_" + density + "_" + i + extension;
				args[3] = bridgesCppDir + "cpp_problem_" + gridSize + "_" + density + "_" + i + extension;
				args[4] = translationType;
				SearchTest.main(args);
			}
		}
	}
}
