package edu.usu.cs.plangraph;

import org.junit.Test;
import edu.usu.cs.incomplete.blindnav.BlindNavCreator;
import edu.usu.cs.search.SearchTest;

public class BlindNav {
	
	private int maxSize = 6;
	private int createThisManyOfMaxSize = 10;
	private String extension = ".pddl";
	
	@Test
	public void createBlindNavDomains() {
		for(int i = 6; i <= maxSize; i *= 2) {
			String[] args = new String[3];
			args[0] = Integer.toString(i);
			args[1] = "testfiles/incomplete/blindnav";
			args[2] = Integer.toString(createThisManyOfMaxSize);
			BlindNavCreator.main(args);
		}
	}
	
	@Test
	public void convertBlindNavToCpp() {
		String translationType = "pond";
		String blindnavInputDir = "testfiles/incomplete/blindnav/";
		String blindnavCppDir = "testfiles/conformant/blindnav/" + translationType + "/";
		
		for(int gridSize = 6; gridSize <= maxSize; gridSize *= 2) {
			for(int instance = 1; instance <= createThisManyOfMaxSize; instance++) {
				String[] args = new String[5];
				args[0] = blindnavInputDir + "blindnav_" + gridSize + "_" + instance + extension;
				args[1] = blindnavInputDir + "blindnav_problem" + extension;
				args[2] = blindnavCppDir + "cpp_blindnav_domain_" + gridSize + "_" + instance + extension;
				args[3] = blindnavCppDir + "cpp_blindnav_problem_" + gridSize + "_" + instance + extension;
				args[4] = translationType;
				SearchTest.main(args);
			}
		}
	}
}
