package edu.usu.cs.plangraph;

import org.junit.Test;

import edu.usu.cs.planner.ffrisky.util.FaultCounter;

public class ParseFFRiskyOutputs {

	private String extension = ".pddl";
	private String[] algorithms = {
//			"friskylength", 
			"friskyRiskFirst", 
			"friskyMSRiskFirst", 
			"friskyLengthFirst", 
			"friskyMSLengthFirst", 
			"uniformcost"};
	
	String bridgesDomainPath = "testfiles/incomplete/bridges/";
	String bridgesOutputPath = "Output/ffrisky/bridges/";
	String[] bridgesArgs = new String[6];
	int bridgesVersionCount = 3;
	String[] bridgesGridSizes = { "2", "4", "8", "16" };
	String[] bridgesProbs = { "0.0", "0.25", "0.5", "0.75", "1.0" };
	int bridgesInstanceCount = 10;
	
	@Test
	public void bridgesParseOutputs() {
		for (int version = 1; version <= bridgesVersionCount; version++) {
			for (String gridSize : bridgesGridSizes) {
				for (String prob : bridgesProbs) {
					for (String algorithm : algorithms) {
						for (int instance = 1; instance <= bridgesInstanceCount; instance++) {
							bridgesArgs[0] = bridgesDomainPath + "bridges_v" + version + "_" + gridSize + "_" + prob + "_" + instance + extension;
							bridgesArgs[1] = bridgesDomainPath + "bridges_problem" + extension;
							bridgesArgs[2] = bridgesOutputPath + "bridges_v" + version + "_" + algorithm + "_" + gridSize + "_" + prob + "_" + instance + ".txt";
							bridgesArgs[3] = bridgesOutputPath + "../stats_bridges.txt";
							bridgesArgs[4] = Integer.toString(instance);
							bridgesArgs[5] = prob;
							FaultCounter.main(bridgesArgs);
						}
					}
				}
			}
		}
	}
	
//	@Test
//	public void parseBridgesInformation() {
//		
//		try {
//			FileReader fileReader = new FileReader(bridgesOutputPath + "../formatted_bridges.txt");
//			BufferedReader reader = new BufferedReader(fileReader);
//			
//			for (int version = 1; version <= bridgesVersionCount; version++) {
//				for (String gridSize : bridgesGridSizes) {
//					for (String prob : bridgesProbs) {
//						for (String alg : algorithms) {
//							
//							int instanceCount = 0;
//							
//							int planLengthTotal = 0;
//							int planLengthMin = Integer.MAX_VALUE;
//							int planLengthMax = Integer.MIN_VALUE;
//							
//							int millisecondsTotal = 0;
//							int millisecondsMin = Integer.MAX_VALUE;
//							int millisecondsMax = Integer.MIN_VALUE;
//							
//							int nodesExpandedTotal = 0;
//							int nodesExpandedMin = Integer.MAX_VALUE;
//							int nodesExpandedMax = Integer.MIN_VALUE;
//							
//							int risksTotal = 0;
//							int risksMin = Integer.MAX_VALUE;
//							int risksMax = Integer.MIN_VALUE;
//							
//							double ffriskySolvableDomainsTotal = 0;
//							double ffriskySolvableDomainsAvg = 0;
//							double ffriskySolvableDomainsMin = Double.POSITIVE_INFINITY;
//							double ffriskySolvableDomainsMax = Double.NEGATIVE_INFINITY;
//							
//							double allRisksTotal = 0;
//							double allRisksAvg = 0;
//							double allRisksMin = Double.POSITIVE_INFINITY;
//							double allRisksMax = Double.NEGATIVE_INFINITY;
//							
//							double solvableDomainsTotal = 0;
//							double solvableDomainsAvg = 0;
//							double solvableDomainsMin = Double.POSITIVE_INFINITY;
//							double solvableDomainsMax = Double.NEGATIVE_INFINITY;
//							
//							for (int i = 1; i <= bridgesInstanceCount; i++) {
//								String[] stats = reader.readLine().split("\t");
//								int instance = Integer.parseInt(stats[0]);
//								double probability = Double.parseDouble(stats[1]);
//								String domainFile = stats[2];
//								String problemFile = stats[3];
//								String algorithm = stats[4];
//								int planLength = Integer.parseInt(stats[5]);
//								int milliseconds = Integer.parseInt(stats[6]);
//								int nodesExpanded = Integer.parseInt(stats[7]);
//								int risks = Integer.parseInt(stats[8]);
//								double ffriskySolvableDomains = Math.pow(2, risks);
//								double allRisks = Double.parseDouble(stats[9]);
//								double solvableDomains = Double.parseDouble(stats[10]);
//								
//								if (planLength == 0 && 
//										milliseconds == 0 && 
//										nodesExpanded == 0 && 
//										risks == 0) {
//									// Couldn't find a solution
//									
//								} else {
//									instanceCount++;
//									
//									ffriskySolvableDomainsTotal += ffriskySolvableDomains;
//									ffriskySolvableDomainsMin = Math.min(ffriskySolvableDomainsMin, ffriskySolvableDomains);
//									ffriskySolvableDomainsMax = Math.max(ffriskySolvableDomainsMax, ffriskySolvableDomains);
//									
//									allRisksTotal += allRisks;
//									allRisksMin = Math.min(allRisksMin, allRisks);
//									allRisksMax = Math.max(allRisksMax, allRisks);
//									
//									solvableDomainsTotal += solvableDomains;
//									solvableDomainsMin = Math.min(solvableDomainsMin, solvableDomains);
//									solvableDomainsMax = Math.max(solvableDomainsMax, solvableDomains);
//								}
//							}
//							
//							String[] stats = new String[7];
//							stats[0] = alg;
//							stats[1] = "B" + Integer.toString(version);
//							stats[2] = gridSize;
//							stats[3] = prob;
//							
//							if (instanceCount == 0) {
//								stats[4] = "?";
//								stats[5] = "?";
//								stats[6] = "?";
//							} else {
//								ffriskySolvableDomainsAvg = ffriskySolvableDomainsTotal / instanceCount;
//								allRisksAvg = allRisksTotal / instanceCount;
//								solvableDomainsAvg = solvableDomainsTotal / instanceCount;
//								stats[4] = Double.toString(Math.pow(2, allRisksAvg));
//								stats[5] = Double.toString(solvableDomainsAvg);
//								stats[6] = Double.toString(ffriskySolvableDomainsAvg);
//							}
//							
//							FileWriter fileWriter = new FileWriter(bridgesOutputPath + "../excel_bridges.txt", true);
//							BufferedWriter writer = new BufferedWriter(fileWriter);
//							
//							for (String str : stats) {
//								System.out.print(str + " ");
//								writer.append(str + "\t");
//							}
//							writer.append("\n");
//							
//							writer.close();
//							fileWriter.close();
//						}
//					}
//				}
//			}
//			
//			reader.close();
//			fileReader.close();
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//			return;
//		}
//	}
	
	String blindnavDomainPath = "testfiles/incomplete/blindnav/";
	String blindnavOutputPath = "Output/ffrisky/blindnav/";
	
	@Test
	public void blindnavParseOutput() {
		
		String[] args = new String[6];
		
		String[] gridSizes = { "2", "4", "8" };
		int instanceCount = 10;
		
		for (String gridSize : gridSizes) {
			for (String algorithm : algorithms) {
				for (int instance = 1; instance <= instanceCount; instance++) {
					args[0] = blindnavDomainPath + "blindnav_" + gridSize + "_" + instance + extension;
					args[1] = blindnavDomainPath + "blindnav_problem" + extension;
					args[2] = blindnavOutputPath + "blindnav_" + gridSize + "_" + instance + "_" + algorithm + ".txt";
					args[3] = blindnavOutputPath + "../stats_blindnav.txt";
					args[4] = Integer.toString(instance);
					args[5] = Double.toString(0.5);
					FaultCounter.main(args);
				}
			}
		}
	}
	
	String pathwaysDomainPath = "testfiles/incomplete/pathways/";
	String pathwaysProblemPath = "testfiles/classical/pathways/";
	String pathwaysOutputPath = "Output/ffrisky/pathways/";
	
	@Test
	public void pathwaysParseOutput() {
		
		String[] args = new String[6];
		
		String[] problems = { "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09" };
		String[] probs = { "0.25", "0.5", "0.75", "1.0" };
		int instanceCount = 10;
		
		for (String problem : problems) {
			for (String prob : probs) {
				for (String algorithm : algorithms) {
					for (int instance = 1; instance <= instanceCount; instance++) {
						args[0] = pathwaysDomainPath + "domain_" + problem + "_" + prob + "_" + instance + extension;
						args[1] = pathwaysProblemPath + problem + extension;
						args[2] = pathwaysOutputPath + "pathways_" + problem + "_" + prob + "_" + algorithm + "_" + instance + ".txt";
						args[3] = pathwaysOutputPath + "../stats_pathways.txt";
						args[4] = Integer.toString(instance);
						args[5] = prob;
						FaultCounter.main(args);
					}
				}
			}
		}
	}
	
	String parcprinterDomainPath = "testfiles/incomplete/parcprinter/";
	String parcprinterOutputPath = "Output/ffrisky/parcprinter/";
	
	@Test
	public void parseParcprinterOutput() {
		String[] args = new String[6];
		
		String[] problems = { "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30" };
		int instanceCount = 10;
		
		for (String problem : problems) {
			for (String algorithm : algorithms) {
				for (int instance = 1; instance <= instanceCount; instance++) {
					args[0] = parcprinterDomainPath + "p" + problem + "_" + instance + "-domain-incomplete" + extension;
					args[1] = parcprinterDomainPath + "p" + problem + "_" + instance + "-problem-incomplete" + extension;
					args[2] = parcprinterOutputPath + "parcprinter_" + algorithm + "_" + problem + "_" + instance + ".txt";
					args[3] = parcprinterOutputPath + "../stats_parcprinter.txt";
					args[4] = Integer.toString(instance);
					args[5] = "0.5";
					FaultCounter.main(args);
				}
			}
		}
	}
}
