package edu.usu.cs.plangraph;

import org.junit.Test;
import edu.usu.cs.search.SearchTest;

public class ConvertToCpp {
	
	@Test
	public void runConvertPathwaysToCpp() {
		
		String translationType = "pff";
		String pathToDomains = "testfiles/incomplete/pathways/";
		String pathToProblems = "testfiles/classical/pathways/";
		String pathToCppDomains = "testfiles/conformant/" + translationType + "/";
		String pathToCppProblems = "testfiles/conformant/" + translationType + "/";
		
		int numPfiles = 10;
		String extension = ".pddl";
		String[] args = new String[5];
		
		for(int i = 1; i <= numPfiles; i++) {
			String problem = null;
			if(i < 10) {
				problem = "p0" + i;
			} else {
				problem = "p" + i;
			}
			
			for(double p = 0.25; p <= 1.0; p += 0.25) {
				for(int k = 1; k <= 10; k++) {
					
					args[0] = pathToDomains + "domain_" + problem + "_" + p + "_" + k + extension;
					args[1] = pathToProblems + problem + extension;
					args[2] = pathToCppDomains + "cpp_domain_" + problem + "_" + p + "_" + k + extension;
					args[3] = pathToCppProblems + "cpp_problem_" + problem + "_" + p + "_" + k + extension;
					args[4] = translationType;
					
//					for(String str : args) {
//						System.out.print(str + " ");
//					}
//					System.out.println();
					SearchTest.main(args);
				}
			}
		}
	}
}
