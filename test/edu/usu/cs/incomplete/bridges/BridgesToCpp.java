package edu.usu.cs.incomplete.bridges;

import org.junit.Test;

import edu.usu.cs.Default;

public class BridgesToCpp {
	@Test
	public void ConvertToCpp() {
		int maxGridSize = 32;
		String translationType = "pond";
		String bridgesDir = "testfiles/incomplete/bridges/";
		String bridgesCppDir = "testfiles/conformant/bridges/" + translationType + "/";
		
		String[] args = new String[5];
		String extension = ".pddl";
		
		for(int gs = 2; gs <= maxGridSize; gs *= 2) {
			for(double density = 0.0; density <= 1.0; density += 0.25) {
				for(int v = 1; v <= 3; v++) {
					for(int i = 1; i <= 10; i++) {
						args[0] = bridgesDir + "bridges_v" + v + "_" + gs + "_" + density + "_" + i + extension;
						args[1] = bridgesDir + "bridges_problem" + extension;
						args[2] = bridgesCppDir + "cpp_bridges_domain_" + v + "_" + gs + "_" + density + "_" + i + extension;
						args[3] = bridgesCppDir + "cpp_bridges_problem_" + v + "_" + gs + "_" + density + "_" + i + extension;
						args[4] = translationType;
						Default.main(args);
					}
				}
			}
		}
	}
}
