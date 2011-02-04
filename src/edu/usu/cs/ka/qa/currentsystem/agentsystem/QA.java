package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.qa.currentsystem.agentsystem.Agent.LearningTypes;
import edu.usu.cs.ka.qa.currentsystem.utilities.Actions_Utility;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;

public class QA 
{
	public static enum QA_Types{NONE, 
								ALL, ALL_IN_PLAN, ALL_IN_PFE, ALLCritical_IN_PFE, 
								ALLPossPres, ALLPossPres_IN_PLAN, ALLPossPres_IN_PFE, ALLCriticalPossPres_IN_PFE,
								
								BESTCubeVar_IN_PFE, BESTMintermVar_IN_PFE, 
								BESTPossPreCubeVar_IN_PFE, BESTPossPreMintermVar_IN_PFE,
								
								BEST_QTreeOneStepReg, BEST_QTreeOneStepRPS,
								BEST_QTreeFullMaxReg, BEST_QTreeFullMaxRPS,
								BEST_QTreeFullAvgReg, BEST_QTreeFullAvgRPS,
								BEST_QTreeABMaxReg,   BEST_QTreeABMaxRPS,	
								BEST_QTreeABAvgReg,   BEST_QTreeABAvgRPS,
								
								NextPossPres_IN_PLAN, NextPossPres_IN_PFE, NextCriticalPossPres_IN_PFE, 
								NextBESTPossPreCubeVar_IN_PFE, NextBESTPossPreMintermVar_IN_PFE,
								
								NextBESTPossPre_QTreeOneStepReg, NextBESTPossPree_QTreeOneStepRPS
								

								}; //Risks
								
	public static enum PFE_Type{CUBE, MINTERM};
	
	Agent agent;
	DomainExpert expert;
	
	boolean debug = false;
	
	public QA(Agent a) 
	{
		agent = a;
		expert = DomainExpert.getInstance();
	}
	
	/**
	 * Master method for QA, called by agent during execution of simulation
	 * @param qaType
	 * @param expert
	 * @param plan
	 * @return
	 */
	public boolean askQuestionsByType(QA_Types qaType, List<ActionInstance> plan)
	{
		switch(qaType)
		{
			case NONE: 									return false;
			case ALL: 									return askAllRisks_QA();
			case ALL_IN_PLAN: 							return askAllRisksInPlan_QA(plan);
			case ALL_IN_PFE:	 						return askAllRisksInPFE_QA(plan);
			//case ALLCritical_IN_PFE:					return askAllCriticalRisksInPFE_QA(plan);
			case BESTCubeVar_IN_PFE: 					return askBestCubeVarInPFE_QA(plan);
			//case BESTMintermVar_IN_PFE: 				return askBestMintermVarInPFE_QA(plan);
			case BEST_QTreeOneStepReg:					return askBestQTreeOneStepRegPlanner_QA(plan);
			case BEST_QTreeOneStepRPS:					return askBestQTreeOneStepRPS_QA(plan);
			
			//case ALLPossPres: 						return askAllPossPreRisks_QA();
			//case ALLPossPres_IN_PLAN: 				return askAllPossPreRisksInPlan_QA(plan);
			//case ALLPossPres_IN_PFE: 					return askAllPossPreRisksInPFE_QA(plan);
			//case ALLCriticalPossPres_IN_PFE: 			return askAllCriticalPossPreRisksInPFE_QA(plan);
			//case BESTPossPreCubeVar_IN_PFE: 			return askBestPossPreCubeVarInPFE_QA(plan);
			//case BESTPossPreMintermVar_IN_PFE: 		return askBestPossPreMintermVarInPFE_QA(plan);
			//BESTPossPre_QTreeOneStepReg
			//BESTPossPre_QTreeOneStepRPS
			//case BEST_QTreeFullMaxReg:				return askBestQTreeFullMaxRegPlanner_QA(plan);
			//case BEST_QTreeFullMaxRPS:				return askBestQTreeFullMaxRPS_QA(plan);
			case BEST_QTreeABMaxReg:					return askBestQTreeABMaxRegPlanner_QA(plan);//
			case BEST_QTreeABMaxRPS:					return askBestQTreeABMaxRPS_QA(plan);//
			//case BEST_QTreeFullAvgReg:				return askBestQTreeFullAvgRegPlanner_QA(plan); //confirm it's working
			//case BEST_QTreeABAvgRPS:					return askBestQTreeABAvgRPS_QA(plan); //confirm it's working
			//case BEST_QTreeABAvgReg:					return askBestQTreeABAvgRegPlanner_QA(plan); //confirm it's working
			//case BEST_QTreeFullAvgRPS:				return askBestQTreeFullAvgRPS_QA(plan); //confirm it's working
			
			//case NextPossPres_IN_PLAN: 				return askNextPossPreRisksInPlan_QA(plan);
			//case NextPossPres_IN_PFE: 				return askNextPossPreRisksInPFE_QA(plan);
			//case NextCriticalPossPres_IN_PFE: 		return askNextCriticalPossPreRisksInPFE_QA(plan);
			case NextBESTPossPreCubeVar_IN_PFE: 		return askBestNextPossPreCubeVarInPFE_QA(plan);
			//case NextBESTPossPreMintermVar_IN_PFE: 	return askBestNextPossPreMintermVarInPFE_QA(plan);
			case NextBESTPossPre_QTreeOneStepReg:		return askBestNextPossPreQTreeOneStepRegPlanner_QA(plan);
			case NextBESTPossPree_QTreeOneStepRPS:		return askBestNextPossPreQTreeOneStepRPS_QA(plan);

			default: 									return false;
		}
	}
	
	//ALL//////////////////////////////////////////////////////////////////////////////////////////
	
	//QA based on ACTIONS/ALL
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the agent's problem/domain action list
	 * @param expert
	 */
	public boolean askAllRisks_QA()
	{
		if(agent.risks.size() > 0)
		{
			List<Fault> currentRisks = new ArrayList<Fault>(agent.risks); //Prevents concurrent mod exception
			askRisksInGivenList(currentRisks);
		}
		return false;
	}

	//QA based on PLANS/ALL
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the PLAN's actions (all possible features)
	 * @param expert
	 */
	public boolean askAllRisksInPlan_QA(List<ActionInstance> plan)
	{
		if(plan == null) return false;
		
		HashSet<Fault> risksInPlan = new HashSet<Fault>();
		for(ActionInstance act : plan)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			for(Proposition p : a.getPossiblePreconditions()) 	
				risksInPlan.add(Fault.getRiskFromIndex(Fault.PRECOPEN, a.getName(), p.getName()));
			for(Proposition p : a.getPossibleAddEffects()) 		
				risksInPlan.add(Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, a.getName(), p.getName()));
			for(Proposition p : a.getPossibleDeleteEffects()) 	
				risksInPlan.add(Fault.getRiskFromIndex(Fault.POSSCLOB, a.getName(), p.getName()));
		}
		
		if(!risksInPlan.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(risksInPlan));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/ALL 
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the Plan's Failure Explanation
	 * @param expert
	 */
	public boolean askAllRisksInPFE_QA(List<ActionInstance> plan)
	{			
		if(plan == null) return false;
		
		HashSet<Fault> risksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		int supports_bdd = agent.getBDD().support(failureExplanationSentence_bddRef);
		
		String supports = agent.bdd.toString(supports_bdd);		
		if(!supports.contains("TRUE") && !supports.contains("FALSE"))
		{
			for(int i = 0; i < agent.getNumBDDVars()-1; i++)//numRisks minus the fail var
				if(supports.charAt(i) != '-')
					risksInPFE.add(agent.numVarIndexToRiskForCubeOrMinterm.get(i));
		}
		
		if(!risksInPFE.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(risksInPFE));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/ALL CRITICAL
	/**
	 * Ask the Domain Expert about ALL CRITICAL risks that exist IN the Plan's Failure Explanation
     * "Critical" means that if the risk is removed from the PFE via bdd.exists method, then the 
     *  resulting PFE goes to TRUE. This indicates that the risk is implicated in every minterm of the bdd - 
     *  every interpretation of the actions where the plan will succeed in finding the goal has been voided. 
	 * @param expert
	 */
	public boolean askAllCriticalRisksInPFE_QA(List<ActionInstance> plan)
	{			
		if(plan == null) return false;
		
		//System.out.println("\nIN askAllCriticalRisksInPFE_QA()");
		//Planner.printPlanShort(plan); Planner.printPlanLong(plan);
		
		HashSet<Fault> risksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		
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
			askRisksInGivenList(new ArrayList<Fault>(risksInPFE));
			return true;
		}
		
		return false;
	}

	//QA based on PFE/BEST CUBE
	public boolean askBestCubeVarInPFE_QA(List<ActionInstance> plan)
	{
		return askBestVarInPFE_QA(plan, PFE_Type.CUBE);
	}
	
	//QA based on PFE/BEST MINTERM
	public boolean askBestMintermVarInPFE_QA(List<ActionInstance> plan)
	{
		return askBestVarInPFE_QA(plan, PFE_Type.MINTERM);
	}
	
	//main for above two
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the Plan's Failure Explanation in order of minterms
	 * Rather than ask about all existing risks in a plan's failure explanation, we ask about most critical risk,
	 * then redraw the PFE to see if the plan is still valid. If it is no longer valid
	 * 
	 * @param expert
	 */
	public boolean askBestVarInPFE_QA(List<ActionInstance> plan, PFE_Type type)
	{	
		if(plan == null) return false;
		
		//System.out.println("\nIN askAllMinTermsInPFE_QA()");
		
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		while(!minTerms.contains("FALSE") && !minTerms.contains("TRUE"))
		{
			LinkedList<LinkedList<Integer>> clauses_vars;
			if(type.equals(PFE_Type.CUBE))
				clauses_vars = getCubes(plan);
			else//if (type.equals(PFE_Type.MINTERM))
				clauses_vars = getMinTerms(plan);
				
			//Now sum over the appearance of variables in each cube (excepting fail var)
			Double[] bddVarsSummedValues = new Double[agent.getNumBDDVars()-1];
			for (int i = 0; i < agent.getNumBDDVars()-1; i++)
				bddVarsSummedValues[i] = 0.0;

			for (int i = 0; i < agent.getNumBDDVars()-1; i++)
				for(LinkedList<Integer> clause : clauses_vars)
					if(clause.contains(i))
						bddVarsSummedValues[i] += 1.0/Math.pow(clause.size(), 2);
		
			Double max = 0.0;
			int indexOfMax = 0;
			for(int i = 0; i < bddVarsSummedValues.length; i++)
				if (bddVarsSummedValues[i] > max)
				{
					indexOfMax = i;
					max = bddVarsSummedValues[i];
				}
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		if(minTerms.contains("TRUE")) return true;
		
		return false;
	}
	
	//ALL POSSPRE//////////////////////////////////////////////////////////////////////////////////
	
	//QA based on ACTIONS/ALL POSSPRE'S
	/**
	 * Ask the Domain Expert about ALL possPre risks that exist IN the agent's problem/domain action list
	 * @param expert
	 */	
	public boolean askAllPossPreRisks_QA()
	{
		List<Fault> currentPossPreRisks = new ArrayList<Fault>();
		for(Fault f : agent.risks)
			if(f.getRiskName().equals(Fault.PRECOPEN))
				currentPossPreRisks.add(f);
		
		if(currentPossPreRisks.size() > 0)
			askRisksInGivenList(currentPossPreRisks);

		return false;
	}
	
	//QA based on PLANS/ALL POSSPRE'S	
	/**
	 * Ask the Domain Expert about ALL posspres risks that exist IN the PLAN's actions
	 * @param expert
	 */
	public boolean askAllPossPreRisksInPlan_QA(List<ActionInstance> plan)
	{
		if(plan == null) return false;
		
		HashSet<Fault> possPreRisksInPlan = new HashSet<Fault>();
		for(ActionInstance act : plan)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			for(Proposition p : a.getPossiblePreconditions()) 	
				possPreRisksInPlan.add(Fault.getRiskFromIndex(Fault.PRECOPEN, a.getName(), p.getName()));
		}
		
		if(!possPreRisksInPlan.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(possPreRisksInPlan));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/ALL POSSPRE'S	
	/**
	 * Ask the Domain Expert about ALL possPre risks that exist IN the Plan's Failure Explanation
	 * @param expert
	 */
	public boolean askAllPossPreRisksInPFE_QA(List<ActionInstance> plan)
	{			
		if(plan == null) return false;
		
		HashSet<Fault> possPreRisksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		int supports_bdd = agent.bdd.support(failureExplanationSentence_bddRef);
		
		String supports = agent.bdd.toString(supports_bdd);		
		if(!supports.contains("TRUE") && !supports.contains("FALSE"))
		{
			for(int i = 0; i < agent.getNumBDDVars()-1; i++)//numRisks minus the fail var
				if(supports.charAt(i) != '-')
				{
					Fault risk = agent.numVarIndexToRiskForCubeOrMinterm.get(i);
					if(risk.getRiskName().equals(Fault.PRECOPEN))
						possPreRisksInPFE.add(risk);
				}
		}
		
		if(!possPreRisksInPFE.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(possPreRisksInPFE));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/ALL CRITICAL POSSPRE'S	
	/**
	 * Ask the Domain Expert about ALL CRITICAL possPre risks that exist IN the Plan's Failure Explanation
     * "Critical" means that if the risk is removed from the PFE via bdd.exists method, then the 
     *  resulting PFE goes to TRUE. This indicates that the risk is implicated in every minterm of the bdd - 
     *  every interpretation of the actions where the plan will succeed in finding the goal has been voided. 
	 * @param expert
	 */
	public boolean askAllCriticalPossPreRisksInPFE_QA(List<ActionInstance> plan)
	{			
		if(plan == null) return false;
		
		//System.out.println("\nIN askAllCriticalPossPreRisksInPFE_QA()");
		//Planner.printPlanShort(plan); Planner.printPlanLong(plan);
		
		HashSet<Fault> possPreRisksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		
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
			askRisksInGivenList(new ArrayList<Fault>(possPreRisksInPFE));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/BEST CUBE POSSPRE
	public boolean askBestPossPreCubeVarInPFE_QA(List<ActionInstance> plan)
	{
		return askBestPossPreVarInPFE_QA(plan, PFE_Type.CUBE);
	}
	
	//QA based on PFE/BEST MINTERM POSSPRE
	public boolean askBestPossPreMintermVarInPFE_QA(List<ActionInstance> plan)
	{
		return askBestPossPreVarInPFE_QA(plan, PFE_Type.MINTERM);
	}
	
	//main for above two
	/**
	 * Ask the Domain Expert about ALL risks that exist IN the Plan's Failure Explanation in order of minterms
	 * Rather than ask about all existing risks in a plan's failure explanation, we ask about most critical risk,
	 * then redraw the PFE to see if the plan is still valid. If it is no longer valid
	 * 
	 * @param expert
	 */
	public boolean askBestPossPreVarInPFE_QA(List<ActionInstance> plan, PFE_Type type)
	{	
		if(plan == null) return false;
		
		//System.out.println("\nIN askAllMinTermsInPFE_QA()");
		
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		while(!minTerms.contains("FALSE") && !minTerms.contains("TRUE"))
		{
			LinkedList<LinkedList<Integer>> clauses_vars;
			if(type.equals(PFE_Type.CUBE))
				clauses_vars = getCubes(plan);
			else//if (type.equals(PFE_Type.MINTERM))
				clauses_vars = getMinTerms(plan);
				
			//Now sum over the appearance of variables in each cube (excepting fail var)
			Double[] bddVarsSummedValues = new Double[agent.getNumBDDVars()-1];
			for (int i = 0; i < agent.getNumBDDVars()-1; i++)
				bddVarsSummedValues[i] = 0.0;

			for (int i = 0; i < agent.getNumBDDVars()-1; i++)
				for(LinkedList<Integer> clause : clauses_vars)
					if(agent.numVarIndexToRiskForCubeOrMinterm.get(i).getRiskName().equals(Fault.PRECOPEN))
						if(clause.contains(i))
							bddVarsSummedValues[i] += 1.0/Math.pow(clause.size(), 2);
		
			Double max = 0.0;
			int indexOfMax = 0;
			for(int i = 0; i < bddVarsSummedValues.length; i++)
				if (bddVarsSummedValues[i] > max)
				{
					indexOfMax = i;
					max = bddVarsSummedValues[i];
				}
			
			if(max == 0.0)
				break;
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		if(minTerms.contains("TRUE")) return true;
		
		return false;
	}
	
	//NEXT POSSPRE//////////////////////////////////////////////////////////////////////////////////
	
	//QA based on PLAN/NEXT POSSPRE
	/**
	 * Ask the Domain Expert about NEXT posspres risks - exist IN the PLAN's first action
	 * @param expert
	 */
	public boolean askNextPossPreRisksInPlan_QA(List<ActionInstance> plan)
	{
		if(plan == null) return false;
		
		HashSet<Fault> possPreRisksInPlan = new HashSet<Fault>();
		IncompleteActionInstance a = (IncompleteActionInstance) plan.get(0);
		for(Proposition p : a.getPossiblePreconditions()) 	
			possPreRisksInPlan.add(Fault.getRiskFromIndex(Fault.PRECOPEN, a.getName(), p.getName()));
		
		if(!possPreRisksInPlan.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(possPreRisksInPlan));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/NEXT POSSPRE
	/**
	 * Ask the Domain Expert about NEXT possPre risks that exist IN the Plan's Failure Explanation - exist IN the PLAN's first action
	 * @param expert
	 */
	public boolean askNextPossPreRisksInPFE_QA(List<ActionInstance> plan)
	{			
		if(plan == null) return false;
		
		HashSet<Fault> possPreRisksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		int supports_bdd = agent.bdd.support(failureExplanationSentence_bddRef);
		
		String supports = agent.bdd.toString(supports_bdd);		
		if(!supports.contains("TRUE") && !supports.contains("FALSE"))
		{
			for(int i = 0; i < agent.getNumBDDVars()-1; i++)//numRisks minus the fail var
				if(supports.charAt(i) != '-')
				{
					Fault risk = agent.numVarIndexToRiskForCubeOrMinterm.get(i);
					if(risk.getRiskName().equals(Fault.PRECOPEN) && risk.getActionName().equals(plan.get(0).getName()))
						possPreRisksInPFE.add(risk);
				}
		}
		
		if(!possPreRisksInPFE.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(possPreRisksInPFE));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/NEXT CRITICAL POSSPRE
	/**
	 * Ask the Domain Expert about NEXT CRITICAL possPre risks that exist IN the Plan's Failure Explanation
	 *  - exist IN the PLAN's first action.
     * "Critical" means that if the risk is removed from the PFE via bdd.exists method, then the 
     *  resulting PFE goes to TRUE. This indicates that the risk is implicated in every minterm of the bdd - 
     *  every interpretation of the actions where the plan will succeed in finding the goal has been voided. 
	 * @param expert
	 */
	public boolean askNextCriticalPossPreRisksInPFE_QA(List<ActionInstance> plan)
	{			
		if(plan == null) return false;
		
		//System.out.println("\nIN askAllCriticalPossPreRisksInPFE_QA()");
		//Planner.printPlanShort(plan); Planner.printPlanLong(plan);
		
		HashSet<Fault> possPreRisksInPFE = new HashSet<Fault>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		
		for(Fault risk : agent.risks)
		{	
			if(risk.getRiskName().equals(Fault.PRECOPEN) && risk.getActionName().equals(plan.get(0).getName()))
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
			askRisksInGivenList(new ArrayList<Fault>(possPreRisksInPFE));
			return true;
		}
		
		return false;
	}
	
	//QA based on PFE/NEXT CUBE POSSPRE
	public boolean askBestNextPossPreCubeVarInPFE_QA(List<ActionInstance> plan)
	{
		return askBestNextPossPreVarInPFE_QA(plan, PFE_Type.CUBE);
	}
	
	//QA based on PFE/NEXT MINTERM POSSPRE
	public boolean askBestNextPossPreMintermVarInPFE_QA(List<ActionInstance> plan)
	{
		return askBestNextPossPreVarInPFE_QA(plan, PFE_Type.MINTERM);
	}
	
	//main for above two
	/**
	 * Ask the Domain Expert about NEXT risks that exist IN the Plan's Failure Explanation in order of minterms
	 * or cubes - exist IN the PLAN's first action.
	 * 
	 * @param expert
	 */
	public boolean askBestNextPossPreVarInPFE_QA(List<ActionInstance> plan, PFE_Type type)
	{	
		if(plan == null) return false;
		
		//System.out.println("\nIN askAllMinTermsInPFE_QA()");

		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		while(!minTerms.contains("FALSE") && !minTerms.contains("TRUE"))
		{
			LinkedList<LinkedList<Integer>> clauses_vars;
			if(type.equals(PFE_Type.CUBE))
				clauses_vars = getCubes(plan);
			else//if (type.equals(PFE_Type.MINTERM))
				clauses_vars = getMinTerms(plan);
				
			//Now sum over the appearance of variables in each cube (excepting fail var)
			Double[] bddVarsSummedValues = new Double[agent.getNumBDDVars()-1];
			for (int i = 0; i < agent.getNumBDDVars()-1; i++)
				bddVarsSummedValues[i] = 0.0;

			for (int i = 0; i < agent.getNumBDDVars()-1; i++)
				for(LinkedList<Integer> clause : clauses_vars)
				{
					Fault riskToExamine = agent.numVarIndexToRiskForCubeOrMinterm.get(i);
					if(riskToExamine.getRiskName().equals(Fault.PRECOPEN) && riskToExamine.getActionName().equals(plan.get(0).getName()))
						if(clause.contains(i))
							bddVarsSummedValues[i] += 1.0/Math.pow(clause.size(), 2);
				}
		
			Double max = 0.0;
			int indexOfMax = 0;
			for(int i = 0; i < bddVarsSummedValues.length; i++)
				if (bddVarsSummedValues[i] > max)
				{
					indexOfMax = i;
					max = bddVarsSummedValues[i];
				}
			
			if(max == 0.0)
				break;
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		if(minTerms.contains("TRUE")) return true;
		
		return false;
	}

	//QTREE////////////////////////////////////////////////////////////////////////////////////////
	
	//ENTROPY
	boolean askBestQTreeOneStepRegPlanner_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, true, false, false, false, false);
	}
	
	boolean askBestQTreeOneStepRPS_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, true, false, false, true, false);
	}
	
	boolean askBestNextPossPreQTreeOneStepRegPlanner_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, true, false, false, false, true);
	}
	
	boolean askBestNextPossPreQTreeOneStepRPS_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, true, false, false, true, true);
	}
	
	//REGULAR PLANNER
	boolean askBestQTreeFullMaxRegPlanner_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, false, false, false, false);
	}
	
	boolean askBestQTreeABMaxRegPlanner_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, true, false, false, false);
	}
	
	boolean askBestQTreeFullAvgRegPlanner_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, false, true, false, false);
	}
	
	boolean askBestQTreeABAvgRegPlanner_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, true, true, false, false);
	}
	
	//RELAXED PLAN SOLVER
	boolean askBestQTreeFullMaxRPS_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, false, false, true, false);
	}
	
	boolean askBestQTreeABMaxRPS_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, true, false, true, false);
	}
	
	boolean askBestQTreeFullAvgRPS_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, false, true, true, false);
	}
	
	boolean askBestQTreeABAvgRPS_QA(List<ActionInstance> plan)
	{
							//(plan, is1Step, isAB, isAvg, isRPS, isNextPossPre)
		return askBestQTree_QA(plan, false, true, true, true, false);
	}
	
	//main for all QTree Variations
	boolean askBestQTree_QA(List<ActionInstance> plan, boolean is1Step, boolean isAB, boolean isAvg, boolean isRPS, boolean isNextPossPre)
	{
		if(plan == null) return false;
		
		if(debug)System.out.println("\nIN askBestQTree_QA()");
		
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		while(!minTerms.contains("FALSE") && !minTerms.contains("TRUE"))
		{	
			QTree qTree = new QTree(agent, plan, is1Step, isAB, isAvg, isRPS);
			Fault bestQFault = qTree.getBestQ(isNextPossPre);
			if(debug)System.out.println("BESTQ: " + bestQFault);
			if(bestQFault == null)
				break;
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(bestQFault);
			askRisksInGivenList(chosenRiskForQA);
			
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		if(minTerms.contains("TRUE")) return true;
		
		return false;
	}

	/**
	 * Returns a LL of LL's which have the indexes proper for the vars appearing in the PFE's cubes.
	 * Note that the calling method has ensured that no TRUE or FALSE exists in the PFE.
	 * 
	 * @param expert
	 * @param plan
	 * @return
	 */
	private LinkedList<LinkedList<Integer>> getCubes(List<ActionInstance> plan)
	{
		LinkedList<LinkedList<Integer>> cubes = new LinkedList<LinkedList<Integer>>();

		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String[] minTerms = agent.bdd.toString(failureExplanationSentence_bddRef).split("\n");
		
		//System.out.println("IN getCubes...");
		//System.out.println(agent.getBDD().toString(failureExplanationSentence_bddRef));
		//agent.getBDD().printCubes(failureExplanationSentence_bddRef);
		
		//for(String mt : minTerms)
		//	System.out.println("\t" + mt);
		
		for(int index = 0; index < minTerms.length; index++)
		{
			LinkedList<Integer> cube = new LinkedList<Integer>();
			for(int i = 0; i < agent.getNumBDDVars()-1; i++)//numRisks minus the fail var
				if(minTerms[index].charAt(i) == '1')
					cube.addLast(i);
			cubes.add(cube);
		}
		
		return cubes;
	}
	
	private LinkedList<LinkedList<Integer>> getMinTerms(List<ActionInstance> plan)
	{
		LinkedList<LinkedList<Integer>> minTerms = new LinkedList<LinkedList<Integer>>();
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String[] minTermsString = agent.getBDD().toString(failureExplanationSentence_bddRef).split("\n");
		
		for(int index = 0; index < minTermsString.length; index++)
		{
			LinkedList<Integer> minterm = new LinkedList<Integer>();
			for(int i = 0; i < agent.getBDD().numberOfVariables() - 1; i++)//numRisks minus the fail var
				if(minTermsString[index].charAt(i) == '1' || minTermsString[index].charAt(i) == '0')
					minterm.addLast(i);
			minTerms.add(minterm);
		}
		
		return minTerms;
	}
	
	//Utility methods used by above
	/**
	 * Ask the Domain Expert about ALL risks that exist in list of current Risks.
	 * @param expert
	 */
	private void askRisksInGivenList(List<Fault> currentRisks)
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
