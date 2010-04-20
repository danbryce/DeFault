package edu.usu.cs.planner.ffrisky.util;

import java.util.List;

public class RiskCounterResults {
	public List<RiskCounterAction> plan;
	public String domainFileName;
	public String problemFileName;
	public String solverName;
	public int planLength;
	public int elapsedTime;
	public int nodesExpanded;
	public int riskCount;
	public double allRisksCount;
	public double solvableDomains;
	public int instance;
	public double probability;
	
	@Override
	public String toString() {
		StringBuilder output = new StringBuilder();
		
		output.append(instance + "\t");
		output.append(probability + "\t");
		output.append(domainFileName + "\t");
		output.append(problemFileName + "\t");
		output.append(solverName + "\t");
		
		if (plan == null) {
			output.append("?\t?\t?\t?\t" + allRisksCount + "\t?\n");
			return output.toString();
		}
		
		output.append(planLength + "\t");
		output.append(elapsedTime + "\t");
		output.append(nodesExpanded + "\t");
		output.append(riskCount + "\t");
		output.append(allRisksCount + "\t");
		output.append(solvableDomains + "\n");
		
		return output.toString();
	}
}
