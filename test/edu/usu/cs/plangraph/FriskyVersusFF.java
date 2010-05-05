package edu.usu.cs.plangraph;

import org.apache.log4j.Logger;
import org.junit.Test;

import edu.usu.cs.search.SearchTest;


public class FriskyVersusFF {
private static Logger logger = Logger.getLogger(FriskyVersusFF.class.getName());
	
//	@Test
//	public void runTestPathwaysClassical() {
//		String pathToDomains = "testfiles/classical/pathways/";
//		String pathToProblems = "testfiles/classical/pathways/";
//		
//		String[] algorithms = {
////				"frisky",
//				"pode",
////				"friskylength",
////				"friskyEHC",
////				"friskyMS"
//		};
//
//		int numPfiles = 10;
//		//each random instance of the domain
//
//		for(int i = 1; i < numPfiles; i++){
//
//			String problem = null;
//			String extension = ".pddl";
//			if(i < 10){
//				problem = "p0" + i;
//			}
//			else{
//				problem = "p" + i;
//			}
//			
//			
////			if(
////					problem.equals("p01")
////					||
////					problem.equals("p02") ||
////					problem.equals("p03")
////			){
////				continue;
////			}
//
//
//			//each probability of being incomplete
//
//
//				for(int j = 0; j < algorithms.length; j++){
//
//				String[] args = {pathToDomains+"domain_"+problem+extension, 
//						pathToProblems+problem+extension, 
//						//outputNum.toString(),
//						"output_pathways.txt",
//						algorithms[j]};
//
//				SearchTest.main(args);
//			}
//		}
//	}

	@Test
	public void runTestPathways() {

		String pathToDomains = "testfiles/incomplete/pathways/";
		String pathToProblems = "testfiles/classical/pathways/";

		String[] algorithms = {

//				"frisky",
				"pode",
//				"friskylength",
//				"friskyEHC",
//				"friskyMS"
		};


		int numPfiles = 6;
		//each random instance of the domain

		for(int i = 1; i <= numPfiles; i++){

			String problem = null;
			String extension = ".pddl";
			if(i < 10){
				problem = "p0" + i;
			}
			else{
				problem = "p" + i;
			}
			
			
//			if(
//					problem.equals("p01")
//					||
//					problem.equals("p02") ||
//					problem.equals("p03")
//			){
//				continue;
//			}


			//each probability of being incomplete
			for(double p = 1.0; p <= 1.0; p+= 0.25){


					for(int j = 0; j < algorithms.length; j++){
						for(int k = 1; k <= 10; k++){

						String[] args = {pathToDomains+"domain_"+problem+"_"+p+"_"+k+extension, 
								pathToProblems+problem+extension, 
								//outputNum.toString(),
								"output_pathways.txt",
								algorithms[j], 
								String.valueOf(p),
								String.valueOf(k)};

						for(String arg : args) {
							logger.debug(arg + " ");
						}
						logger.debug("\n");
						SearchTest.main(args);
					}
				}
			}
		}
	}

	@Test
	public void runTestHelper() {

		String[][] instances = { 
				//{"testfiles/incomplete/DriverLog/driverlogDan.pddl", "testfiles/incomplete/DriverLog/pfileDan"},
							{"testfiles/incomplete/DriverLog/driverlog.pddl", "testfiles/incomplete/DriverLog/pfile1"},
				{"testfiles/incomplete/DriverLog/driverlog.pddl", "testfiles/incomplete/DriverLog/pfile2"},
								{"testfiles/incomplete/DriverLog/driverlog.pddl", "testfiles/incomplete/DriverLog/pfile3"},
								{"testfiles/incomplete/DriverLog/driverlog.pddl", "testfiles/incomplete/DriverLog/pfile4"},			
								{"testfiles/incomplete/DriverLog/driverlog.pddl", "testfiles/incomplete/DriverLog/pfile5"},
				//			
								{"testfiles/incomplete/Rover/rover.pddl", "testfiles/incomplete/Rover/roverprob1.pddl"},	
								{"testfiles/incomplete/Rover/rover.pddl", "testfiles/incomplete/Rover/roverprob2.pddl"},	
								{"testfiles/incomplete/Rover/rover.pddl", "testfiles/incomplete/Rover/roverprob3.pddl"},	
								{"testfiles/incomplete/Rover/rover.pddl", "testfiles/incomplete/Rover/roverprob4.pddl"},	
								{"testfiles/incomplete/Rover/rover.pddl", "testfiles/incomplete/Rover/roverprob5.pddl"},	

				//	{"testfiles/incomplete/pathways/domain_p01_risky.pddl", "testfiles/incomplete/pathways/p01_risky.pddl"},	
				//	{"testfiles/incomplete/pathways/domain_p01.pddl", "testfiles/incomplete/pathways/p01.pddl"},	

				//		{"testfiles/incomplete/pathways/domain_p01_0.25_1.pddl", "testfiles/classical/pathways/p01.pddl"},	
				//	{"testfiles/incomplete/pathways/domain_p01_0.5_1.pddl", "testfiles/classical/pathways/p01.pddl"},	
				//	{"testfiles/incomplete/pathways/domain_p01_0.75_1.pddl", "testfiles/classical/pathways/p01.pddl"},
				//{"testfiles/incomplete/pathways/domain_p01_1.0_1.pddl", "testfiles/classical/pathways/p01.pddl"},

				//			{"testfiles/incomplete/pathways/domain_p02_0.25_1.pddl", "testfiles/classical/pathways/p02.pddl"},	
				//	{"testfiles/incomplete/pathways/domain_p02_0.5_1.pddl", "testfiles/classical/pathways/p02.pddl"},	
				//			{"testfiles/incomplete/pathways/domain_p02_0.75_1.pddl", "testfiles/classical/pathways/p02.pddl"},

		};

		String[] algorithms = {

			//	"friskylength",
				//"friskyEHC",
				//"frisky",
				"friskyMS"
		};

		Integer outputNum = 0;
		for(int j = 0; j < algorithms.length; j++){
			for(int i = 0; i < instances.length; i++){
				String[] args = {instances[i][0], 
						instances[i][1], 
						//outputNum.toString(),
						"output.txt",
						algorithms[j]};

				//				File outputFile = new File("Output/" + outputNum);

				outputNum++;

				//				if(outputFile.exists()) // do not run same test twice
				//					continue;
				//				else 
				SearchTest.main(args);
			}
		}
	}



}


