package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import jdd.bdd.*;

/**
 * @author CHW
 * This agent uses a BDD to learn about actions taken.
 * It contains methods to:
 *  Take actions even if they might fail - risky(R)
 *  Take actions even if the plan has a guaranteed future failure - greedy(G)
 */
public class Agent 
{
	//Domain and Problem stuff
	String domainFile;
	String problemFile;
	
    Domain domain;
    Problem problem;
    
    List<ActionInstance> actions;
    Hashtable<String, IncompleteActionInstance> actionsHT;
	
    //BDD stuff
	BDD bdd;
	int bddRef;
	
	List<Fault> risks;
	private Map<Fault, Integer> riskToBDD;
	private Map<Integer, Fault> bddToRisk;
	
	//Results stuff
	Long startTime;
	Long finishTime;
	
	public Agent(String dFile, String pFile)
	{
		domainFile = dFile;
		problemFile = pFile;
		
		setDomainAndProblem();
		setActions();
		loadActionsHT();
				
		bdd = new BDD(10000,10000);
		bddRef = bdd.ref(bdd.getOne());
		
		setAllRisks();
		setBDDVarsAndRiskMaps();
	}
	
	public void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	public Problem getProblem() { return problem; }
	public List<ActionInstance> getActions() { return actions; }
	
	/**
	 * This method's simple assignment statement means that any changes to the Agent's actionList
	 *  are also made to the Agent's problem's actionList.
	 */
	public void setActions() { actions = problem.getActions(); }
		
	/**
	 * Taken from the planner.ffrisky.util.RiskCounter class getAllRisks method.
	 * Be careful here: the Fault class has static Hashmaps to which we are adding risks.
	 *  Does it ever die? Revision - made Fault class constructor public. This constructor
	 *  does not add Faults to these static Maps.
	 */
	private void setAllRisks() 
	{
		risks = new ArrayList<Fault>();
		
		for (ActionInstance a : actions) 
		{
			IncompleteActionInstance action = (IncompleteActionInstance) a;
			
			for (Proposition possprec : action.getPossiblePreconditions()) //possPre
				risks.add(new Fault(Fault.PRECOPEN, action.getName(), possprec.getName()));

			for (Proposition possadd : action.getPossibleAddEffects()) //possAdd
				risks.add(new Fault(Fault.UNLISTEDEFFECT, action.getName(), possadd.getName()));

			for (Proposition possdel : action.getPossibleDeleteEffects()) //possDel
				risks.add(new Fault(Fault.POSSCLOB, action.getName(), possdel.getName()));
		}
	}
		
	/**
	 * Taken from the planner.ffrisky.util.RiskCounter class initialize method.
	 * Be careful here: the Fault class has static hashmaps to which we are adding!!!
	 * This could be a reason for planner test deterioration
	 */
	void setBDDVarsAndRiskMaps()
	{
		riskToBDD = new HashMap<Fault, Integer>();
		bddToRisk = new HashMap<Integer, Fault>();
		
		for (Fault risk : risks)
		{
			int temp = bdd.createVar();
			riskToBDD.put(risk, temp);
			bddToRisk.put(temp, risk);
		}		
	}
	
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
		System.out.println("\nAGENT LEARNS: \n      action: " + act.getName());
		
		IncompleteActionInstance a = (IncompleteActionInstance) act;	
		
		if(Actions_Utility.isIncompleteActionComplete(a)) //No incomplete features exist
		{
			System.out.println("AGENT LEARNS END\n");
			return; 
		}
			
		int successSentence = bdd.ref(bdd.getOne()); //Temp sentence for actionSucceeded case
		int failureSentence = bdd.ref(bdd.getZero()); //Temp sentence for actionFailed case
		
		for (Proposition p : a.getPossiblePreconditions())
		{
			if(!prevState.contains(p)) 
			{	
				System.out.println("       +-pre: " + p);
				
				successSentence = addPropToSentence(Fault.PRECOPEN, a.getName(), p.getName(), successSentence, false, true); //AND: -possPre, -pre	
				failureSentence = addPropToSentence(Fault.PRECOPEN, a.getName(), p.getName(), failureSentence, true, false); //OR: might be pre 
			}
		}
		
		for(Proposition p : a.getPossibleAddEffects())
		{			
			if(!prevState.contains(p) && currState.contains(p)) //-possAdd, add
			{
				System.out.println("\t add: " + p);
				
				successSentence = addPropToSentence(Fault.UNLISTEDEFFECT, a.getName(), p.getName(), successSentence, true, true);
			}
			
			if(!prevState.contains(p) && !currState.contains(p)) //-possAdd, -add
			{
				System.out.println("\t-add: " + p);
				
				successSentence = addPropToSentence(Fault.UNLISTEDEFFECT, a.getName(), p.getName(), successSentence, false, true);
			}
		}
		
		for(Proposition p : a.getPossibleDeleteEffects())
		{
			if(prevState.contains(p) && !currState.contains(p)) //-possDel, del
			{
				System.out.println("\t del: " + p);
				
				successSentence = addPropToSentence(Fault.POSSCLOB, a.getName(), p.getName(), successSentence, true, true);
			}
			
			if(prevState.contains(p) && currState.contains(p)) //-possDel, -del
			{
				System.out.println("\t-del: " + p);
				
				successSentence = addPropToSentence(Fault.POSSCLOB, a.getName(), p.getName(), successSentence, false, true);
			}
		}

		int tempRefToNewKB;
		if(!prevState.equals(currState)) //Action succeeded
		{
			System.out.println("      result: success");
			
			tempRefToNewKB = bdd.ref(bdd.and(bddRef, successSentence));
		}
		else if(isActionFailure(a, prevState, currState)) //Action failed
		{
			System.out.println("      result: failure");
			
			tempRefToNewKB = bdd.ref(bdd.and(bddRef, failureSentence));
		}
		else //if (prevState.equals(currState) && !isActionFail(a, prevState, currState)) //action failure not known, combine two Trees of cases above
		{
			System.out.println("      result: unknown");
			
			int tempRefSF = bdd.ref(bdd.or(successSentence, failureSentence));
			tempRefToNewKB = bdd.ref(bdd.and(bddRef, tempRefSF));
			bdd.deref(tempRefSF);
		}
		
		bdd.deref(successSentence);
		bdd.deref(failureSentence);
		bdd.deref(bddRef);
		bddRef = tempRefToNewKB;
		
		System.out.println("AGENT LEARNS END\n");
	}
	
	/**
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
	int addPropToSentence(String faultType, String actionName, String propName, int bddRefSF, boolean isTrue, boolean isAND) 
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
	 * This method tells if an action was definitively refused. 
	 * It checks whether the action has: 
	 * 	known add effects that were not added to the new state
	 *  known delete effects that were not removed from new state.
	 *  know preconditions that were not sat in prev State.
	 * If so, then the action was refused because of a possible precondition that was not sat.
	 * Otherwise, the agent can't tell if the action was accepted or not.
	 * 
	 * @param prevAction
	 * @param newState
	 * @return boolean 		- is the action a failure?
	 */
	public boolean isActionFailure(IncompleteActionInstance currAction, Set<Proposition> prevState, Set<Proposition> currState)
	{
		if(!prevState.containsAll(currAction.getPreconditions())) 	return true;

		if (!currState.containsAll(currAction.getAddEffects())) 	return true;
	
		for (Proposition p : currAction.getDeleteEffects())
			if(currState.contains(p)) 	return true;
			
		return false;
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
			int resultT = bdd.and(riskToBDD.get(r), bddRef); 		  	//Query returns 0 if -prop - don't add to known list
			int resultF = bdd.and(bdd.not(riskToBDD.get(r)), bddRef); 	//Query returns 0 if prop  - add to known list
						
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
		
		risks.removeAll(risksLearned); //The risks learned are removed from the risks list
		
		System.out.println("AGENT REMEMBERS END\n");
	}
	
	public void startStopwatch(){ startTime = System.currentTimeMillis(); }
	
	public void stopStopwatch(){ finishTime = System.currentTimeMillis(); }
	
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else 										return (finishTime - startTime)/1000.0;
	}
	
}//end class
