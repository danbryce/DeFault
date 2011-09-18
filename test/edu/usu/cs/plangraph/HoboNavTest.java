package edu.usu.cs.plangraph;

import org.junit.Test;

import edu.usu.cs.search.SearchTest;

public class HoboNavTest {

	@Test
	public void CreateHoboNavDomainsTest() {
		// testfiles/incomplete/hobonav/hobodo.pddl [Domain Output File]
		// testfiles/incomplete/hobonav/hobopro.pddl [Problem Output File]
		// 2 [Grid Size]
		// 1 [Item Count]
		// 0.5 [Toll Density]
		// 0.5 [Gamble Density]
		// 0.5 [Easy Mark Density]
		
		String domainDir = "testfiles/incomplete/hobonav/";
		String problemDir = "testfiles/incomplete/hobonav/";
		String extension = ".pddl";
		int[] gridSizes = { 2, 4, 6, 8, 16 };
		//int[] gridSizes = {8};
		int[] itemCounts = { 1, 2, 4 };
		//int[] itemCounts = { 4 };
		double[] tollDensities = { 0.0, 0.25, 0.5, 0.75, 1.0 }; // The densities are all incremented together
		double[] gambleDensities = { 0.0, 0.25, 0.5, 0.75, 1.0 }; // The densities are all incremented together
		double[] easyMarkDensities = { 0.0, 0.1, 0.1, 0.1, 0.1 }; // The densities are all incremented together
		int instanceCount = 10;
		
		String[] args = new String[7];
		boolean skipThis = false; // Don't create more than one instance of 0.0 and 1.0 because they are all the same
		
		for (int gridSize : gridSizes) {
			for (int density = 0; density < tollDensities.length; density++) {
				for (int itemCount : itemCounts) {
					
					skipThis = false;
					
					for (int instance = 1; instance <= instanceCount; instance++) {
						if (skipThis) break;
						if (tollDensities[density] == 0.0 || tollDensities[density] == 1.0)
							skipThis = true;
							
						args[0] = domainDir + "hobonav_" + gridSize + "_" + tollDensities[density] + "_" + itemCount + "_" + instance + extension;
						args[1] = problemDir + "hobonav_problem_" + gridSize + extension;
						args[2] = Integer.toString(gridSize);
						args[3] = Integer.toString(itemCount);
						args[4] = Double.toString(tollDensities[density]);
						args[5] = Double.toString(gambleDensities[density]);
						args[6] = Double.toString(easyMarkDensities[density]);
						
						edu.usu.cs.incomplete.hobonav.HoboNavDomainCreator.main(args);
					}
				}
			}
		}
	}
	@Test
	public void ConvertToCpp() {
		
		String domainDir = "testfiles/incomplete/hobonav/";
		String problemDir = "testfiles/incomplete/hobonav/";
		String extension = ".pddl";
		int[] gridSizes = { 2, 4, 6, 8, 16 };
		int[] itemCounts = { 1, 2, 4 };
		double[] tollDensities = { 0.0, 0.25, 0.5, 0.75, 1.0 }; // The densities are all incremented together
		double[] gambleDensities = { 0.0, 0.25, 0.5, 0.75, 1.0 }; // The densities are all incremented together
		double[] easyMarkDensities = { 0.0, 0.1, 0.1, 0.1, 0.1 }; // The densities are all incremented together
		int instanceCount = 10;
		
//		String[] args = new String[7];
		boolean skipThis = false; // Don't create more than one instance of 0.0 and 1.0 because they are all the same

		String translationType = "pond";
		String cppDir = "testfiles/conformant/hobonav/" + translationType + "/";
		
		String[] args = new String[5];
		
		for (int gridSize : gridSizes) {
			for (int density = 0; density < tollDensities.length; density++) {
				for (int itemCount : itemCounts) {
					
					skipThis = false;
					
					for (int instance = 1; instance <= instanceCount; instance++) {
						if (skipThis) break;
						if (tollDensities[density] == 0.0 || tollDensities[density] == 1.0)
							skipThis = true;
							
						args[0] = domainDir + "hobonav_" + gridSize + "_" + tollDensities[density] + "_" + itemCount + "_" + instance + extension;
						args[1] = problemDir + "hobonav_problem_" + gridSize + extension;
						args[2] = cppDir + "cpp_hobonav_domain_"  + gridSize + "_" + tollDensities[density] + "_" + itemCount + "_" + instance + extension;
						args[3] = cppDir + "cpp_hobonav_problem_" +  + gridSize + "_" + tollDensities[density] + "_" + itemCount + "_" + instance + extension;
						args[4] = translationType;
						SearchTest.main(args);
					}
				}
			}
		}
		
	}
}
