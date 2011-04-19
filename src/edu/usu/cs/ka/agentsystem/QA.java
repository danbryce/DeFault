package edu.usu.cs.ka.agentsystem;

import java.util.*;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.ka.agentsystem.Agent.LearningTypes;
import edu.usu.cs.ka.utilities.Actions_Utility;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.RelaxedPlanSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class QA 
{
	public static enum QA_Types
	{
		NONE, 
		//ALL, ALL_IN_PLAN, ALL_IN_PFE, ALLCritical_IN_PFE, 
		//ALLPossPres, ALLPossPres_IN_PLAN, ALLPossPres_IN_PFE, ALLCriticalPossPres_IN_PFE,
										
		//BESTMintermVar_IN_PFE, 
		//BESTPossPreCubeVar_IN_PFE, BESTPossPreMintermVar_IN_PFE,
		
		//BEST_QTreeOneStepReg, BEST_QTreeOneStepRPS,
		//BEST_QTreeFullMaxReg, BEST_QTreeFullMaxRPS,
		//BEST_QTreeFullAvgReg, BEST_QTreeFullAvgRPS,
		//BEST_QTreeABMaxReg,   BEST_QTreeABMaxRPS,	
		//BEST_QTreeABAvgReg,   BEST_QTreeABAvgRPS,
		
		//NextPossPres_IN_PLAN, NextPossPres_IN_PFE, NextCriticalPossPres_IN_PFE, 
		//NextBESTPossPreCubeVar_IN_PFE, NextBESTPossPreMintermVar_IN_PFE,
		
		//NextBESTPossPre_QTreeOneStepReg, NextBESTPossPree_QTreeOneStepRPS,
		
		BCVInKBonceTil,
		BCVInKBallTil,
		
		//BCVInKBandPFEonceTil,
		//BCVInKBandPFEallTil,
		
		BCVInKBintPFEonceTil,
		BCVInKBintPFEallTil,
		
		BCVInKBintPFEplusPFEonceTil,
		BCVInKBintPFEplusPFEallOnce,
		
		BCVInPFEallTil, 
		BCVInPFEonceTil
	};
								
	public static enum PFE_Type{CUBE, MINTERM};
	
	Agent agent;
	DomainExpert expert;
	
	boolean debug = true;
	
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
	public boolean askQuestionsByType(QA_Types qaType, List<ActionInstance> plan, boolean isLoop)
	{
		switch(qaType)
		{
			case NONE: 									return false;
			//case ALL: 								return askAllRisks_QA();
			//case ALL_IN_PLAN: 						return askAllRisksInPlan_QA(plan);
			//case ALL_IN_PFE:	 						return askAllRisksInPFE_QA(plan);
			//case ALLCritical_IN_PFE:					return askAllCriticalRisksInPFE_QA(plan);
			//case BESTMintermVar_IN_PFE: 				return askBestMintermVarInPFE_QA(plan);
			//case BEST_QTreeOneStepReg:				return askBestQTreeOneStepRegPlanner_QA(plan);
			//case BEST_QTreeOneStepRPS:				return askBestQTreeOneStepRPS_QA(plan);
			
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
			//case BEST_QTreeABMaxReg:					return askBestQTreeABMaxRegPlanner_QA(plan);//
			//case BEST_QTreeABMaxRPS:					return askBestQTreeABMaxRPS_QA(plan);//
			//case BEST_QTreeFullAvgReg:				return askBestQTreeFullAvgRegPlanner_QA(plan); //confirm it's working
			//case BEST_QTreeABAvgRPS:					return askBestQTreeABAvgRPS_QA(plan); //confirm it's working
			//case BEST_QTreeABAvgReg:					return askBestQTreeABAvgRegPlanner_QA(plan); //confirm it's working
			//case BEST_QTreeFullAvgRPS:				return askBestQTreeFullAvgRPS_QA(plan); //confirm it's working
			
			//case NextPossPres_IN_PLAN: 				return askNextPossPreRisksInPlan_QA(plan);
			//case NextPossPres_IN_PFE: 				return askNextPossPreRisksInPFE_QA(plan);
			//case NextCriticalPossPres_IN_PFE: 		return askNextCriticalPossPreRisksInPFE_QA(plan);
			//case NextBESTPossPreCubeVar_IN_PFE: 		return askBestNextPossPreCubeVarInPFE_QA(plan);
			//case NextBESTPossPreMintermVar_IN_PFE: 	return askBestNextPossPreMintermVarInPFE_QA(plan);
			//case NextBESTPossPre_QTreeOneStepReg:		return askBestNextPossPreQTreeOneStepRegPlanner_QA(plan);
			//case NextBESTPossPree_QTreeOneStepRPS:	return askBestNextPossPreQTreeOneStepRPS_QA(plan);
			
			case BCVInKBonceTil: 						return askBestVarInKBonceThenReplan_tilOneClause_QA(isLoop);
			case BCVInKBallTil: 						return askBestVarInKB_tilOneClause_QA(isLoop);
			
			//case BCVInKBandPFEonceTil: 				return askBestVarInKBandPFE_onceThenReplan_toKBOneClause_QA(plan, isLoop);
			//case BCVInKBandPFEallTil: 				return askBestVarInKBandPFE_tilKBOneClause_QA(plan, isLoop);
			
			case BCVInKBintPFEonceTil: 					return askBestVarInKBintPFEonceThenReplan_tilEmpty_QA(plan, isLoop);
			case BCVInKBintPFEallTil: 					return askBestVarInKBintPFE_tilEmpty_QA(plan, isLoop);
			
			case BCVInKBintPFEplusPFEonceTil: 			return askBestVarInKBintPFEplusPFEonceThenReplan_thenPFEclausesToLToneOnce_QA(plan);
			case BCVInKBintPFEplusPFEallOnce: 			return askBestVarInKBintPFEplusPFEonce_thenPFEclausesToLToneOnce_QA(plan);
			
			case BCVInPFEallTil: 						return askBestCubeVarInPFEallThenReplan_tilPFEfalse_QA(plan);
			case BCVInPFEonceTil: 						return askBestCubeVarInPFEonceThenReplan_tilPFEfalse_QA(plan);

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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
		if(!risksInPFE.isEmpty())
		{
			askRisksInGivenList(new ArrayList<Fault>(risksInPFE));
			return true;
		}
		
		return false;
	}

//		
	//QA based on PFE/BEST CUBE
	public boolean askBestCubeVarInPFEallThenReplan_tilPFEfalse_QA(List<ActionInstance> plan)
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
	 * then redraw the PFE to see if the plan is still valid. 
	 * If it is no longer valid, the PFE goes to true and we re-plan.
	 * If the PFE goes to false, the plan will succeed.
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
				clauses_vars = getCubesFromPlan(plan);
			else//if (type.equals(PFE_Type.MINTERM))
				clauses_vars = getMinTerms(plan);
			
			int indexOfMax = getIndexOfBestPFEVariable(clauses_vars, false);
			
			if(indexOfMax == -1)
				break; //no more questions are left to ask or...
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			
			if(chosenRisk == null)
				break; //should never happen
			
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			agent.bdd.deref(failureExplanationSentence_bddRef);
			
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
		if(minTerms.contains("TRUE")) 
			return true;
		else
			return false;//
	}

//	
	boolean debugThis = false;
	public boolean askBestCubeVarInPFEonceThenReplan_tilPFEfalse_QA(List<ActionInstance> plan)
	{	
		if(plan == null) return false;
		
		if(debugThis) System.out.println("\nIN askAllMinTermsInPFE_QA()");
		
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		
		if(debugThis) System.out.println(minTerms);
		
		//The goal termination condition for this strategy
		if(minTerms.contains("FALSE"))
		{
			if(debugThis) System.out.println("F");
			return false; //breaks the sim's re-planning/QA loop - the plan is w/out fault
		}
		
		//this shouldn't ever happen, as each plan is newly generated from the current state and current agent actions
		if(minTerms.contains("TRUE"))
		{
			if(debugThis) System.out.println("F");
			return true; //re-plan - the plan is guaranteed to fail 
		}//only the planner call limit will stop this one if it ever occurs...
		
		LinkedList<LinkedList<Integer>> clauses_vars = getCubesFromPlan(plan);
		
		int bestQindex = getIndexOfBestPFEVariable(clauses_vars, false);
		if(bestQindex == -1)//Should never happen
		{
			if(debugThis) System.out.println("-1");
			agent.bdd.deref(failureExplanationSentence_bddRef);
			return false; //no more Q's to ask - the plan is w/out fault
		}
		else
		{	
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(bestQindex);
			if(chosenRisk == null)//Should never happen
			{
				if(debugThis) System.out.println("null");
				return false;//should never happen, just exit this strategy
			}
			
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			agent.bdd.deref(failureExplanationSentence_bddRef);
			if(debugThis) System.out.println("returning true");
			return true; //found a Q, asked it, now get a new plan and continue to ask until
						 //the plan is guaranteed to succeed - the PFE == false
		}
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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
				clauses_vars = getCubesFromPlan(plan);
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
			
			agent.bdd.deref(failureExplanationSentence_bddRef);
			
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
				clauses_vars = getCubesFromPlan(plan);
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
			
			agent.bdd.deref(failureExplanationSentence_bddRef);
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
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
		
		QTree qTree = null;
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		String minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		while(!minTerms.contains("FALSE") && !minTerms.contains("TRUE"))
		{	
			qTree = new QTree(agent, plan, is1Step, isAB, isAvg, isRPS);
			Fault bestQFault = qTree.getBestQ(isNextPossPre);
			if(debug)System.out.println("BESTQ: " + bestQFault);
			if(bestQFault == null)
				break;
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(bestQFault);
			askRisksInGivenList(chosenRiskForQA);
			
			agent.bdd.deref(failureExplanationSentence_bddRef);
			
			qTree.derefAllQTreeBddRefs();
			Planner.instance.setProblem(agent.getProblem()); //recall that the QTree uses the planner with another problem to hypothesize
															 //this is doubly called in case QTree malfunctions (see end of QTree.getBestQ()).
			failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			minTerms = agent.bdd.toString(failureExplanationSentence_bddRef);
		}
		
		if(qTree != null) qTree.derefAllQTreeBddRefs();
		Planner.instance.setProblem(agent.getProblem());
		agent.bdd.deref(failureExplanationSentence_bddRef);
				
		if(minTerms.contains("TRUE")) return true;
		
		return false;
	}

	//KB////////////////////////////////////////////////////////////////////////////////////////
//	
	/**
	 * Here we want to ask questions from the KB for loop cases only.
	 * Loops are caused by the agent not having enough information about an action, so on re-planning
	 * the same plan is suggested again, though an action in the last plan had failed during execution.
	 * A limit of what could be learned for that action failure occurs, particularly the case where
	 * there are many unsat posspre's.
	 * Also, it may not have been the action that failed that was at fault, 
	 * but a previous action with no state change.
	 * 
	 * One (best) Q is asked until the KB resolves to one clause, or the loop is no more 
	 * (new plan is no longer the sameas the old plan).
	 * Given the action update from this method, the agent will re-plan and hope for a new plan
	 */
	public boolean askBestVarInKBonceThenReplan_tilOneClause_QA(boolean isLoop)
	{			
		if(!isLoop)	//Not yet time to use this strat - only after agent executes does he run into loops
			return false;

		LinkedList<LinkedList<Integer>> clauses_vars = getCubesFromBDDref(agent.bddRef_KB);	
		if(clauses_vars.size() == 1) //A termination condition for this QA strategy.
			return false;
				
		//KB - Now sum over the appearance of variables in each cube (excepting fail var)
		//We don't sum over the Faults that are alreay entailed in this method
		Double[] bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_vars);
	
		Double max = 0.0;
		int indexOfMax = -1;
		for(int i = 0; i < bddVarsSummedValuesKB.length; i++)
			if (bddVarsSummedValuesKB[i] > max)
			{
				indexOfMax = i;
				max = bddVarsSummedValuesKB[i];
			}
			
		Fault chosenRisk;
		if(indexOfMax != -1)
			chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
		else 
			return false; // A termination condition - no Faults left that are not entailed (eq., KB is now a singleton clause)
		
		if(chosenRisk != null) //null should never occur here
		{
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
		}
		else
			return false;
		
		//replan with the updated information.
		return true;
	}
//	
	/**
	 * Here we want to ask questions from the KB for loop cases only.
	 * Loops are caused by the agent not having enough information about an action, so on re-planning
	 * the same plan is suggested again, though an action in the last plan had failed during execution.
	 * A limit of what could be learned for that action failure occurs, particularly the case where
	 * there are many unsat posspre's.
	 * Also, it may not have been the action that failed that was at fault, 
	 * but a previous action with no state change.
	 * 
	 * Q's are asked until the KB resolves to one clause.
	 * Given the action update from this method, the agent will re-plan and hope for a new plan
	 */
	public boolean askBestVarInKB_tilOneClause_QA(boolean isLoop)
	{			
		if(!isLoop)//Not yet time to use this strat - only after agent executes does he run into loops
			return false;
		
		LinkedList<LinkedList<Integer>> clauses_vars = getCubesFromBDDref(agent.bddRef_KB);
		if(clauses_vars.size() == 1) //The true termination condition for this QA strategy.
			return false;
		
		boolean isFirstTime = true;
		while(clauses_vars.size() > 1)
		{		
			//KB - Now sum over the appearance of variables in each cube (excepting fail var)			
			Double[] bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_vars);

			Double max = 0.0;
			int indexOfMax = -1;
			for(int i = 0; i < bddVarsSummedValuesKB.length; i++)
				if (bddVarsSummedValuesKB[i] > max)
				{
					indexOfMax = i;
					max = bddVarsSummedValuesKB[i];
				}
				
			Fault chosenRisk;
			if(indexOfMax != -1)
				chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			else if(isFirstTime && indexOfMax == -1)
				return false;// an error condition, just cut the strat short
			else
			//Here, we've been in the loop, but are now done updating the KB. time to re-plan once
				return true;// A termination condition - no Faults left that are not entailed (eq., KB is now a singleton clause)
			
			if(chosenRisk != null)//Should never happen
			{
				ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
				chosenRiskForQA.add(chosenRisk);
				askRisksInGivenList(chosenRiskForQA);//This will update the KB after asking the Q
			}
			else if(isFirstTime && chosenRisk == null)
				return false;// an error condition, just cut the strat short
			else
				return true;
			
			clauses_vars = getCubesFromBDDref(agent.bddRef_KB);
			isFirstTime = false;
		}
		
		//We have now asked all questions that cause the KB to have multiple knowledge possibilities
		//replan with the updated information.
		return true;
	}

	//KB AND PFE - KB emphasized///////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * Here we want to ask one question from the KB for loop cases only.
	 * Its goal is to reduce the KB to one clause.
	 * this method weight the Qs by whether they also occur in the PFE.
	 * Loops are caused by the agent not having enough information about an action, so on re-planning
	 * the same plan is suggested again, though an action in the last plan had failed during execution.
	 * A limit of what could be learned for that action failure occurs, particularly the case where
	 * there are many unsat posspres.
	 * Also, it may not have been the action that failed that was at fault, 
	 * but a previous action with no state change.
	 * 
	 * Given the action update from this method, the agent will re-plan and hope for a new plan
	 * 
	 * possPre's might not be reason why the planner suggests the same plan again.
	 * Perhaps remove the possPre limitation below.
	 * 
	 */
	public boolean askBestVarInKBandPFE_onceThenReplan_toKBOneClause_QA(List<ActionInstance> plan, boolean isLoop)
	{	
		if(!isLoop || plan == null)
			return false;
	
		//KB - getting best Q's from KB
		LinkedList<LinkedList<Integer>> clauses_varsKB = getCubesFromBDDref(agent.bddRef_KB);
		if(clauses_varsKB.size() == 1)//The true termination condition
			return false;
				
		//KB - Now sum over the appearance of variables in each cube (excepting fail var)			
		Double[] bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_varsKB);
		
		//PFE - Now sum over the appearance of variables in each cube (excepting fail var)
		int pfe_bddRef = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		LinkedList<LinkedList<Integer>> clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
		agent.bdd.deref(pfe_bddRef);
		
		Double[] bddVarsSummedValuesPFE = sumOverBDDrefsValues_MultiClause(clauses_varsPFE);
	
		//Merge the results
		int indexOfMax = getIndexOfMutualMax(bddVarsSummedValuesKB, bddVarsSummedValuesPFE, true);
					
		Fault chosenRisk;
		if(indexOfMax != -1) //If no variable exists in the KB that is not in question, then return false
			chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
		else 
			return false;//Should never happen, but if it does, just terminate, there's some terrible unseen error
		
		if(chosenRisk != null)
		{
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			//We have now asked one question that was relevant to the next plan.
			//replan with the updated information.
			return true;
		}
		else
			return false;//Should never happen, but if it does, just terminate, there's some terrible unseen error
	}
	
	public boolean askBestVarInKBandPFE_tilKBOneClause_QA(List<ActionInstance> plan, boolean isLoop)
	{	
		if(!isLoop || plan == null)
			return false;

		//KB - getting best Q's from KB
		LinkedList<LinkedList<Integer>> clauses_varsKB = getCubesFromBDDref(agent.bddRef_KB);
		if(clauses_varsKB.size() == 1)//The true termination condition
			return false;
		
		//Clauses in the KB should always reduce to 1 here before the next loop 
		//Though the primary termination seems good,
		//a counter is also employed to stop any malfunction.
		int counter = 0;
		boolean firstTime = true;
		while(clauses_varsKB.size() > 1 && counter < 11000)
		{
			//KB - Now sum over the appearance of variables in each cube (excepting fail var)			
			Double[] bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_varsKB);
			
			//PFE - Now sum over the appearance of variables in each cube (excepting fail var)
			int pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			LinkedList<LinkedList<Integer>> clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
			agent.bdd.deref(pfe_bddRef);
			
			Double[] bddVarsSummedValuesPFE = sumOverBDDrefsValues_MultiClause(clauses_varsPFE);
		
			//Merge the results
			int indexOfMax = getIndexOfMutualMax(bddVarsSummedValuesKB, bddVarsSummedValuesPFE, true);
				
			Fault chosenRisk = null;
			if(indexOfMax != -1) //If no variable exists in the KB that is not in question, then return false
				chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			else if(indexOfMax == -1 && firstTime)
			{
				return false;//error condition, just cut this strat short
			}
			
			if(chosenRisk != null)
			{
				ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
				chosenRiskForQA.add(chosenRisk);
				askRisksInGivenList(chosenRiskForQA);
			}
			else if(chosenRisk == null && firstTime)
				return false;//error condition, just cut this strat short
			
			clauses_varsKB = getCubesFromBDDref(agent.bddRef_KB);
			counter++;
			firstTime = false;
		}
		
		//We have now asked all Qs leading to the KB now existing with a single clause.
		//replan with the updated information.
		if(counter < 11000)
			return true;
		else
			return false;//error condition, just cut this strat short
	}

	//KB int PFE///////////////////////////////////////////////////////////////////////////////////	
//	
	/**
	 * Here we want to ask one question from the KB intersected with the PFE for loop cases only.
	 * Loops are caused by the agent not having enough information about an action, so on re-planning
	 * the same plan is suggested again, though an action in the last plan had failed during execution.
	 * A limit of what could be learned for that action failure occurs, particularly the case where
	 * there are many unsat posspres.
	 * Also, it may not have been the action that failed that was at fault, 
	 * but a previous action with no state change.
	 * 
	 * Given the action update from this method, the agent will re-plan and hope for a new plan
	 * 
	 * possPre's might not be reason why the planner suggests the same plan again.
	 * Perhaps remove the possPre limitation below.
	 * 
	 */
	public boolean askBestVarInKBintPFEonceThenReplan_tilEmpty_QA(List<ActionInstance> plan, boolean isLoop)
	{	
		if(!isLoop || plan == null)
			return false;
	
		//KB - getting best Q's from KB
		//Though here is a call to getCubesFromPFE, in fact that method doesn't care
		//about whether the bddRef sent in points to a PFE or a KB.
		LinkedList<LinkedList<Integer>> clauses_varsKB = getCubesFromBDDref(agent.bddRef_KB);
		//There will be no intersection in this case, thus is a primary termination condition
		if(clauses_varsKB.size() == 1) 
			return false;
				
		//KB - Now sum over the appearance of variables in each cube (excepting fail var)			
		Double[] bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_varsKB);
		
		//PFE - Now sum over the appearance of variables in each cube (excepting fail var)
		int pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		
		LinkedList<LinkedList<Integer>> clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
		agent.bdd.deref(pfe_bddRef);
		
		if(clauses_varsPFE.size() == 0)
			return false;//another valid termination clause
			//the new plan never has a PFE that is TRUE
			//If its false, then the plan is guarantedd success
			//else clauses_varsPFE.size is never 0
		
		Double[] bddVarsSummedValuesPFE = sumOverBDDrefsValues_MultiClause(clauses_varsPFE);
	
		//Merge the results
		int indexOfMax = getIndexOfMutualMax(bddVarsSummedValuesKB, bddVarsSummedValuesPFE, false);
			
		Fault chosenRisk;
		if(indexOfMax != -1) //If no variable exists in the KB that is not in question, then return false
			chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
		else 
			return false;//means all the Faults in the intersection of PFE and KB have been exhausted
		
		if(chosenRisk != null)
		{
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			//We have now asked one question that was relevant to the next plan, 
			//but we didn't hit a stopping condition - a Fault was found, and the KB clauses were > 1
			//replan with the updated information.
			return true;
		}
		else
			return false;
	}
//	
	/**
	 * This one will ask all the q's from the intersection of KB and (current) PFE
	 * 
	 * @param plan
	 * @param isLoop
	 * @return
	 */
	public boolean askBestVarInKBintPFE_tilEmpty_QA(List<ActionInstance> plan, boolean isLoop)
	{	
		if(!isLoop || plan == null)
			return false;
	
		//KB - getting best Q's from KB
		//Though here is a call to getCubesFromPFE, in fact that method doesn't care
		//about whether the bddRef sent in points to a PFE or a KB.
		LinkedList<LinkedList<Integer>> clauses_varsKB = getCubesFromBDDref(agent.bddRef_KB);
		
		//A simple way to know if we've asked all the q's that would have caused a loop
		//There will be no intersection in this case
		if(clauses_varsKB.size() == 1)
			return false;
		
		//Prime the loop to see if the stopping condition has yet occurred 
		// - that there are no Faults in common between the KB and PFE
		//KB - Now sum over the appearance of variables in each cube (excepting fail var)			
		Double[] bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_varsKB);
		
		//PFE - Now sum over the appearance of variables in each cube (excepting fail var)
		int pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		LinkedList<LinkedList<Integer>> clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
		agent.bdd.deref(pfe_bddRef);
		
		if(clauses_varsPFE.size() == 0)
			return false;//another valid termination clause
			//the new plan never has a PFE that is TRUE
			//If its false, then the plan is guarantedd success
			//else clauses_varsPFE.size is never 0
		
		Double[] bddVarsSummedValuesPFE = sumOverBDDrefsValues_MultiClause(clauses_varsPFE);
	
		//Merge the results
		int indexOfMax = getIndexOfMutualMax(bddVarsSummedValuesKB, bddVarsSummedValuesPFE, false);
		
		//The work has been completed - no intersection
		if(indexOfMax == -1)
			return false;
		
		//End of the priming of the loop
		
		//Clauses in the KB might not reduce to 1 here, 
		//as we limit the Q's to the intersection of non-entailed Faults in both the KB and PFE.
		//Though an adequate, but awkward termination condition exists below,
		//a counter is employed to stop any malfunction.
		int counter = 0;
		boolean isFirstTime = true;
		while(clauses_varsKB.size() > 1 && counter < 10000)
		{				
			Fault chosenRisk;
			if(indexOfMax != -1) //If no variable exists in the KB that is not in question, then return false
				chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(indexOfMax);
			else
				break; //this is really the termination condition, awkwardly.
					   //Within this loop, all Q's have been asked for the KB (updated every round of the loop)
					   //and its intersection with existing PFE. Time to re-plan.
					   //If there's an error here, this while loop might always spin.
					   //Thus, we place a limit of 10,000 spins in this while
			
			if(chosenRisk != null)
			{
				ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
				chosenRiskForQA.add(chosenRisk);
				askRisksInGivenList(chosenRiskForQA);
			}
			else if(chosenRisk == null && isFirstTime)
				return false; //An error condition, just leave the strat behind
			else 
				break;//means no Fault was found, but faults were found in a previous iteration of the loop

			//Readying for the next loop iteration
			
			clauses_varsKB = getCubesFromBDDref(agent.bddRef_KB);
			
			//KB - Now sum over the appearance of variables in each cube (excepting fail var)			
			bddVarsSummedValuesKB = sumOverBDDrefsValues_MultiClause(clauses_varsKB);
			
			//PFE - Now sum over the appearance of variables in each cube (excepting fail var)
			pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
			agent.bdd.deref(pfe_bddRef);
			
			bddVarsSummedValuesPFE = sumOverBDDrefsValues_MultiClause(clauses_varsPFE);
		
			//Merge the results
			indexOfMax = getIndexOfMutualMax(bddVarsSummedValuesKB, bddVarsSummedValuesPFE, false);
			
			
			isFirstTime = false;
			counter++;
		}
		
		//We have now asked all Qs leading to the KB now existing with a single clause.
		//Re-plan with the updated information.
		return true;
	}
	
	//KB int PFE, PFE emphasized///////////////////////////////////////////////////////////////////////////////////
	//These strats only get called a limited number of times based on the once then re-plan or allAtOnceVariations
	static boolean doNotRepeatTheKBintPFEplusPFEstrats = false;
//	
	/**
	 * This method allows repeated re-planning until the current plan and the KB have no intersection.
	 * It attempts to economize the Q's asked for pure relevance to the current plan
	 * It asks Q's of the KB intersection PFE once, then replans, until there is no intersection.
	 * This is identical to the KB intersection PFE askOnceThenRePlan strat
	 * Then it tops it off with one round of QA for the current PFE - but only for clauses of size 1 and the Faults they contain
	 * @param plan
	 * @return
	 */
	public boolean askBestVarInKBintPFEplusPFEonceThenReplan_thenPFEclausesToLToneOnce_QA(List<ActionInstance> plan)
	{
		if(plan == null) return false;
		if(doNotRepeatTheKBintPFEplusPFEstrats)
		{
			doNotRepeatTheKBintPFEplusPFEstrats = false;
			return false;
		}
		
		//First thing to do is call the KB int PFE method. Send it the loop flag,
		//as that is what it what originally intended for...
		boolean resultOfKBintPFEAll_wasGoodQfound = askBestVarInKBintPFEonceThenReplan_tilEmpty_QA(plan, true);
		if(resultOfKBintPFEAll_wasGoodQfound)//It found a good q. Replan.
			return true;
		else
			doNotRepeatTheKBintPFEplusPFEstrats = true;
		
		
		//Now this strat has one chance to anticipate the future in a single loop
		int pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		LinkedList<LinkedList<Integer>> clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
		agent.bdd.deref(pfe_bddRef);
		
		boolean isReductionOfPFEclausesToSize1ongoing = true;
		if(clauses_varsPFE.size() == 0)
			isReductionOfPFEclausesToSize1ongoing = false;
		
		int bestVarIndex = getIndexOfBestPFEVariable(clauses_varsPFE, true);//the true means that if clause size == 1, ask that Q
		if(bestVarIndex == -1)
			isReductionOfPFEclausesToSize1ongoing = false;
		
		Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(bestVarIndex);
		if(chosenRisk == null)
			isReductionOfPFEclausesToSize1ongoing = false;

		boolean askedAQFromPFE = false;
		while(isReductionOfPFEclausesToSize1ongoing)
		{
			askedAQFromPFE = true;
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
			agent.bdd.deref(pfe_bddRef);

			if(clauses_varsPFE.size() == 0)
				isReductionOfPFEclausesToSize1ongoing = false;
			
			bestVarIndex = getIndexOfBestPFEVariable(clauses_varsPFE, true);//the true means that if clause size == 1, ask that Q
			if(bestVarIndex == -1)
				isReductionOfPFEclausesToSize1ongoing = false;
			
			chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(bestVarIndex);
			if(chosenRisk == null)
				isReductionOfPFEclausesToSize1ongoing = false;
		}
		
		//This method is over, but it might need one re-planning session first to incorporate the new knowledge into the next plan
		if(!askedAQFromPFE && !resultOfKBintPFEAll_wasGoodQfound)
		{
			doNotRepeatTheKBintPFEplusPFEstrats = false;//reset this for next time
			return false;
		}
		else
		{
			doNotRepeatTheKBintPFEplusPFEstrats = true;
			return true;
			//This combo allows the agent to re-plan once, but when this method is called again
			//it resets the repeat to false, but doesn't allow the agent to re-plan again until 
			//the next sim execution loop iteration
		}
	}
//
	/**
	 * This method allows no re-planning.
	 * It asks all Q's of the KB intersection current plan's PFE once
	 * If it comes up with a new plan whose action risks are also implicated in the PFE, it will just have to wait til next round
	 * Then it tops it off with one round of QA for the current PFE - but only for clauses of size 1 and the Faults they contain
	 * @param plan
	 * @return
	 */
	boolean debugIt = false;
	public boolean askBestVarInKBintPFEplusPFEonce_thenPFEclausesToLToneOnce_QA(List<ActionInstance> plan)
	{
		if(plan == null) return false;
		if(doNotRepeatTheKBintPFEplusPFEstrats)
		{
			doNotRepeatTheKBintPFEplusPFEstrats = false;
			return false;
		}
		
		//First thing to do is call the KB int PFE method - the all Q's version
		boolean resultOfKBintPFEAll_wasGoodQfound = askBestVarInKBintPFE_tilEmpty_QA(plan, true);

		//Now focus on the PFE
		int pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
		LinkedList<LinkedList<Integer>> clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
		agent.bdd.deref(pfe_bddRef);
		
		boolean isReductionOfPFEclausesToSize1ongoing = true;
		if(clauses_varsPFE.size() == 0)
			isReductionOfPFEclausesToSize1ongoing = false;
		
		int bestVarIndex = getIndexOfBestPFEVariable(clauses_varsPFE, true);//the true means that if clause size == 1, ask that Q
		if(bestVarIndex == -1)
			isReductionOfPFEclausesToSize1ongoing = false;
		
		Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(bestVarIndex);
		if(chosenRisk == null)
			isReductionOfPFEclausesToSize1ongoing = false;

		boolean askedAQFromPFE = false;
		while(isReductionOfPFEclausesToSize1ongoing)
		{
			askedAQFromPFE = true;
			
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			chosenRiskForQA.add(chosenRisk);
			askRisksInGivenList(chosenRiskForQA);
			
			pfe_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);
			clauses_varsPFE = getCubesFromBDDref(pfe_bddRef);
			agent.bdd.deref(pfe_bddRef);

			if(clauses_varsPFE.size() == 0)
				isReductionOfPFEclausesToSize1ongoing = false;
			
			bestVarIndex = getIndexOfBestPFEVariable(clauses_varsPFE, true);//the true means that if clause size == 1, ask that Q
			if(bestVarIndex == -1)
				isReductionOfPFEclausesToSize1ongoing = false;
			
			chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(bestVarIndex);
			if(chosenRisk == null)
				isReductionOfPFEclausesToSize1ongoing = false;
		}
		
		//This method is over, but it might need one re-planning session first to incorporate the new knowledge into the next plan
		if(!askedAQFromPFE && !resultOfKBintPFEAll_wasGoodQfound)
		{
			doNotRepeatTheKBintPFEplusPFEstrats = false;//reset this for next time
			return false;
		}
		else
		{
			doNotRepeatTheKBintPFEplusPFEstrats = true;
			return true;
			//This combo allows the agent to re-plan once, but when this method is called again
			//it resets the repeat to false, but doesn't allow the agent to re-plan again until 
			//the next sim execution loop iteration
		}
	}
	
	//Utility methods used by above////////////////////////////////////////////////////////////////
	
	private Double[] sumOverBDDrefsValues_MultiClause(LinkedList<LinkedList<Integer>> clauses_vars)
	{
		//Now sum over the appearance of variables in each cube (excepting fail var)
		Double[] bddVarsSummedValues = new Double[agent.getNumBDDVars()-1];
		for (int i = 0; i < agent.getNumBDDVars()-1; i++)
			bddVarsSummedValues[i] = 0.0;

		for (int i = 0; i < agent.getNumBDDVars()-1; i++)
			for(LinkedList<Integer> clause : clauses_vars)
				if(clause.contains(i))
				{
					Fault riskToQuestion = agent.numVarIndexToRiskForCubeOrMinterm.get(i);
					int bddRefForRiskToQuestion = agent.riskToBDD.get(riskToQuestion);
					if((agent.bdd.and(agent.bddRef_KB, agent.bdd.not(bddRefForRiskToQuestion)) != 0) &&
					    (agent.bdd.and(agent.bddRef_KB, bddRefForRiskToQuestion) != 0)	)
					{
						//The risk above is not entailed by the KB, 
						//but does exist as a potential reason for failure
						bddVarsSummedValues[i] += 1.0/Math.pow(clause.size(), 2);
					}
				}
		return bddVarsSummedValues;
	}

	private int getIndexOfMutualMax(Double[] bddVarsSummedValuesKB, Double[] bddVarsSummedValuesPFE, boolean isToKBoneClause)
	{
		//Merge the results
		Double[] bddVarsSummedValuesKBandPFE = new Double[agent.getNumBDDVars()-1];
		for (int i = 0; i < agent.getNumBDDVars()-1; i++)
			bddVarsSummedValuesKBandPFE[i] = 0.0;
		
		Double max = 0.0;
		int indexOfMax = -1;
		for(int i = 0; i < bddVarsSummedValuesKBandPFE.length; i++) //same length for both
		{
			if(isToKBoneClause)
			{
				if(bddVarsSummedValuesKB[i] > 0.0)
					bddVarsSummedValuesKBandPFE[i] = bddVarsSummedValuesPFE[i] + bddVarsSummedValuesKB[i];
			}
			else
			{
				if((bddVarsSummedValuesPFE[i] > 0) && (bddVarsSummedValuesKB[i] > 0.0))
					bddVarsSummedValuesKBandPFE[i] = bddVarsSummedValuesPFE[i] + bddVarsSummedValuesKB[i];
			}
			
			if(bddVarsSummedValuesKBandPFE[i] > max)
			{
				max = bddVarsSummedValuesKBandPFE[i];
				indexOfMax = i;
			}
		}
		
		return indexOfMax;
	}
	
	/**
	 * Returns a LL of LL's which have the indexes proper for the vars appearing in the PFE's cubes.
	 * Note that the calling method has ensured that no TRUE or FALSE exists in the PFE.
	 * 
	 * @param expert
	 * @param plan
	 * @return
	 */
	private LinkedList<LinkedList<Integer>> getCubesFromPlan(List<ActionInstance> plan)
	{
		int failureExplanationSentence_bddRef  = RiskCounter.tryThisPFEGenerator(agent.problem, plan, Planner.solver);	
		
		LinkedList<LinkedList<Integer>> cube_VarIndexes = getCubesFromBDDref(failureExplanationSentence_bddRef);
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
		return cube_VarIndexes;
	}
	
	//While this is primarily used to get cubes for PFE's it can also get cubes for any bddRef.
	//It is used in this fashion to collect the vars from the KB
	private LinkedList<LinkedList<Integer>> getCubesFromBDDref(int PFE_bddRef)
	{
		LinkedList<LinkedList<Integer>> cubes = new LinkedList<LinkedList<Integer>>();

		String[] clauses = agent.bdd.toString(PFE_bddRef).split("\n");
		
		//System.out.println("IN getCubes...");
		//System.out.println(agent.getBDD().toString(failureExplanationSentence_bddRef));
		//agent.getBDD().printCubes(failureExplanationSentence_bddRef);
		
		//for(String mt : minTerms)
		//	System.out.println("\t" + mt);
		
		for(int index = 0; index < clauses.length; index++)
		{			
			if(!clauses[index].contains("TRUE") && !clauses[index].contains("FALSE"))
			{
				LinkedList<Integer> cube = new LinkedList<Integer>();
				
				for(int i = 0; i < clauses[index].length()-1; i++)//should be numRisks minus the fail var
					if(clauses[index].charAt(i) == '1')
						cube.addLast(i);
				cubes.add(cube);
			}
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
		
		agent.bdd.deref(failureExplanationSentence_bddRef);
		
		return minTerms;
	}
	
	/**
	 * Ask the Domain Expert about ALL risks that exist in list of current Risks.
	 * @param expert
	 */
	private void askRisksInGivenList(List<Fault> currentRisks)
	{
		try
		{
			for(Fault f : currentRisks)
			{
				if(f == null)
				{
					System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
					System.out.println("Fault IS NULL");
					System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
				}
				
	
					boolean result = expert.isRiskAFeatureQuery(f);
					agent.numQsAsked++;
				
				
				if(result) 	agent.addDomainExpertQueryResultToBDDAndUpdateActions_QA(f, true);
				else 		agent.addDomainExpertQueryResultToBDDAndUpdateActions_QA(f, false);
			}
			
			agent.updateActions(LearningTypes.QA);	
		}
		catch(Exception e)
		{
			System.out.println("Expert: " + expert);
			System.out.println("Agent: " + agent);
		}
	}
	
	/**
	 * The flaw here might be is that we assume the RPG will ALWAYS obtain a relaxed plan.
	 *  A counter is employed to stop a spinning loop. 
	 *  Greater than 10,000, no domain has more than 10,000 incomplete features
	 *  This calls getPFE_RPSolver(). 
	 *  PFE_RPSolver() is dependent on the Planner already having a PlannerType {AMIR, JDD}.
	 */
	public void askQsFromRelaxedPlanGraph()
	{	
		int counterProtection = 0;
		boolean stillWorkingAtIt = true;
		int PFE_RPS_bddRef = getPFE_RPSolver();
		int supports_bdd = agent.getBDD().support(PFE_RPS_bddRef);
		String supports = agent.bdd.toString(supports_bdd);
		while(!supports.contains("FALSE") && !supports.contains("TRUE") && counterProtection < 10000 && stillWorkingAtIt)
		{	
			boolean notFound = true;
			ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
			for(int i = 0; i < agent.getNumBDDVars()-1 && notFound; i++)//numRisks minus the fail var
				if(supports.charAt(i) != '-')
				{
						chosenRiskForQA.add(agent.numVarIndexToRiskForCubeOrMinterm.get(i));
						notFound = false;
				}
			
			if(chosenRiskForQA.size() != 0)
			{	
				askRisksInGivenList(chosenRiskForQA);
		
				agent.bdd.deref(PFE_RPS_bddRef);
				PFE_RPS_bddRef = getPFE_RPSolver();
				supports_bdd = agent.getBDD().support(PFE_RPS_bddRef);
				supports = agent.bdd.toString(supports_bdd);
			}
			else
				stillWorkingAtIt = false;
			
			counterProtection++;
		}
		agent.bdd.deref(PFE_RPS_bddRef);
	}
	
	public void askQsFromRelaxedPlanGraph2()
	{		
		int counterProtection = 0;
		boolean stillWorkingAtIt = true;
		int PFE_RPS_bddRef = getPFE_RPSolver();
		String minTerms = agent.bdd.toString(PFE_RPS_bddRef);
		while(!minTerms.contains("FALSE") && !minTerms.contains("TRUE") && counterProtection < 10000 && stillWorkingAtIt)
		{				
			LinkedList<LinkedList<Integer>> clauses_vars = this.getCubesFromBDDref(PFE_RPS_bddRef);
			int bestPFEVarIndex = getIndexOfBestPFEVariable(clauses_vars, false);
			
			
			if(bestPFEVarIndex != -1)
			{
				ArrayList<Fault> chosenRiskForQA = new ArrayList<Fault>();
				Fault chosenRisk = agent.numVarIndexToRiskForCubeOrMinterm.get(bestPFEVarIndex);
				
				chosenRiskForQA.add(chosenRisk);
				askRisksInGivenList(chosenRiskForQA);
		
				agent.bdd.deref(PFE_RPS_bddRef);
				PFE_RPS_bddRef = getPFE_RPSolver();
				minTerms = agent.bdd.toString(PFE_RPS_bddRef);
			}
			else
				stillWorkingAtIt = false;
			
			counterProtection++;
		}
		agent.bdd.deref(PFE_RPS_bddRef);
	}
	
	private int getIndexOfBestPFEVariable(LinkedList<LinkedList<Integer>> clauses_vars, boolean isOnlySingletonClauses)
	{
		//Now sum over the appearance of variables in each cube (excepting fail var)
		Double[] bddVarsSummedValues = new Double[agent.getNumBDDVars()-1];
		for (int i = 0; i < agent.getNumBDDVars()-1; i++)
			bddVarsSummedValues[i] = 0.0;

		for (int i = 0; i < agent.getNumBDDVars()-1; i++)
			for(LinkedList<Integer> clause : clauses_vars)
			{
				if(clause.contains(i) && !isOnlySingletonClauses)
					bddVarsSummedValues[i] += 1.0/Math.pow(clause.size(), 2);
				else if(isOnlySingletonClauses && clause.contains(i) && clause.size() == 1)
					bddVarsSummedValues[i] += 1.0/Math.pow(clause.size(), 2);
			}
	
		Double max = 0.0;
		int indexOfMax = -1;
		for(int i = 0; i < bddVarsSummedValues.length; i++)
			if (bddVarsSummedValues[i] > max)
			{
				indexOfMax = i;
				max = bddVarsSummedValues[i];
			}
		return indexOfMax;
	}
	
	private int getPFE_RPSolver()
	{
		RelaxedPlanSolver RPSolver;
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		solverOptions.setUseMultipleSupportersInPlanningGraph(true);
		solverOptions.setFaultType(SolverOptions.FAULT_TYPE.BDD_FAULTS);
		
		if(Planner.currPType.equals(Planner.PlannerTypes.JDD))
			solverOptions.setBiasRelaxedPlanWithFaults(true);
		else if (Planner.currPType.equals(Planner.PlannerTypes.AMIR))
			solverOptions.setBiasRelaxedPlanWithFaults(false);
		else
			if(debug) System.out.println("NON-RECOGNIZED PLANNER TYPE");
				
		try {
			RPSolver = new RelaxedPlanSolver(agent.domain, agent.problem, searchStatistics, solverOptions);
			BDDRiskSet fs = (BDDRiskSet) RPSolver.getExplanation();
			return fs.getFaults();
		} catch (IllDefinedProblemException e) { e.printStackTrace(); }
		
		return 0;
	}
}
