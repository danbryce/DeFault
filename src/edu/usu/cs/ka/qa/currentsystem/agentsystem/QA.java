package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.LearningTypes;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;

public class QA 
{
	public static enum QA_Types{NONE, 
								ALL, ALL_IN_PLAN, ALL_IN_PFE, 
								ALLPossPres, ALLPossPres_IN_PLAN, ALLPossPres_IN_PFE}; //Risks
	
	Agent agent;
	
	public QA(Agent a) {agent = a;}
	
	public boolean QA_Switch(QA_Types qaType, DomainExpert expert, List<ActionInstance> plan)
	{
		switch(qaType)
		{
			case NONE: 					return false;
			case ALL: 					return askAllRisks_QA(expert); 
			case ALL_IN_PLAN: 			return askAllRisksInPlan_QA(expert, plan);
			case ALL_IN_PFE:	 		return askAllRisksInPFE_QA(expert, plan);
			case ALLPossPres: 			return askAllPossPreRisks_QA(expert); 
			case ALLPossPres_IN_PLAN: 	return askAllPossPreRisksInPlan_QA(expert, plan);
			case ALLPossPres_IN_PFE: 	return askAllPossPreRisksInPFE_QA(expert, plan);
			default: 			return false;
		}
	}
	
	/**
	 * Ask the Domain Expert about ALL risks that exist the problem's actionsList (all possible features)
	 * @param expert
	 */
	public boolean askAllRisks_QA(DomainExpert expert)
	{
		if(agent.risks.size() > 0)
		{
			List<Fault> currentRisks = new ArrayList<Fault>(agent.risks); //Prevents concurrent mod exception
			askRisksInGivenList(expert, currentRisks);
		}
		return false;
	}
		
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the PLAN's actions (all possible features)
	 * @param expert
	 */
	public boolean askAllRisksInPlan_QA(DomainExpert expert, List<ActionInstance> plan)
	{
		if(plan == null) return false;
		
		HashSet<Fault> risksInPlan = new HashSet<Fault>();
		for(ActionInstance act : plan)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			for(Proposition p : a.getPossiblePreconditions()) 	risksInPlan.add(Fault.getRiskFromIndex(Fault.PRECOPEN, a.getName(), p.getName()));
			for(Proposition p : a.getPossibleAddEffects()) 		risksInPlan.add(Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, a.getName(), p.getName()));
			for(Proposition p : a.getPossibleDeleteEffects()) 	risksInPlan.add(Fault.getRiskFromIndex(Fault.POSSCLOB, a.getName(), p.getName()));
		}
		
		if(!risksInPlan.isEmpty())
		{
			askRisksInGivenList(expert, new ArrayList<Fault>(risksInPlan));
			return true;
		}
		
		return false;
	}
	
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the PLAN's actions (all possible features)
	 * @param expert
	 */
	public boolean askAllRisksInPFE_QA(DomainExpert expert, List<ActionInstance> plan)
	{	
		//System.out.println("\nIN askAllRisksInPFE_QA()");
		//Planner.printPlanShort(plan); Planner.printPlanLong(plan);
		
		if(plan == null) return false;
		
		HashSet<Fault> risksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.getFailureExplanationSentence_BDDRef2(agent.problem, plan, Planner.solver);
		
		for(Fault risk : agent.risks)
		{	
			boolean[] v = new boolean[agent.bdd.numberOfVariables()];
			v[agent.riskToNumVarIndexForCube.get(risk)] = true;
			
			int cube = agent.bdd.cube(v);
			int temp = agent.bdd.exists(failureExplanationSentence_bddRef, cube);
			
			if(temp == 1)
			{
				//System.out.println(riskToNumVarIndexForCube.get(risk) + ":" + riskToBDD.get(risk) + ": " + risk);
				risksInPFE.add(risk);
			}
		}
		
		if(!risksInPFE.isEmpty())
		{
			askRisksInGivenList(expert, new ArrayList<Fault>(risksInPFE));
			return true;
		}
		
		return false;
	}
	
	public boolean askAllPossPreRisks_QA(DomainExpert expert)
	{
		List<Fault> currentPossPreRisks = new ArrayList<Fault>();
		for(Fault f : agent.risks)
			if(f.getRiskName().equals(Fault.PRECOPEN))
				currentPossPreRisks.add(f);
		
		if(currentPossPreRisks.size() > 0)
			askRisksInGivenList(expert, currentPossPreRisks);

		return false;
	}
		
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the PLAN's actions (all possible features)
	 * @param expert
	 */
	public boolean askAllPossPreRisksInPlan_QA(DomainExpert expert, List<ActionInstance> plan)
	{
		if(plan == null) return false;
		
		HashSet<Fault> possPreRisksInPlan = new HashSet<Fault>();
		for(ActionInstance act : plan)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			for(Proposition p : a.getPossiblePreconditions()) 	possPreRisksInPlan.add(Fault.getRiskFromIndex(Fault.PRECOPEN, a.getName(), p.getName()));
		}
		
		if(!possPreRisksInPlan.isEmpty())
		{
			askRisksInGivenList(expert, new ArrayList<Fault>(possPreRisksInPlan));
			return true;
		}
		
		return false;
	}
	
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the PLAN's actions (all possible features)
	 * @param expert
	 */
	public boolean askAllPossPreRisksInPFE_QA(DomainExpert expert, List<ActionInstance> plan)
	{	
		//System.out.println("\nIN askAllRisksInPFE_QA()");
		//Planner.printPlanShort(plan); Planner.printPlanLong(plan);
		
		if(plan == null) return false;
		
		HashSet<Fault> possPreRisksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.getFailureExplanationSentence_BDDRef2(agent.problem, plan, Planner.solver);
		
		for(Fault risk : agent.risks)
		{	
			if(risk.getRiskName().equals(Fault.PRECOPEN))
			{
				boolean[] v = new boolean[agent.bdd.numberOfVariables()];
				v[agent.riskToNumVarIndexForCube.get(risk)] = true;
				
				int cube = agent.bdd.cube(v);
				int temp = agent.bdd.exists(failureExplanationSentence_bddRef, cube);
				
				if(temp == 1)
				{
					//System.out.println(riskToNumVarIndexForCube.get(risk) + ":" + riskToBDD.get(risk) + ": " + risk);
					possPreRisksInPFE.add(risk);
				}
			}
		}
		
		if(!possPreRisksInPFE.isEmpty())
		{
			askRisksInGivenList(expert, new ArrayList<Fault>(possPreRisksInPFE));
			return true;
		}
		
		return false;
	}
	
	/**
	 * Ask the Domain Expert about ALL risks that exist in list of current Risks.
	 * @param expert
	 */
	private void askRisksInGivenList(DomainExpert expert, List<Fault> currentRisks)
	{
		for(Fault f : currentRisks)
		{
			boolean result = expert.isRiskAFeatureQuery(f);
			agent.numQsAsked++;
			
			if(result) 	agent.addDomainExpertQueryResultToBDDAndUpdateActions_QA(f, true);
			else 		agent.addDomainExpertQueryResultToBDDAndUpdateActions_QA(f, false);
		}
		
		agent.updateActions(LearningTypes.QA);
	}
}
