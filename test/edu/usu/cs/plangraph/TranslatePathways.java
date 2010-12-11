package edu.usu.cs.plangraph;
import org.junit.Test;

import edu.usu.cs.incomplete.pathways.ParserTest;
import edu.usu.cs.search.SearchTest;
public class TranslatePathways {
	
	@Test
	public void translatePathways() {
		
		String pathToClassical = "testfiles/classical/pathways";
		String pathToIncomplete = "testfiles/incomplete/pathways";
		String extension = ".pddl";
		int numPfiles = 1;
		
//		String[] problems = {
//				"02",
//				"05",
//				"09",
//		};
		
		String[] densities = {
				"0.01",
				"0.25",
				"0.5",
				"0.75",
				"1.0"
		};
		
		//for(String problem : problems) {
		for(int p = 1; p <= 10;  p++){
			String problem = String.valueOf(p);
			if(p <10)
				problem = "0"+problem;
			for(String density : densities) {
				for(int i = 1; i <= numPfiles; i++) {
					String[] args = new String[3];
					args[0] = String.format("%s/domain_p%s%s", pathToClassical, problem, extension);
					args[1] = String.format("%s/domain_p%s_%s_%s%s", pathToIncomplete, problem, density, i, extension);
					args[2] = density;
					ParserTest.main(args);
				}
			}
		}
	}

//	@Test
//	public void convertToCpp() {
//		int numPfiles = 1;
//		String pathToDomains = "testfiles/incomplete/pathways";
//		String pathToProblems = "testfiles/classical/pathways";
//		String pathToCpp = "testfiles/conformant/pathways/pond";
//		String translationType = "pond";
////		String[] problems = {
////				"02",
////				"05",
////				"09",
////		};
//		String[] densities = {
//				"0.0",
//				"0.01",
//				"0.25",
//				"0.5",
//				"0.75",
//				"1.0"
//		};
//		
//		String extension = ".pddl";
//		
//	//	for(String problem : problems) {
//		for(int p = 1; p <= 30;  p++){
//			String problem = String.valueOf(p);
//			if(p <10)
//				problem = "0"+problem;
//			for(String density : densities) {
//				for(int i = 1; i <= numPfiles; i++) {
//					String[] args = new String[5];
//					args[0] = String.format("%s/domain_p%s_%s_%d%s", pathToDomains, problem, density, i, extension);
//					args[1] = String.format("%s/p%s%s", pathToProblems, problem, extension);
//					args[2] = String.format("%s/cpp_domain_p%s_%s_%d%s", pathToCpp, problem, density, i, extension);
//					args[3] = String.format("%s/cpp_problem_p%s_%s_%d%s", pathToCpp, problem, density, i, extension);
//					args[4] = translationType;
//					SearchTest.main(args);
//				}
//			}
//		}
//	}
}