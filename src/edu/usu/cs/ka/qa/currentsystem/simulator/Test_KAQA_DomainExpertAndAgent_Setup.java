package edu.usu.cs.ka.qa.currentsystem.simulator;


import java.util.List;

import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent_CL;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent_RG;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.DomainExpert;
import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.AgentTypes;
import edu.usu.cs.ka.qa.currentsystem.utilities.Actions_Utility;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;



/**
 * Notes on output:
 *  DE    - RtoKFs: Risks were translated to known features at .5 probability - as Fault objects
 *  Agent - Risks: the possible features existing in the RiskCounter BDD - as Fault objects
 *  Both  - PFs: Possible Features outstanding - i.e., risks remaining - the props in possLists for actions
 */
public class Test_KAQA_DomainExpertAndAgent_Setup 
{
	DomainExpert expert;
	Agent agent;
	
	Test_KAQA_DomainExpertAndAgent_Setup(String[] args)
	{	
		if (args.length != 3) { System.out.println(" " + args.length); usage(args); System.exit(1); }
		
		expert = new DomainExpert(args[0], args[1], Integer.valueOf(args[2]));
		
		System.out.print("DE RtoKFs: " + expert.getNumRisks() + " ");
		System.out.print("PFs: " + Actions_Utility.getCountOfIncompleteFeaturesInActionsList(expert.getActions()) + " ");
		System.out.print("QsAsked: " + expert.getNumQsAsked() + " ");
	}
	
	public static void main(String[] args)
	{	
		String domain = args[0].replace("testfiles/incomplete/", "");
		System.out.print(domain + "_" + args[2] + " ");
		
		Test_KAQA_DomainExpertAndAgent_Setup testSetup = new Test_KAQA_DomainExpertAndAgent_Setup(args);
		try
		{
			try{ testSetup.runTest(args, AgentTypes.RG); } catch(Exception e){e.printStackTrace();}
			//try{ testSetup.runTest(args, AgentTypes.CL); } catch(Exception e){e.printStackTrace();}
		}catch(Exception e){System.out.println("\nUnhandled Exception"); e.printStackTrace();}
		
		System.out.print("DE RtoKFs: " + testSetup.expert.getNumRisks() + " ");
		System.out.print("PFs: " + Actions_Utility.getCountOfIncompleteFeaturesInActionsList(testSetup.expert.getActions()) + " ");
		System.out.println("QsAsked: " + testSetup.expert.getNumQsAsked() + " ");
	}
	
	private void runTest(String [] args, AgentTypes agentType)
	{	
		System.out.print(agentType + " ");
		
		if(agentType.equals(AgentTypes.RG)) 		
			agent = new Agent_RG(args[0], args[1]);
		else if(agentType.equals(AgentTypes.CL))	
			agent = new Agent_CL(args[0], args[1]);
		
		System.out.print("Risks: " + agent.getNumRisks() + " ");
		System.out.print("PFs: " + Actions_Utility.getCountOfIncompleteFeaturesInActionsList(agent.getActions()) + " ");
		System.out.print("QsAsked: " + agent.getNumQsAsked() + " ");
		System.out.print("RisksLearned_PL: " + agent.getNumRisksLearnedPL() + " ");
		System.out.print("RisksLearned_QA: " + agent.getNumRisksLearnedQA() + " ");
		
		
		agent.qa.askAllRisks_QA();
		
		System.out.print("PostQ ");
		System.out.print("Risks: " + agent.getNumRisks() + " ");
		System.out.print("PFs: " + Actions_Utility.getCountOfIncompleteFeaturesInActionsList(agent.getActions()) + " ");
		System.out.print("QsAsked: " + agent.getNumQsAsked() + " ");
		System.out.print("RisksLearned_PL: " + agent.getNumRisksLearnedPL() + " ");
		System.out.print("RisksLearned_QA: " + agent.getNumRisksLearnedQA() + " ");
	}

	private void usage(String[] args) 
	{
		System.err.println("args: " + args[0] + " " + args[1] + " " + args[2]);
		System.err.println("Simulation_PassiveLearningAgent args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
}
