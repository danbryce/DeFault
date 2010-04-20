package edu.usu.cs.plangraph;

import org.junit.Test;

import edu.usu.cs.planner.ffrisky.util.RiskCounter;

public class ParseOutputs {

	private String extension = ".pddl";
	private String[] algorithms = {
			"friskylength", 
			"friskyRiskFirst", 
			"friskyMSRiskFirst", 
			"friskyLengthFirst", 
			"friskyMSLengthFirst", 
			"uniformcost"};
	
	@Test
	public void bridgesParseOutputs() {
		
		String[] args = new String[6];
		
		String domainPath = "testfiles/incomplete/bridges/";
		String outputPath = "Output/ffrisky/bridges/";
		
		int versionCount = 3;
		String[] gridSizes = { "2", "4", "8", "16" };
		String[] probs = { "0.0", "0.25", "0.5", "0.75", "1.0" };
		int instanceCount = 10;
		
		for (int version = 1; version <= versionCount; version++) {
			for (String gridSize : gridSizes) {
				for (String prob : probs) {
					for (String algorithm : algorithms) {
						for (int instance = 1; instance <= instanceCount; instance++) {
							args[0] = domainPath + "bridges_v" + version + "_" + gridSize + "_" + prob + "_" + instance + extension;
							args[1] = domainPath + "bridges_problem" + extension;
							args[2] = outputPath + "bridges_v" + version + "_" + algorithm + "_" + gridSize + "_" + prob + "_" + instance + ".txt";
							args[3] = outputPath + "../formatted_bridges.txt";
							args[4] = Integer.toString(instance);
							args[5] = prob;
							RiskCounter.main(args);
						}
					}
				}
			}
		}
	}
	
	@Test
	public void blindnavParseOutput() {
		
		String[] args = new String[6];
		
		String domainPath = "testfiles/incomplete/blindnav/";
		String outputPath = "Output/ffrisky/blindnav/";
		
		String[] gridSizes = { "2", "4", "8" };
		int instanceCount = 10;
		
		for (String gridSize : gridSizes) {
			for (String algorithm : algorithms) {
				for (int instance = 1; instance <= instanceCount; instance++) {
					args[0] = domainPath + "blindnav_" + gridSize + "_" + instance + extension;
					args[1] = domainPath + "blindnav_problem" + extension;
					args[2] = outputPath + "blindnav_" + gridSize + "_" + instance + "_" + algorithm + ".txt";
					args[3] = outputPath + "../formatted_blindnav.txt";
					args[4] = Integer.toString(instance);
					args[5] = Double.toString(0.5);
					RiskCounter.main(args);
				}
			}
		}
	}
	
	@Test
	public void pathwaysParseOutput() {
		
		String[] args = new String[6];
		
		String domainPath = "testfiles/incomplete/pathways/";
		String problemPath = "testfiles/classical/pathways/";
		String outputPath = "Output/ffrisky/pathways/";
		
		String[] problems = { "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09" };
		String[] probs = { "0.25", "0.5", "0.75", "1.0" };
		int instanceCount = 10;
		
		for (String problem : problems) {
			for (String prob : probs) {
				for (String algorithm : algorithms) {
					for (int instance = 1; instance <= instanceCount; instance++) {
						args[0] = domainPath + "domain_" + problem + "_" + prob + "_" + instance + extension;
						args[1] = problemPath + problem + extension;
						args[2] = outputPath + "pathways_" + problem + "_" + prob + "_" + algorithm + "_" + instance + ".txt";
						args[3] = outputPath + "../formatted_pathways.txt";
						args[4] = Integer.toString(instance);
						args[5] = prob;
						RiskCounter.main(args);
					}
				}
			}
		}
	}
	
	@Test
	public void parseParcprinterOutput() {
		String[] args = new String[6];
		
		String domainPath = "testfiles/incomplete/parcprinter/";
		String outputPath = "Output/ffrisky/parcprinter/";
		
		String[] problems = { "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30" };
		int instanceCount = 10;
		
		for (String problem : problems) {
			for (String algorithm : algorithms) {
				for (int instance = 1; instance <= instanceCount; instance++) {
					args[0] = domainPath + "p" + problem + "_" + instance + "-domain-incomplete" + extension;
					args[1] = domainPath + "p" + problem + "_" + instance + "-problem-incomplete" + extension;
					args[2] = outputPath + "parcprinter_" + algorithm + "_" + problem + "_" + instance + ".txt";
					args[3] = outputPath + "../formatted_parcprinter.txt";
					args[4] = Integer.toString(instance);
					args[5] = "0.5";
					RiskCounter.main(args);
				}
			}
		}
	}
}
