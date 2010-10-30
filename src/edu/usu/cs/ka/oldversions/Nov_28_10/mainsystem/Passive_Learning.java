package edu.usu.cs.ka.oldversions.Nov_28_10.mainsystem;

import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.ka.agentsystem.utilities.*;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class Passive_Learning 
{
	Hashtable<Integer, IncompleteActionInstance> actionsHT; //these are incomplete actions with possible pres/effects
	
	//Counters for results
	Integer numTimesPassiveLearnerCalled;
	
	Integer numSuccessfulActions;
	Integer numNoStateChangeActionsWithoutFailure;
	Integer numFailedActions;
	
	Integer numFailedActionsByPassiveLearner;
	
	Integer numPossPresLearnedToKnownByPassiveLearning;
	Integer numPossAddEffectsLearnedToKnownByPassiveLearning;
	Integer numPossDeleteEffectsLearnedToKnownByPassiveLearning;
	
	Integer numPossPresLearnedToNotExistByPassiveLearning;
	Integer numPossAddEffectsLearnedToNotExistByPassiveLearning;
	Integer numPossDeleteEffectsLearnedToNotExistByPassiveLearning;
	
	//Gets the HT of agent's incomplete actions - Agents Version
	Passive_Learning(Hashtable<Integer, IncompleteActionInstance> actionsAV)
	{	
		actionsHT = actionsAV;
		
		numTimesPassiveLearnerCalled = 0;
		
		numSuccessfulActions = 0;
		numNoStateChangeActionsWithoutFailure = 0;
		numFailedActions = 0;
		
		numFailedActionsByPassiveLearner = 0;
		
		numPossPresLearnedToKnownByPassiveLearning = 0;
		numPossAddEffectsLearnedToKnownByPassiveLearning = 0;
		numPossDeleteEffectsLearnedToKnownByPassiveLearning = 0;

		numPossPresLearnedToNotExistByPassiveLearning = 0;
		numPossAddEffectsLearnedToNotExistByPassiveLearning = 0;
		numPossDeleteEffectsLearnedToNotExistByPassiveLearning = 0;
	}
	
	public int getTotalNumberOfActions(){ return numSuccessfulActions + numFailedActions; }
	
	/*
	 * This is the method the agent uses when randomly choosing a valid action.
	 * All that matters is that the known pre's of the action are sat in currState.
	 * There is always the case where there is no action available - the "deadend".
	 */
	public IncompleteActionInstance chooseAction_Random(Set<Proposition> currentState)
	{	
		LinkedList<IncompleteActionInstance> bestActionsToTry = new LinkedList<IncompleteActionInstance>();
		for(IncompleteActionInstance a : actionsHT.values())
		{			
			if(currentState.containsAll(a.getPreconditions()))		
				bestActionsToTry.add(a);
		}
		
		Integer choice = null;
		if(bestActionsToTry.size() != 0) 
			choice = Agent.random.nextInt(bestActionsToTry.size());

		if(choice != null) 	return bestActionsToTry.get(choice);
		else				return null;
	}
	
	/* 
	 * This is the method that the agent uses when passively learning about the action just taken.
	 * It might be better to divide it up into more methods to make clearer the cases it catches.
	 * A max of 3 new sets are populated for use in the foreach loops where 1 or more
	 * props from a possibles list of the IAI instance might be removed.
	 * 
	 * 2 or more unsat possible preconditions without a state change is not handled.
	 */
	public boolean learnAboutActionTaken(Set<Proposition> newState, Set<Proposition> prevState, IncompleteActionInstance actionTaken)
	{
		numSuccessfulActions++;	//Decremented in method wasActionRefused if action is found to have conclusively failed.
		numTimesPassiveLearnerCalled++; //How many times the passive learner is called
		
		boolean isActionAccepted = true;
		
		
		if(Actions_Utility.isIncompleteActionComplete(actionTaken))//If action is complete, then there is no learning to be done
		{
			if(newState.equals(prevState)) numNoStateChangeActionsWithoutFailure++;
			return isActionAccepted;
		}
		
		//ELSE IF ACTION IS INCOMPLETE AND STATE DID NOT CHANGE:
		//	The action might have been refused by simulator, which knows whether the poss pres/effects are real.
		//  The (poss) pres/effects of the action might already have existed/not existed in the previous state.
		boolean isNoStateChangeButActionAccepted = false;
		if(newState.equals(prevState))
		{
			if(actionTaken.getPossiblePreconditions().size() == 0) //CASE OF NO POSSIBLE PRE'S - action must have been taken
			{
				isNoStateChangeButActionAccepted = true;
	
				if(actionTaken.getPossibleAddEffects().size() != 0) //POSSIBLE ADD EFFECTS LEARN
				{
					Set<Proposition> newPossAddEffectSet = new HashSet<Proposition>(actionTaken.getPossibleAddEffects()); //Prevents concurrentModEX
					for(Proposition p : newPossAddEffectSet)
					{
						if(!newState.contains(p) && !prevState.contains(p))
						{
							actionTaken.getPossibleAddEffects().remove(p);
							numPossAddEffectsLearnedToNotExistByPassiveLearning++;
						}
					}
				}
				
				if(actionTaken.getPossibleDeleteEffects().size() != 0) //POSSIBLE DELETE EFFECTS LEARN
				{					
					Set<Proposition> newPossDeleteEffectSet = new HashSet<Proposition>(actionTaken.getPossibleDeleteEffects()); //Prevents CMEX
					for(Proposition p : newPossDeleteEffectSet)
					{
						if(prevState.contains(p) && newState.contains(p))
						{
							actionTaken.getPossibleDeleteEffects().remove(p);
							numPossDeleteEffectsLearnedToNotExistByPassiveLearning++;
						}
					}
				}	
			}
			
			if(wasActionRefused(actionTaken, newState))
			{
				isActionAccepted = false; //Action was refused	
		
				List<Proposition> unsatPossPres = new LinkedList<Proposition>();
				for(Proposition p : actionTaken.getPossiblePreconditions())
				{
					if(!newState.contains(p))
						unsatPossPres.add(p);
				}
				
				numFailedActionsByPassiveLearner++;

				if(unsatPossPres.size() == 1) //Can learn from...
				{
					Proposition p = unsatPossPres.get(0);	
					actionTaken.getPreconditions().add(p);
					actionTaken.getPossiblePreconditions().remove(p);
					numPossPresLearnedToKnownByPassiveLearning++;	
				}

				else if(unsatPossPres.size() > 1) //Can't learn from...
					{System.out.println(" ~sat possprecs > 1. Not handled - exponential tracing required.");}
				else if(actionTaken.getPossiblePreconditions().size() == 0)
					{System.out.println("Should never happen.");}
			}
			else //Agent cannot prove his action was rejected by the simulator.
			{
				if(!isNoStateChangeButActionAccepted) {}
				numNoStateChangeActionsWithoutFailure++;
			}
		}
		
		if(!newState.equals(prevState)) //Then action was accepted, pres & posspres required were sat
		{
			if(actionTaken.getPossiblePreconditions().size() > 0) //POSSIBLE PRECONDITIONS LEARN
			{				
				Set<Proposition> newPossPreconditionSet = new HashSet<Proposition>(actionTaken.getPossiblePreconditions());//Prevent CMEX
				for(Proposition p : newPossPreconditionSet)
				{
					if(!prevState.contains(p))
					{
						actionTaken.getPossiblePreconditions().remove(p);
						numPossPresLearnedToNotExistByPassiveLearning++;
					}
				}
			}
			
			if(actionTaken.getPossibleAddEffects().size() > 0) //POSSIBLE ADD EFFECTS LEARN
			{				
				Set<Proposition> newPossAddEffectSet = new HashSet<Proposition>(actionTaken.getPossibleAddEffects()); 
				for(Proposition p : newPossAddEffectSet)
				{
					if(newState.contains(p) && !prevState.contains(p))
					{
						actionTaken.getAddEffects().add(p);
						actionTaken.getPossibleAddEffects().remove(p);
						numPossAddEffectsLearnedToKnownByPassiveLearning++;
					}
					else if(!newState.contains(p))
					{
						actionTaken.getPossibleAddEffects().remove(p);
						numPossAddEffectsLearnedToNotExistByPassiveLearning++;
					}
				}
			}
			
			if(actionTaken.getPossibleDeleteEffects().size() > 0) //POSSIBLE DELETE EFFECTS LEARN
			{				
				Set<Proposition> newPossDeleteEffectSet = new HashSet<Proposition>(actionTaken.getPossibleDeleteEffects()); //Prevent CMEX
				for(Proposition p : newPossDeleteEffectSet)
				{
					if(prevState.contains(p) && !newState.contains(p))
					{
						actionTaken.getDeleteEffects().add(p);
						actionTaken.getPossibleDeleteEffects().remove(p);	
						numPossDeleteEffectsLearnedToKnownByPassiveLearning++;
					}
					else if(newState.contains(p))
					{
						actionTaken.getPossibleDeleteEffects().remove(p);
						numPossDeleteEffectsLearnedToNotExistByPassiveLearning++;
					}
				}
			}
		}
	
		actionsHT.put(actionTaken.getIndex(), actionTaken); //Might not be needed. Check.
		
		return isActionAccepted;
	}
		
	//This method can definitely tell if an action was refused. 
	//This is the only time we'd want to increment the failedAction counter.
	//It checks whether the action has known add effects that were not added to the new state
	// and/or known delete effects that were not removed from new state. 
	//If so, then the agent knows the action it selected was refused because of a possible precondition that was not sat.
	//Otherwise, the agent can't tell if the action was accepted or not.
	boolean wasActionRefused(IncompleteActionInstance prevAction, Set<Proposition> newState)
	{
		boolean isActionRefused = false;
		for (Proposition p : prevAction.getAddEffects())
		{
			if(isActionRefused) break;
			if (!newState.contains(p))
				isActionRefused = true;
		}
		
		for (Proposition p : prevAction.getDeleteEffects())
		{
			if(isActionRefused) break;	
			if(newState.contains(p)) isActionRefused = true;
		}
		
		//The numSucceededActions_orNoDecision variable was incremented when this action was chosen
		//The sim applied it to the state using its superior knowledge regarding possibles.
		//If the action was refused
		if(isActionRefused)
		{
			numSuccessfulActions--;
			numFailedActions++;
		}
		
		return isActionRefused;
	}
}
