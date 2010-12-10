package edu.usu.cs.planner.ffrisky.util;

import java.math.BigInteger;
import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;

public class RiskCounterResults 
{
	public List<ActionInstance> plan;
	public String domainFileName;
	public String problemFileName;
	public String solverName;
	public int planLength;
	public int elapsedTime;
	public int nodesExpanded;
	public int riskCount;
	public double allRisksCount;
	public BigInteger solvableDomains;
	public int instance;
	public double probability;
	public int unusedRisks;
	
	public RiskCounterResults() {}

	@Override
	public String toString() 
	{
		StringBuilder output = new StringBuilder();
		
//		output.append(instance + "\t");
//		output.append(probability + "\t");
//		output.append(domainFileName + "\t");
//		output.append(problemFileName + "\t");
//		output.append(solverName + "\t");
//		
//		if (plan == null) { output.append("?\t?\t?\t?\t" + allRisksCount + "\t?\n"); return output.toString(); }
//		
//		output.append(planLength + "\t");
//		output.append(elapsedTime + "\t");
//		output.append(nodesExpanded + "\t");
//		output.append(riskCount + "\t");
//		output.append(allRisksCount + "\t");
//		output.append(unusedRisks + "\t");
//		output.append(solvableDomains + "\n");

		// Risk Count // All Risks // Num Domains where plan fails //
		if (plan != null && solvableDomains.compareTo(BigInteger.valueOf(0)) > 0) {
			output.append(riskCount + "\t" + allRisksCount + "\t" + solvableDomains + "\t" + unusedRisks + "\n"); }
		
		return output.toString();
	}
}
