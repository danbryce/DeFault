package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.util.FaultCounter;
import jdd.bdd.*;

/**
 * @author CHW
 * This agent uses a BDD to learn about actions taken.
 * It contains methods to:
 *  Take actions even if they might fail - risky(R)
 *  Take actions even if the plan has a guaranteed future failure - greedy(G)
 */
public class Agent_All_Annotated 
{
	//Have made changes to Fault and RiskCounter classes
	
	//Domain and Problem stuff
	String domainFile;
	String problemFile;
	
    Domain domain;
    Problem problem;
    
    List<ActionInstance> actions;
    Hashtable<String, IncompleteActionInstance> actionsHT;
	
    //BDD stuff - will be initialized via RiskCounter
	BDD bdd;
	int bddRef_KB;
	int failVar;
	
	List<Fault> risks;
	private Map<Fault, Integer> riskToBDD;
	private Map<Integer, Fault> bddToRisk;
	
	//Results stuff
	Long startTime;
	Long finishTime;
	int actionsCount;
	
	public Agent_All_Annotated(String dFile, String pFile)
	{
		domainFile = dFile;
		problemFile = pFile;
		
		setDomainAndProblem();
		setActions();
		loadActionsHT();
		
		FaultCounter.resetIsInitialized();//The Fault.StaticHashMaps are also reset in this method
		FaultCounter.initialize(domain, problem);
				
		bdd = FaultCounter.getBDD();
		bddRef_KB = bdd.ref(bdd.getOne());
		
		risks = FaultCounter.getAllRisks();
		riskToBDD = FaultCounter.getRiskToBDD();
		bddToRisk = FaultCounter.getBddToRisk();
		
		failVar = bdd.createVar();
		
		//Create a var for FAIL. and make sure it exists in the BDD
		//Print out the size of the risks List and printSet of the BDD to see the vars are the same size.
		
		actionsCount = 0;
	}
	
	public void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	public Problem getProblem() { return problem; }
	public List<ActionInstance> getActions() { return actions; }
	public int getNumActionsTaken() { return actionsCount; }
	
	/**
	 * This method's simple assignment statement means that any changes to the Agent's actionList
	 *  are also made to the Agent's problem's actionList.
	 */
	public void setActions() { actions = problem.getActions(); }
	
	/**
	 * Speedy action lookup when revising actions using KB.
	 * Contains references to actions found in list
	 *  - thus both List and HT are updated simultaneously.
	 */
	void loadActionsHT()
	{		
		actionsHT = new Hashtable<String, IncompleteActionInstance>();
		
		for(ActionInstance act : actions)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			actionsHT.put(act.getName(), a);
		}
	}
	
	/**
	 * This rather lengthy method tracks what can be learned after an action has been executed.
	 * For each type of possible feature, it principally finds:
	 *  whether it can be removed from its possibles list
	 *  whether it should be added to its related known list.
	 * It builds up two BDD sentences for an action - the failure sentence and success sentence.
	 * Depending on whether the action succeeded/failed/unknown, it adds these completed sentences to the BDD KB.
	 * Notes: *IF |possPre| == 1, query of KB will find the singleton to be -possPre, pre
			 *buildup of KB over time will probably be more powerful when querying
	 * @param act - the action just taken
	 * @param prevState - the state before the action was applied
	 * @param currState - the state after the action was applied
	 */
	public void learnAboutActionTaken(ActionInstance act, Set<Proposition> prevState, Set<Proposition> currState)
	{
		System.out.println("AGENT LEARNS: \n      action: " + act.getName());
		
		IncompleteActionInstance a = (IncompleteActionInstance) act;
		
		//This test should occur in execution sim before applying action
//		if(!isActionApplicable(a, prevState))
//		{
//			System.out.println("This will never happen.");
//			System.out.println("AGENT LEARNS END\n");
//			return; 
//		}
		
		actionsCount++;
		
		if(Actions_Utility.isIncompleteActionComplete(a)) //No incomplete features exist
		{
			System.out.println("Action is complete - there is nothing to learn.");
			System.out.println("AGENT LEARNS END\n");
			return; 
		}
			
		int successSentence = bdd.ref(bdd.getOne());  //Temp sentence for actionSucceeded case
		int failureSentence = bdd.ref(bdd.getZero()); //Temp sentence for actionFailed case
		
		for (Proposition p : a.getPossiblePreconditions())
		{
			if(!prevState.contains(p)) 
			{	
				System.out.println("       +-pre: " + p + " (depends on action failure/success)");	
				successSentence = addPropToSentence(Fault.POSSPRE, a.getName(), p.getName(), successSentence, false, true); //AND: -possPre, -pre	
				failureSentence = addPropToSentence(Fault.POSSPRE, a.getName(), p.getName(), failureSentence, true, false); //OR: might be pre 
			}
		}
		
		for(Proposition p : a.getPossibleAddEffects())
		{			
			if(!prevState.contains(p) && currState.contains(p)) //-possAdd, add
			{
				System.out.println("\t+add: " + p);
				successSentence = addPropToSentence(Fault.POSSADD, a.getName(), p.getName(), successSentence, true, true);
			}
			
			if(!prevState.contains(p) && !currState.contains(p)) //-possAdd, -add
			{
				System.out.println("\t-add: " + p);
				successSentence = addPropToSentence(Fault.POSSADD, a.getName(), p.getName(), successSentence, false, true);
			}
		}
		
		for(Proposition p : a.getPossibleDeleteEffects())
		{
			if(prevState.contains(p) && !currState.contains(p)) //-possDel, del
			{
				System.out.println("\t+del: " + p);
				successSentence = addPropToSentence(Fault.POSSDEL, a.getName(), p.getName(), successSentence, true, true);
			}
			
			if(prevState.contains(p) && currState.contains(p)) //-possDel, -del
			{
				System.out.println("\t-del: " + p);
				successSentence = addPropToSentence(Fault.POSSDEL, a.getName(), p.getName(), successSentence, false, true);
			}
		}

		insertSandorFSentenceIntoKB(successSentence, failureSentence, a, prevState, currState);
		
		System.out.println("AGENT LEARNS END\n");
		
		updateActions();
		//Because the LookAhead Agent requires the KB to be current up to the current action,
		//The transformation of the problem's action list by using the KB now occurs constantly.
	}
	
	/**
	 * This private helper method serves to build up the SF sentences for the method learnAboutActionTaken().
	 * SF means Success/Failure, the two types of sentences being expanded here. 
	 * Takes a ref to a bdd sentence being built up before being inserted into the primary BBD KB tree
	 * Returns the new ref which should be reassigned to the appropriate BDD sentence ref back in the calling method.
	 * 
	 * @param faultType 	- Fault.PRECOPEN, FAULT.UNLISTEDEFFECT, Fault.POSSCLOB
	 * @param actionName 	- name of action that has a risk
	 * @param propName 		- name of prop that is a risk
	 * @param bddRefSF 		- a reference to a bdd sentence - two kinds are sent in: 
	 * 							the actionFailure sentence and actionSuccess sentence
	 * @param isTrue 		- is the prop to be negated?
	 * @param isAND 		- is the prop to be and'd or or'd to the sentence
	 * @return - int 		- the reference to the newly expanded sentence
	 */
	private int addPropToSentence(String faultType, String actionName, String propName, int bddRefSF, boolean isTrue, boolean isAND) 
	{	
		Fault riskLearned = Fault.getRiskFromIndex(faultType, actionName, propName);	
		Integer ref = riskToBDD.get(riskLearned);
		Integer temp;
		
		if(isAND)
		{
			if(isTrue) 	temp = bdd.ref(bdd.and(bddRefSF, ref));
			else		temp = bdd.ref(bdd.and(bddRefSF, bdd.not(ref)));
		}
		else
			temp = bdd.ref(bdd.or(bddRefSF, ref));
		
		bdd.deref(bddRefSF);
		return temp;	
	}
	
	/**
	 * This private helper method inserts either the successSentence or failureSentence built by the method
	 * 	learnAboutActionTaken(...) into the KB.
	 * This method will be replaced by addPropToSentence_withFailVarAndOP
	 * @param successSentence
	 * @param failureSentence
	 * @param act
	 * @param prevState
	 * @param currState
	 */
	private void insertSandorFSentenceIntoKB( int successSentence, int failureSentence, 
											  IncompleteActionInstance incompleteAction, 
			                                  Set<Proposition> prevState, Set<Proposition> currState)
	{
		int tempRefToNewKB;
		if(!prevState.equals(currState)) //Action succeeded
		{
			System.out.println("      result: success");
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, successSentence));
			problem.setInitialState(currState);
		}
		else if(isActionFailure(incompleteAction, prevState, currState)) //Action failed
		{
			System.out.println("      result: failure");
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, failureSentence));
		}
		else //if (prevState.equals(currState) && !isActionFail(a, prevState, currState))
		//action failure not known, combine two Trees of cases above	
		{
			System.out.println("      result: unknown");
			int tempRefSF = bdd.ref(bdd.or(successSentence, failureSentence));
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, tempRefSF));
			bdd.deref(tempRefSF);
		}
		
		bdd.deref(successSentence);
		bdd.deref(failureSentence);
		bdd.deref(bddRef_KB);
		bddRef_KB = tempRefToNewKB;
   }
	
	/**
	 * This private helper method inserts either the successSentence or failureSentence built by the method
	 * 	learnAboutActionTaken(...) into the KB. 
	 * The OPTIMISTIC vs. PESSIMISTIC Agent is involved here:
	 *  OPTIMISTIC  - does not consider "don't know" as a failure, but considers both possibilities (see below)
	 *  PESSIMISTIC - considers no change of state to be a failure. This Agent might make a better case
	 *   if the Agent were simply to re-plan after taking every incomplete action.
	 *   
	 * The new directive for the "don't know" case involves adding a "FAIL" or "-FAIL" to each of the 
	 * sentences before adding them to the KB. This allows the Agent to discover if a plan being executed
	 * now entails "FAIL" - something down the road has proved that an action in the past failed.
	 * This FAIL must be removed from the KB before the next planner call.
	 * @param successSentence
	 * @param failureSentence
	 * @param act
	 * @param prevState
	 * @param currState
	 */
	private void insertSandorFSentenceIntoKB_withFailVarAndOP( int successSentence, int failureSentence, 
											  				IncompleteActionInstance incompleteAction, 
											  				Set<Proposition> prevState, Set<Proposition> currState)
	{
		int tempRefToNewKB;
		if(!prevState.equals(currState)) //Action succeeded
		{
			System.out.println("      result: success");
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, successSentence));
		}
		//Here the PESSIMISTIC agent assumes the action has failed
//		else if(prevState.equals(currState))
//		{
//			System.out.println("      result: failure");
//			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, failureSentence));
//		}
		//Here the OPTIMISTIC Agent learns more accurately
		else if(isActionFailure(incompleteAction, prevState, currState)) //Action failed
		{
			System.out.println("      result: failure");
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, failureSentence));
		}
		//Here the OPTIMISTIC Agent learns more accurately
		else //if (prevState.equals(currState) && !isActionFail(a, prevState, currState))
		//action failure not known, combine two Trees of cases above
		{
			System.out.println("      result: unknown");
			
			int tempRefFailureSentenceAndFailVar = bdd.ref(bdd.and(failureSentence, failVar));
			int tempRefSuccessSentenceAndNotFailVar = bdd.ref(bdd.and(failureSentence, bdd.not(failVar)));
			
			int tempRefSF = bdd.ref(bdd.or(tempRefFailureSentenceAndFailVar, tempRefSuccessSentenceAndNotFailVar));
			bdd.deref(tempRefFailureSentenceAndFailVar);
			bdd.deref(tempRefSuccessSentenceAndNotFailVar);
			
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, tempRefSF));
			bdd.deref(tempRefSF);
		}
		
		bdd.deref(successSentence);
		bdd.deref(failureSentence);
		bdd.deref(bddRef_KB);
		bddRef_KB = tempRefToNewKB;
	}
	
	/**
	 * This method removes the FAIL variable from clauses in the KB because they were only relevant to 
	 * the previous plan.
	 * v[v.length-1] should be the failVar, which was created in Agent constructor -  
	 * the constructor calls RiskCounter.initialize, which creates the bdd vars for each Risk -
	 * after these risk vars. It is the only var to be set to true. 
	 * The default value of a boolean in an array is false.
	 * bdd.exists returns a ref to a bdd with all failVar references removed.
	 */
	public void removeFailFromKBForNewPlan()
	{
		boolean[] v = new boolean[risks.size() + 1];
		v[v.length-1] = true;
		
		int cube = bdd.cube(v);
		
		int temp = bdd.exists(bddRef_KB, cube);//Should be the current KB's clauses minus all FAIL vars
		bdd.deref(bddRef_KB);
		bddRef_KB = temp;
	}
	
	/**
	 * This method tells if an action was definitively refused. 
	 * It checks whether the action has: 
	 * 	known add effects that were not added to the new state
	 *  known delete effects that were not removed from new state.
	 * If so, then the action was refused because of a possible precondition that was not sat.
	 * Otherwise, the agent can't tell if the action was accepted or not.
	 * Notes: known preconditions that were not sat in prev State are checked via method
	 *  areActionPreConditionsSat(IncompleteActionInstance currAction, Set<Proposition> prevState)
	 * 
	 * @param prevAction
	 * @param newState
	 * @return boolean 		- is the action a failure?
	 */
	public boolean isActionFailure(IncompleteActionInstance currAction, Set<Proposition> prevState, Set<Proposition> currState)
	{
		if (!currState.containsAll(currAction.getAddEffects())) return true;
	
		for (Proposition p : currAction.getDeleteEffects())
			if(currState.contains(p)) return true;
			
		return false;
	}
	
	public boolean areActionPreConditionsSat(IncompleteActionInstance currAction, Set<Proposition> prevState)
	{
		if(prevState.containsAll(currAction.getPreconditions())) return true;
		else return false;
	}
	
	public boolean areActionPossPreConditionsSat(IncompleteActionInstance currAction, Set<Proposition> prevState)
	{
		if(prevState.containsAll(currAction.getPossiblePreconditions())) return true;
		else return false;
	}
	
	/**
	 * This method provides the coverage for the RISKY vs. CONSERVATIVE Agents
	 * As well as the GREEDY vs LOOKAHEAD Agents
	 * @param currAction
	 * @param prevState
	 * @return
	 */
	public boolean isActionApplicable(IncompleteActionInstance currAction, Set<Proposition> prevState, List<ActionInstance> plan)
	{
		//RISKY - always keep
		if(!areActionPreConditionsSat(currAction, prevState))		return false;
		
		//CONSERVATIVE - comment out if Agent is RISKY
		//if(!areActionPossPreConditionsSat(currAction, prevState))	return false;
		
		//LOOKAHEAD - comment out if agent is GREEDY
		// Requires that problem be current - initial state is currState, currentActions). 
		// The plan must also be current plan.
		// When planFailExp is tested for entailment against the current KB, it may return failure. 
		// If so, action is not applicable.
		//int planFailExp = RiskCounter.getFailureExplanationSentence_BDDRef(problem, plan, currAction);
		//if(bdd.and(bddRef_KB, bdd.not(planFailExp)) == 0) return false;
		
		return true;
	}
	
	/**
	 * This method transforms the agent's actions based on what's been learned about their possible features.
	 * The KB knows about these possFeatures from method learnAboutActionTaken.
	 * The learning is performed by entailment queries on the KB regarding each existing risk.
	 * (The risks are simply the possible features for every action.)
	 * The method:
	 *  1. Negate the risk value for which we wish to learn
	 *  2. and it to the KB
	 *  3. If the result is 0, then update the action for that risk that has been learned...
	 */
	public void updateActions()
	{
		System.out.println("AGENT REMEMBERS: ");
		
		ArrayList<Fault> risksLearned = new ArrayList<Fault>();
		for(Fault r : risks)
		{
			int resultT = bdd.and(riskToBDD.get(r), bddRef_KB); 		  	//Query returns 0 if -prop - don't add to known list
			int resultF = bdd.and(bdd.not(riskToBDD.get(r)), bddRef_KB); 	//Query returns 0 if prop  - add to known list
						
			IncompleteActionInstance a = actionsHT.get(r.getActionName());
			
			Proposition propLearned   = null;
			Set<Proposition> possSet  = null;
			Set<Proposition> knownSet = null;
			
			if(r.getRiskName().equals(Fault.POSSPRE))
			{
				possSet 	= a.getPossiblePreconditions();
				knownSet 	= a.getPreconditions();
			}
			if(r.getRiskName().equals(Fault.POSSADD))
			{
				possSet 	= a.getPossibleAddEffects();
				knownSet 	= a.getAddEffects();
			}
			if(r.getRiskName().equals(Fault.POSSDEL))
			{
				possSet 	= a.getPossibleDeleteEffects();
				knownSet 	= a.getDeleteEffects();
			}
			
			if(resultT == 0 || resultF == 0) //The risk was learned about. Get the prop.
			{
				for(Proposition p : possSet)
					if(p.getName().equals(r.getPropositionName()))
					{
						propLearned = p;
						break;
					}
			}
		
			if(resultT == 0 || resultF == 0) //In either case, the possFeature is no more.
			{
				System.out.println("  resultT: " + resultT);
				System.out.println("  resultF: " + resultF);
				System.out.println("\t-: " + r); 
				
				possSet.remove(propLearned);
				risksLearned.add(r);
			}
		
			if(resultF == 0) //If the negation of the feature ^ KB == 0, then the possFeature is now a knownFeatuere.
			{	
				System.out.println("\t+: " + r); 
				knownSet.add(propLearned);
			}
		}
		
		//Should I do this?
		risks.removeAll(risksLearned); //The risks learned are removed from the risks list
		
		System.out.println("AGENT REMEMBERS END\n");
	}
	
	/**
	 * This method is used by an ASSUMPTIVE agent and is called in the execution sim.
	 * @param currAction
	 */
	public void learnUnsatPossPreconditionsAndUpdateAction(IncompleteActionInstance currAction)
	{
		//TO DO:
	}
	
	public void startStopwatch(){ startTime = System.currentTimeMillis(); }
	
	public void stopStopwatch(){ finishTime = System.currentTimeMillis(); }
	
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}
	
}//end class
