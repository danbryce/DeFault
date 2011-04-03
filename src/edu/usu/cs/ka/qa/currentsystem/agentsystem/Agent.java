package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import jdd.bdd.*;

/**
 * @author CHW
 * This agent uses a BDD to learn about actions taken.
 * It contains methods to:
 *  Take actions even if they might fail - risky(R)
 *  Take actions even if the plan has a guaranteed future failure - greedy(G)
 *  Take actions only if they will not immediately fail - conservative(C)
 *  Take actions only if they will not fail down the road - lookahead(L)
 * These methods are used by the derived classes Agent_CL and Agent_RG  
 *  
 * Have made changes to Fault and RiskCounter classes to enable this class. 
 */
public abstract class Agent 
{	
	public static Agent instance;
	
	public static enum LearningTypes {PL, QA};
	public static enum AgentTypes{RG, CL};
	
	//Domain and Problem stuff
	protected String domainFile;
	protected String problemFile;
	
	public Domain domain;
	public Problem problem;
    
	protected List<ActionInstance> actions;
	public Hashtable<String, IncompleteActionInstance> actionsHT;
	
    //BDD stuff - will be initialized via RiskCounter
	protected BDD bdd;
	protected int bddRef_KB;
	protected int failVar;
	
	protected List<Fault> risks;
	protected Map<Fault, Integer> riskToBDD;
	protected Map<Integer, Fault> bddToRisk;
	protected Map<Fault, Integer> riskToNumVarIndexForCube;
	protected Map<Integer, Fault> numVarIndexToRiskForCubeOrMinterm;
	protected int numBDDVars;
	
	//QA SIDE
	public QA qa;
	
	//Results stuff
	protected Long startTime;
	protected Long finishTime;
	
	protected int actionsCount;
	protected int failedActionsCount;
	
	protected int numQsAsked;
	protected int numRisksLearnedQA;
	protected int numRisksLearnedPL;
	
	static boolean debug = false;
	
	public Agent(String dFile, String pFile)
	{
		domainFile = dFile;
		problemFile = pFile;
		
		//Do this every time the domain file changes - best time is in the Simulation class constructor
		//Proposition.clearAll();	
		
		setDomainAndProblem();
		setActions();
		loadActionsHT();
		
		RiskCounter.resetIsInitialized();
		RiskCounter.initialize(domain, problem);
		
		bdd = RiskCounter.getBDD();
		bddRef_KB = bdd.ref(bdd.getOne());
		bdd.ref(bddRef_KB);
		
		risks = RiskCounter.getAllRisks();
		riskToBDD = RiskCounter.getRiskToBDD();
		bddToRisk = RiskCounter.getBddToRisk();
		riskToNumVarIndexForCube = RiskCounter.getRiskToNumVarIndexForCube();
		numVarIndexToRiskForCubeOrMinterm = RiskCounter.getNumVarIndexToRiskForCube();
		
		failVar = bdd.ref(bdd.createVar());
		
		numBDDVars = bdd.numberOfVariables();
		
		//Create a var for FAIL. and make sure it exists in the BDD
		//Print out the size of the risks List and printSet of the BDD to see the vars are the same size.
		
		actionsCount = 0;
		failedActionsCount = 0;
		numQsAsked = 0;
		numRisksLearnedQA = 0;
		numRisksLearnedPL = 0;
		
		qa = new QA(this);
		
		instance = this;
	}
	
	public void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	public Problem getProblem() 				{ return problem; }
	public List<ActionInstance> getActions() 	{ return actions; }
	public List<Fault> getRisks()				{ return risks; }
	public int getNumRisks()					{ return risks.size();}
	public int getNumBDDVars()					{ return numBDDVars;}
		
	/**
	 * This method's simple assignment statement means that any changes to the Agent's actionList
	 *  are also made to the Agent's problem's actionList.
	 */
	public void setActions() 					{ actions = problem.getActions(); }
	public int getNumActionsTaken()				{ return actionsCount; }
	public int getNumFailedActions()			{ return failedActionsCount; }
	public int getNumQsAsked()					{ return numQsAsked; }
	public int getNumRisksLearnedQA()			{ return numRisksLearnedQA; }
	public int getNumRisksLearnedPL()			{ return numRisksLearnedPL; }
	
	public void incrementFailedActionsCount() 	{ failedActionsCount++; }
	
	public BDD getBDD() {return bdd;}
	public int get_bddRef_KB() {return bddRef_KB;}
	public Map<Fault, Integer> getRiskToNumVarIndexForCube(){ return riskToNumVarIndexForCube; }
	
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
	 * Due to the planner removing add effects from actions for parcprinter and pathways.
	 * The Planner.getPlan method preserves the actionsList.
	 * The planner's problem is set to the Agent's.  
	 * When the planner is used to test whether a domain/problem is solvable in the sim,
	 *  the planner resets the problem's actions back to their original form.
	 * Then this method must be called to restore the agent's actions.
	 */
	public void restoreActionsToStateBeforePlannerCall()
	{
		actions = problem.getActions();
		loadActionsHT();
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
			return;
		
		int successSentence = bdd.ref(bdd.getOne());  //Temp sentence for actionSucceeded case
		bdd.ref(successSentence);
		int failureSentence = bdd.ref(bdd.getZero()); //Temp sentence for actionFailed case
		bdd.ref(failureSentence);
		
		for (Proposition p : a.getPossiblePreconditions())
		{
			if(!prevState.contains(p)) 
			{						
				successSentence = addPropToSentence(Fault.PRECOPEN, a.getName(), p.getName(), successSentence, false, true); //AND: -possPre, -pre	
				failureSentence = addPropToSentence(Fault.PRECOPEN, a.getName(), p.getName(), failureSentence, true, false); //OR: might be pre 
			}
		}
		
		for(Proposition p : a.getPossibleAddEffects())
		{			
			if(!prevState.contains(p) && currState.contains(p)) //-possAdd, add
				successSentence = addPropToSentence(Fault.UNLISTEDEFFECT, a.getName(), p.getName(), successSentence, true, true);
			
			if(!prevState.contains(p) && !currState.contains(p)) //-possAdd, -add
				successSentence = addPropToSentence(Fault.UNLISTEDEFFECT, a.getName(), p.getName(), successSentence, false, true);
		}
		
		for(Proposition p : a.getPossibleDeleteEffects())
		{
			if(prevState.contains(p) && !currState.contains(p)) //-possDel, del
				successSentence = addPropToSentence(Fault.POSSCLOB, a.getName(), p.getName(), successSentence, true, true);
			
			if(prevState.contains(p) && currState.contains(p)) //-possDel, -del
				successSentence = addPropToSentence(Fault.POSSCLOB, a.getName(), p.getName(), successSentence, false, true);
		}
//		System.out.println("");
//		bdd.printSet(failureSentence);
//		bdd.printSet(successSentence);
//		
		insertSandorFSentenceIntoKB_withFailVar(successSentence, failureSentence, a, prevState, currState);
		
		updateActions(LearningTypes.PL);
		//Because the LookAhead Agent requires the KB to be current up to the current action,
		//The transformation of the problem's action list by using the KB now occurs instantly.
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
			if(isTrue) 	
			{
				temp = bdd.ref(bdd.and(bddRefSF, ref));				
				bdd.ref(temp);
			}
			else
			{
				temp = bdd.ref(bdd.and(bddRefSF, bdd.not(ref)));
				bdd.ref(temp);
			}
		}
		else
		{
			temp = bdd.ref(bdd.or(bddRefSF, ref));
			bdd.ref(temp);
		}
		
		bdd.deref(bddRefSF);
		return temp;	
	}
		
	/**
	 * This private helper method inserts either the successSentence or failureSentence built by the method
	 * 	learnAboutActionTaken(...) into the KB. 
	 *   
	 * Current "unknown" case sentence: (F ^ fail) v S - and it to PHI (bddRef_KB)
	 * This FAIL must be removed from the KB before the next planner call.
	 * 
	 * This is worth testing some more before the final versions for QA
	 * 
	 * @param successSentence
	 * @param failureSentence
	 * @param act
	 * @param prevState
	 * @param currState
	 */
	private void insertSandorFSentenceIntoKB_withFailVar( int successSentence, int failureSentence, 
											  				IncompleteActionInstance incompleteAction, 
											  				Set<Proposition> prevState, Set<Proposition> currState)
	{				
		int tempRefToNewKB;
		if(!prevState.equals(currState)) //Action succeeded
		{
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, successSentence));
			bdd.ref(tempRefToNewKB);
		}
		else if(isActionFailure(incompleteAction, prevState, currState)) //Action failed
		{
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, failureSentence));
			bdd.ref(tempRefToNewKB);
		}
		//the rest concern the case where (prevState.equals(currState) && !isActionFail(a, prevState, currState))
		else if(bdd.toString(failureSentence).contains("FALSE") && bdd.toString(successSentence).contains("TRUE"))
		{
			tempRefToNewKB = bdd.ref(bddRef_KB); 							//nothing could possibly be learned
			bdd.ref(tempRefToNewKB);
		}
		else if(bdd.toString(failureSentence).contains("FALSE") && !bdd.toString(successSentence).contains("TRUE"))
		{
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, successSentence));	//no failure possibility, but success is non-empty
			bdd.ref(tempRefToNewKB);
		}
		else if(!bdd.toString(failureSentence).contains("FALSE") && bdd.toString(successSentence).contains("TRUE"))
		{
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, failureSentence));	//no success possibility, but failure is non-empty
			bdd.ref(tempRefToNewKB);	
		}//both success and failure are possible
		else if(!bdd.toString(failureSentence).contains("FALSE") && !bdd.toString(successSentence).contains("TRUE"))
		{
			int tempRefFailureSentenceAndFailVar = bdd.ref(bdd.and(failureSentence, failVar));
			bdd.ref(tempRefFailureSentenceAndFailVar);
			int tempRefSF = bdd.ref(bdd.or(tempRefFailureSentenceAndFailVar, successSentence));
			bdd.ref(tempRefSF);
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, tempRefSF));
			bdd.ref(tempRefToNewKB);
			
			bdd.deref(tempRefFailureSentenceAndFailVar);
			bdd.deref(tempRefSF);
		}
		else
		{	//catch any unaccounted for case
			tempRefToNewKB = bdd.ref(bddRef_KB);
			bdd.ref(tempRefToNewKB);
		}
		
		bdd.deref(successSentence);
		bdd.deref(failureSentence);
		bdd.deref(bddRef_KB);
		bddRef_KB = tempRefToNewKB;
		bdd.ref(bddRef_KB);
	}
	
	/**
	 * This method removes the FAIL variable from clauses in the KB because they were only relevant to 
	 * the previous plan.
	 * v[v.length-1] should be the failVar, which was created in Agent constructor -  
	 * the constructor calls RiskCounter.initialize, which creates the bdd vars for each Risk -
	 * after these risk vars. It is the only var to be set to true. 
	 * The default value of a boolean in an array is false.
	 * bdd.exists returns a ref to a bdd with all failVar references removed.
	 *
	 * A version of this existed that return a boolean based on whether exists threw an exception.
	 * That exception source was solved.
	 */
	public void removeFailFromKBForNewPlan()
	{
//		System.out.println("\n IN removeFailFromKBForNewPlan()");
//		String[] clauses = bdd.toString(bddRef_KB).split("\n");
//		for(String clause : clauses)
//		{
//			System.out.println(clause);
//		}
		
		boolean[] v = new boolean[bdd.numberOfVariables()];
		v[v.length-1] = true;
		
		int cube = bdd.ref(bdd.cube(v));
		int temp = bdd.ref(bdd.exists(bddRef_KB, cube));//Should be the current KB's clauses minus all FAIL vars
		bdd.ref(temp);
		
		bdd.deref(bddRef_KB);
		bddRef_KB = temp;
		bdd.ref(bddRef_KB);
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
		if (!currState.containsAll(currAction.getAddEffects()))
		{
			LinkedList<Proposition> missingProps = new LinkedList<Proposition>();
			for(Proposition p : currAction.getAddEffects())
				if(!currState.contains(p))
					missingProps.add(p);
					
			return true;
		}
	
		for (Proposition p : currAction.getDeleteEffects())
			if(currState.contains(p))
				return true;
			
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
	
	//unsat possPre combination has already produced failure
	public boolean existsFailureInPastWithThisUnsatPossPreCombination(IncompleteActionInstance currAction, Set<Proposition> currState)
	{
		int posspres = bdd.ref(bdd.getZero());
		bdd.ref(posspres);
		for(Proposition p : currAction.getPossiblePreconditions())
		{
			if(!currState.contains(p))
			{
				Fault risk = Fault.getRiskFromIndex(Fault.PRECOPEN, currAction.getName(), p.getName());
				int tmp = bdd.ref(bdd.or(posspres, riskToBDD.get(risk)));
				bdd.ref(tmp);
				bdd.deref(posspres);
				posspres = tmp;
				bdd.ref(posspres);
			}
		}

		if(bdd.and(bddRef_KB, bdd.not(posspres)) == bdd.getZero())
		{
			bdd.deref(posspres);
			return true;
		}
		
		bdd.deref(posspres);
		return false;
	}
	
	//Check for failure in the past using failVar.
	public boolean existsActionFailureInPastEntailFailVar()
	{
		if(bdd.and(bddRef_KB, bdd.not(failVar)) == bdd.getZero()) return true;	
		return false;
	}
	
	/**
	 * This method provides the coverage for:
	 *	RISKY vs. CONSERVATIVE Agents:
	 * 		RISKY - check the action's known preconditions
	 * 			  - check whether the unsat possPre combination has already produced failure
	 * 			  - check for failure in the past using failVar.
	 *  	CONSERVATIVE - check the possPre's as well.
	 *	GREEDY vs LOOKAHEAD Agents:
	 *		GREEDY - do not check entailment of the plan's failure explanation ^ the KB..
	 *		LOOKAHEAD - check entailment of the plan's failure explanation ^ the KB..
	 *
	 * @param currAction 	- IncompleteActionInstance
	 * @param prevState 	- Set<Proposition>
	 * @param plan 			- List<ActionInstance>
	 * @return boolean 		- can action can be applied?
	 */
	public abstract boolean isActionApplicable(IncompleteActionInstance currAction, Set<Proposition> prevState, List<ActionInstance> plan);
	
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
	public void updateActions(LearningTypes type)
	{
		if(debug) System.out.print("IN UA...");
		
		//loadActionsHT();
		List<Fault> risksLearned = new ArrayList<Fault>(); //Prevents concurrent modification exception
		for(Fault r : risks)
		{					
			//An error from this line is irregularly thrown where an array index is out of bounds
			int resultT = -1, resultF = -1;
			try
			{
				resultT = bdd.and(bdd.ref(riskToBDD.get(r)), bdd.ref(bddRef_KB)); 		  	//Query returns 0 if -prop - don't add to known list
				resultF = bdd.and(bdd.ref(bdd.not(bdd.ref(riskToBDD.get(r)))), bdd.ref(bddRef_KB)); 	//Query returns 0 if prop  - add to known list
//				resultT = bdd.and(riskToBDD.get(r), bddRef_KB); 		  	//Query returns 0 if -prop - don't add to known list
//				resultF = bdd.and(bdd.not(riskToBDD.get(r)), bddRef_KB); 	//Query returns 0 if prop  - add to known list
			}
			catch(Exception e)
			{
//				e.printStackTrace();
//				int riskIndexToUse = riskToBDD.get(r);
//				System.out.println("RISK#:" + riskIndexToUse);
//				System.out.println("bddRef_KB#:" + bddRef_KB);
//				System.out.println("bddRef_KB:" + bdd.toString(bddRef_KB));
//				System.out.println("resultT:" + resultT);
//				System.out.println("resultT:" + bdd.toString(resultT));
//				System.out.println("resultF:" + resultF);
//				System.out.println("resultF:" + bdd.toString(resultF));
//				System.out.println("bdd#Vs:" + bdd.numberOfVariables());
				
				System.out.println("in agent.updateActions. Handled. " + e.toString());
				try{
				resultT = bdd.and(riskToBDD.get(r), bddRef_KB);
				resultF = bdd.and(bdd.not(riskToBDD.get(r)), bddRef_KB);
				}
				catch(Exception e2)
				{
					System.out.println("in agent.updateActions. 2x occurred. Fatal." + e.toString());
					e2.printStackTrace();
				}
				//If this version fails, there should be an uncaught exception thrown...
				
//				System.out.println("resultT:" + resultT);
//				System.out.println("resultF:" + resultF);
			}
			
			IncompleteActionInstance a = actionsHT.get(r.getActionName());
			
			Proposition propLearned   = null;
			Set<Proposition> possSet  = null;
			Set<Proposition> knownSet = null;
			
			if(r.getRiskName().equals(Fault.PRECOPEN))
			{
				possSet 	= a.getPossiblePreconditions();
				knownSet 	= a.getPreconditions();
			}
			if(r.getRiskName().equals(Fault.UNLISTEDEFFECT))
			{
				possSet 	= a.getPossibleAddEffects();
				knownSet 	= a.getAddEffects();
			}
			if(r.getRiskName().equals(Fault.POSSCLOB))
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
			
			if(propLearned != null)
			{
				if(resultF == 0) //If the negation of the feature ^ KB == 0, then the possFeature is now a knownFeatuere.
					knownSet.add(propLearned);
			
				if(resultT == 0 || resultF == 0) //In either case, the possFeature is no more.
				{					
					possSet.remove(propLearned);
					risksLearned.add(r);
					
					if(type.equals(LearningTypes.PL))	numRisksLearnedPL++;
					if(type.equals(LearningTypes.QA)) 	numRisksLearnedQA++;
				}
			}
			
			//bdd.deref(resultT);
			//bdd.deref(resultF);
		}
		risks.removeAll(risksLearned); //The risks learned are removed from the risks list
		
		if(debug) System.out.println("LEAVING UA");
	}
	
	/**
	 * A much abbreviated form of the learnAboutActionTaken() method. 
	 * Used by QA, it is in Agent class because it uses the Agent's bdd extensively.
	 * Here we do not build up a sentence of props/risks learned, because each Q concerns one and only one Risk
	 * (though answering that question might indirectly help the agent entail other risks existing in the BDD as well).
	 * @param f - the Fault learned
	 * @param isFeature - if true, then through QA, the Fault has become a known Feature.
	 */
	public void addDomainExpertQueryResultToBDDAndUpdateActions_QA(Fault f, boolean isFeature)
	{
		if(f == null)
			return;
		
		int tempRefToNewKB;
		
		if(isFeature) 	
		{
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, riskToBDD.get(f)));
			bdd.ref(tempRefToNewKB);
		}
		
		else 			
		{
			tempRefToNewKB = bdd.ref(bdd.and(bddRef_KB, bdd.not(riskToBDD.get(f))));
			bdd.ref(tempRefToNewKB);
		}
		
		bdd.deref(bddRef_KB);
		bddRef_KB = tempRefToNewKB;
		bdd.ref(bddRef_KB);
	}
	
	public void startStopwatch(){ startTime = System.currentTimeMillis(); }
	public void stopStopwatch(){ finishTime = System.currentTimeMillis(); }
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}
	
	public Double getCurrentExecutionTime()
	{
		if(startTime == null) return -1.0;
		else return (System.currentTimeMillis() - startTime)/1000.0;
	}
	
}//end class
