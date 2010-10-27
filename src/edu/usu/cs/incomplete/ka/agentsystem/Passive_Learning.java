package edu.usu.cs.incomplete.ka.agentsystem;

import java.util.HashSet;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class Passive_Learning 
{
	Hashtable<Integer, IncompleteActionInstance> incompleteActionInstances;
	
	//Lists that exist for each actionInstance
	public static final int KNOWNPRECONDITIONSLIST = 1;
	public static final int KNOWNADDEFFECTSLIST 	= 2;
	public static final int KNOWNDELETEEFFECTSLIST = 3;
	public static final int POSSPRECONDITIONSLIST  = 4;
	public static final int POSSADDEFFECTSLIST     = 5;
	public static final int POSSDELETEEFFECTSLIST  = 6;
	
	Integer numTimesExplorationLearnerCalled;
	
	Integer numSuccessfulActions;
	Integer numNoStateChangeActionsWithoutFailure;
	Integer numFailedActions;
	
	Integer numFailedActionsByExplorationLearner;
	
	Integer numPossPresLearnedToKnownByExploration;
	Integer numPossAddEffectsLearnedToKnownByExploration;
	Integer numPossDeleteEffectsLearnedToKnownByExploration;
	
	Integer numPossPresLearnedToNotExistByExploration;
	Integer numPossAddEffectsLearnedToNotExistByExploration;
	Integer numPossDeleteEffectsLearnedToNotExistByExploration;
	
	boolean debug;
	
	Passive_Learning(Hashtable<Integer, IncompleteActionInstance> a)
	{
		debug = false;
		
		incompleteActionInstances = a;
		
		numTimesExplorationLearnerCalled = 0;
		
		//Counters for results
		numSuccessfulActions = 0;
		numNoStateChangeActionsWithoutFailure = 0;
		numFailedActions = 0;
		
		numFailedActionsByExplorationLearner = 0;
		
		numPossPresLearnedToKnownByExploration = 0;
		numPossAddEffectsLearnedToKnownByExploration = 0;
		numPossDeleteEffectsLearnedToKnownByExploration = 0;

		numPossPresLearnedToNotExistByExploration = 0;
		numPossAddEffectsLearnedToNotExistByExploration = 0;
		numPossDeleteEffectsLearnedToNotExistByExploration = 0;
	}
	
	//This is the method the agent uses when learning by exploration and choosing an action.
	//  random choice!
	public IncompleteActionInstance chooseAction_Exploration(Set<Proposition> currentState)
	{
		if(debug){
			System.out.println("\n----------------------------------------------------------------");
			System.out.println("EXPLORATION - AGENT IS CHOOSING AN ACTION FOR EXPLORATION");
			System.out.println(" FROM CURRENT STATE: " + currentState);
			
			System.out.println("\nKNOWN PRECONDITIONS WERE MET FOR THESE ACTIONS:");
		}
		
		LinkedList<IncompleteActionInstance> bestActionToTry = new LinkedList<IncompleteActionInstance>();
		for(IncompleteActionInstance a : incompleteActionInstances.values())
		{			
			if(currentState.containsAll(a.getPreconditions()))//known pre's are sat by current state
			{	
				if(debug){
					System.out.println(" " + a.getName());
					
					//Does not currently affect choice of action, but just printing out for the user's benefit
					System.out.print("  ARE POSSIBLE PRECONDITIONS ALL MET? ");
					if(currentState.containsAll(a.getPossiblePreconditions()))
						System.out.println("YES.");
					else
					{
						System.out.print("NO: ");
						for(Proposition p : a.getPossiblePreconditions())
						{
							if(!currentState.contains(p))
								System.out.print(p + " ");
						}
						System.out.println();
					}
				}
				
				bestActionToTry.add(a);
			}
		}
		
		//Randomly choose a valid action (known preconditions are valid)
		Integer choice = null;
		if(bestActionToTry.size() != 0)
			choice = Agent.random.nextInt(bestActionToTry.size());
		
		if(debug){
			System.out.println("\nACTION CHOSEN: ");
			Agent.printIncompleteVersionOfActionInstance((IncompleteActionInstance) bestActionToTry.get(choice));
			System.out.println("----------------------------------------------------------------");
		}

		//There is always the case where there is no action available
		if(choice != null) 	return bestActionToTry.get(choice);
		else				return null;
	}
	
	//This is the method that the agent uses when learning by exploration.
	//It might be better to divide it up into more methods to make clearer the cases it catches.
	//A deep copy was being made of the IncompleteActionInstance, which then replaced the old version of the IAI
	// at the end of this routine. That consisted of 6 new Sets being populated, 1 new IAI instance, 1 indexOf operation,
	// and 1 replace operation. Now, a max of 3 new sets are populated for use in the foreach loops where 1 or more
	// props from a possibles list of the IAI instance might be removed.
	public boolean learnAboutActionTaken_Exploration(Set<Proposition> newState, Set<Proposition> prevState, IncompleteActionInstance actionTaken)
	{
		//The reason why we increment here is just because the sim has just applied the action to the current state.
		//This action might end up failing, but we will just decrement this counter at that point in the "wasActionRefused" method.
		numSuccessfulActions++;	
		//This just keeps track of how many times the exploration-based learning type was called.
		//We do not increment in the above chooseActionExploration because the planner
		// might be determining the next action, not the above method.
		numTimesExplorationLearnerCalled++;
		
		boolean isActionAccepted = true;
		
		//This renaming is just for clarity's sake - might be better to remove it?
		IncompleteActionInstance prevAction = actionTaken;
		
		if(debug){
			System.out.println("----------------------------------------------------------------");
			System.out.println("EXPLORATION - AGENT IS LEARNING ABOUT ACTION TAKEN (" + prevAction.getName() + ")...");
			System.out.println("PREVIOUS STATE: " + prevState);
			System.out.println("NEW STATE     : " + newState);
			System.out.println();
		}
		
		//Check to see if action has possibles. If not, there is nothing to be learned.
		if(Agent.isActionComplete(prevAction))
		{
			if(debug){
				System.out.println("Action had no possible preconditions or effects (check above).");
				System.out.println("There is nothing to learn.");
			}
			
			if(newState.equals(prevState))
			{
				numNoStateChangeActionsWithoutFailure++;
				if(debug){System.out.println("Note that a state change did not occur.");}
			}
			
			if(debug){System.out.println("----------------------------------------------------------------");}
			return isActionAccepted;
		}
		
		//The action has possibles. Hopefully we'll learn something.
		
		//This renaming is just for clarity's sake - might be better to remove it?
		IncompleteActionInstance newVersionOfAction = prevAction;
		
		//If state did not change:
		//  the possible effects simply were not actual effects, while the actual effects already existed/!existed.
		//	the action might have been refused by simulator, which knows whether the poss pres/effect are actual
		//  the effects of the action might already have existed/not existed in the previous state
		boolean isNoStateChangeButActionAccepted = false;
		if(newState.equals(prevState))
		{
			if(debug){
				System.out.println("State did not change. Action was refused by simulator OR");
				System.out.println(" the effects of the action already existed in the state.");
			
				//Check to see if a possible pre is not sat by...
				System.out.println("One of these possible pres might not have been sat: " + prevAction.getPossiblePreconditions());	
			}
			//Case of no possible pre's - action must be sat, any possible effects might not be true effects...
			if(prevAction.getPossiblePreconditions().size() == 0)
			{
				isNoStateChangeButActionAccepted = true;
			
				if(debug){
					System.out.println("  Here is a case where there were no possible pre's to check for.");
					System.out.println("  Thus, the action MUST have been taken.");
							
					//PREPARE FOR EFFECTS LEARNING
					System.out.print("   Did the action have possible effects? ");
					if(prevAction.getPossibleAddEffects().size() > 0 || prevAction.getPossibleDeleteEffects().size() > 0)
						System.out.println("YES");
					else
						System.out.println("NO");
				}

				//POSSIBLE ADD EFFECTS LEARN
				if(prevAction.getPossibleAddEffects().size() != 0)
				{
					if(debug){
						System.out.println("  If there were possible adds that didn't exist in the previous state");
						System.out.println("   and they don't exist in the new state, then they are not true adds.");	
						System.out.println("  Were any of these possible add effects not previously existing?: " + prevAction.getPossibleAddEffects());
					}
					
					//To prevent concurrent modification exception, make copy of set that may be altered.
					Set<Proposition> newPossAddEffectSet = new HashSet<Proposition>(newVersionOfAction.getPossibleAddEffects());
					for(Proposition p : newPossAddEffectSet)
					{
						if(!newState.contains(p) && !prevState.contains(p))
						{
							if(debug){System.out.println("   Agent action updated: " + p + " is not an add effect (proven not a possible).");}
							newVersionOfAction.getPossibleAddEffects().remove(p);
							numPossAddEffectsLearnedToNotExistByExploration++;
						}
					}
				}
				
				//POSSIBLE DELETE EFFECTS LEARN
				if(prevAction.getPossibleDeleteEffects().size() != 0)
				{
					if(debug){
						System.out.println("  If there were possible deletes that existed in the previous state");
						System.out.println("   and they also exist in the new state, then they are not true deletes.");		
						System.out.println("  Were any of these possible delete effects previously existing?: " + prevAction.getPossibleDeleteEffects());
					}
					
					//To prevent concurrent modification exception, make copy of set that may be altered.
					Set<Proposition> newPossDeleteEffectSet = new HashSet<Proposition>(newVersionOfAction.getPossibleDeleteEffects());
					for(Proposition p : newPossDeleteEffectSet)
					{
						if(prevState.contains(p) && newState.contains(p))
						{
							if(debug){System.out.println("   Agent action updated: " + p + " is not a delete effect (proven not a possible).");}
							newVersionOfAction.getPossibleDeleteEffects().remove(p);
							numPossDeleteEffectsLearnedToNotExistByExploration++;
						}
					}
				}	
			}
			
			if(debug){
				System.out.println("Checking known effects to see if action was refused...");
				System.out.println("  Note: if no possible pre's, then the action couldn't have been refused.");
				System.out.println("   This case was just checked.");
			}
			//Looking to see if the action has known add effects that were not added to the new state
			// or known delete effects that were not removed from new state. If so, then the agent knows
			// the action it selected was refused because of a possible precondition that was not sat.
			//Otherwise, the agent can't tell if the action was accepted or not.
			boolean isActionRefused = wasActionRefused(prevAction, newState);
			if(isActionRefused)
			{
				isActionAccepted = false; //Action is refused	
				if(debug){System.out.println("The action was refused by sim. Unsat pre's:");}			
				List<Proposition> unsatPossPres = getListOfUnSatPossiblePreconditions(prevAction, newState);
				if(debug){System.out.println("\t" + unsatPossPres + "\n");}
				
				//Count the number of times the exploration-based learner chose an action that definitively failed
				numFailedActionsByExplorationLearner++;
				
				//Here is an easy chance to learn something - the action was refused, 
				//and there is only one possible precondition that was not valid.
				if(unsatPossPres.size() == 1)
				{
					if(debug){System.out.println(" Unsat possible preconditions is a singleton. It must be a precondition.");}
					Proposition p = unsatPossPres.get(0);
					if(debug){System.out.println(" Agent action updated: " + p + " is now a known precondition.");}
					
					newVersionOfAction.getPreconditions().add(p);
					newVersionOfAction.getPossiblePreconditions().remove(p);
					numPossPresLearnedToKnownByExploration++;	
				}
				
				//2 or more unsat possible preconditions that caused the action be rejected by the sim
				//is the most difficult case to learn from. The simplest way to learn about multiple 
				//possible pres is when the action succeeds, but one or more possible pres were not true 
				//in the state where the action was applied. All those not true possible pres were not actual pres.");
				//IMPORTANT: just because a possible pre is true and the action was accepted by the sim
				// does not mean that currently true possible pre is actually a precoondition.
				else if(unsatPossPres.size() > 1)
				{
					if(debug){
						System.out.println(" The number of unsat possible preconditions is greater than 1.");
						System.out.println("  This case is difficult to learn from.");
						System.out.println("  Can't presently learn from this situation...");
					}
				}
				else if(prevAction.getPossiblePreconditions().size() == 0)
					if(debug){System.out.println(" This should never happen!");}
			}
			else //Agent cannot prove his action was rejected by the simulator. 
			{
				if(!isNoStateChangeButActionAccepted)
				{
					if(debug){
						System.out.println(" It doesn't appear that the action was refused by the sim.");
						System.out.println("  Perhaps it was the same action twice, or,");
						System.out.println("  perhaps the actions effects simply already existed.");
						System.out.println("  You can check the previous state and the effects of the action for verification.");
						System.out.println("  (Note: if it was the case where no possible preconditions existed,");
						System.out.println("    you would have seen the output for that already.)");
					}
				}
				numNoStateChangeActionsWithoutFailure++;
			}
		}
		else // if new state is different than previous state
		{
			if(debug){
				System.out.println("State changed; i.e., action was accepted.");
	
				//POSSIBLE PRECONDITIONS LEARN
				//If any possible pres of the action are not sat in the prev state, but the action was accepted by the sim,
				// then these possible pres are not actual pres.
				System.out.println(" Pres (including necessary possibles) were sat.");
				System.out.print("Did the action have possible pres? ");
			}
			if(prevAction.getPossiblePreconditions().size() > 0)
			{
				if(debug){
					System.out.println("YES");
					System.out.println("Were any of these possible pres not true?: " + prevAction.getPossiblePreconditions());
				}
				
				//To prevent concurrent modification exception, make copy of set that may be altered.
				Set<Proposition> newPossPreconditionSet = new HashSet<Proposition>(newVersionOfAction.getPossiblePreconditions());
				for(Proposition p : newPossPreconditionSet)
				{
					if(!prevState.contains(p))
					{
						if(debug){System.out.println("Agent action updated: possible pre -" + p + "- is not a precondition (proven not needed).");}	
						newVersionOfAction.getPossiblePreconditions().remove(p);
						numPossPresLearnedToNotExistByExploration++;
					}
				}
			}
			else 													
				if(debug){System.out.println("NO");}
			
			//PREPARE FOR EFFECTS LEARNING
			if(debug){
				System.out.print("Did the action have possible effects? ");
				if(prevAction.getPossibleAddEffects().size() > 0 || prevAction.getPossibleDeleteEffects().size() > 0)
					System.out.println("YES");
				else
					System.out.println("NO");
			}
			
			//POSSIBLE ADD EFFECTS LEARN
			if(prevAction.getPossibleAddEffects().size() != 0)
			{
				if(debug){System.out.println("Were any of these possible add effects added?: " + prevAction.getPossibleAddEffects());}
				
				//To prevent concurrent modification exception, make copy of set that may be altered.
				Set<Proposition> newPossAddEffectSet = new HashSet<Proposition>(newVersionOfAction.getPossibleAddEffects());
				for(Proposition p : newPossAddEffectSet)
				{
					if(newState.contains(p) && !prevState.contains(p))
					{
						if(debug){System.out.println("Agent action updated: " + p + " is now a known add effect.");}
						newVersionOfAction.getAddEffects().add(p);
						newVersionOfAction.getPossibleAddEffects().remove(p);
						numPossAddEffectsLearnedToKnownByExploration++;
					}
					else if(!newState.contains(p))
					{
						if(debug){System.out.println("Agent action updated: " + p + " is not an add effect (proven not a possible).");}
						newVersionOfAction.getPossibleAddEffects().remove(p);
						numPossAddEffectsLearnedToNotExistByExploration++;
					}
				}
			}
			
			//POSSIBLE DELETE EFFECTS LEARN
			if(prevAction.getPossibleDeleteEffects().size() != 0)
			{
				if(debug){System.out.println("Were any of these possible delete effects removed?: " + prevAction.getPossibleDeleteEffects());}
				
				//To prevent concurrent modification exception, make copy of set that may be altered.
				Set<Proposition> newPossDeleteEffectSet = new HashSet<Proposition>(newVersionOfAction.getPossibleDeleteEffects());
				for(Proposition p : newPossDeleteEffectSet)
				{
					if(prevState.contains(p) && !newState.contains(p))
					{
						if(debug){System.out.println("Agent action updated: " + p + " is now a known delete effect.");}	
						newVersionOfAction.getDeleteEffects().add(p);
						newVersionOfAction.getPossibleDeleteEffects().remove(p);	
						numPossDeleteEffectsLearnedToKnownByExploration++;
					}
					else if(newState.contains(p))
					{
						if(debug){System.out.println("Agent action updated: " + p + " is not a delete effect (proven not a possible).");}
						newVersionOfAction.getPossibleDeleteEffects().remove(p);
						numPossDeleteEffectsLearnedToNotExistByExploration++;
					}
				}
			}
		}
		
		if(debug){
			System.out.println("\nNEW VERSION OF INCOMPLETE ACTION (AFTER LEARNING BY EXPLORATION):");
			Agent.printIncompleteVersionOfActionInstance(newVersionOfAction);
		}
		
		incompleteActionInstances.put(newVersionOfAction.getIndex(), newVersionOfAction);
		
		if(debug){
			System.out.println("\nCHECK INCOMPLETE ACTIONS LIST TO SEE IF THESE CHANGES ARE RECORDED:");
			for (IncompleteActionInstance a : incompleteActionInstances.values())
			{
				if(a.getIndex() == newVersionOfAction.getIndex())
					Agent.printIncompleteVersionOfActionInstance(a);
			}
			System.out.println("----------------------------------------------------------------");
		}
		
		return isActionAccepted;
	}
	
	private List<Proposition> getListOfUnSatPossiblePreconditions(IncompleteActionInstance prevAction, Set<Proposition> newState)
	{
		List<Proposition> unsatPossPres = new LinkedList<Proposition>();
		for(Proposition p : prevAction.getPossiblePreconditions())
		{
			if(!newState.contains(p))
				unsatPossPres.add(p);
		}
		return unsatPossPres;
	}
	
	//This method can definitely tell if an action was refused. This is the only time we'd want
	//To increment the failedAction counter...
	boolean wasActionRefused(IncompleteActionInstance prevAction, Set<Proposition> newState)
	{
		boolean isActionRefused = false;
		for (Proposition p : prevAction.getAddEffects())
		{
			if(isActionRefused) break;
			
			if (!newState.contains(p))
			{
				if(debug){System.out.println(" Add effect (known) " + p + " of action DNE in current state.");}
				isActionRefused = true;
			}
		}
		
		//Looking to see if the action has known delete effects that were not deleted from the new state...
		for (Proposition p : prevAction.getDeleteEffects())
		{
			if(isActionRefused) break;	
			if(newState.contains(p))
			{
				if(debug){System.out.println("Delete effect (known) " + p + " of action exists in current state.");}
				isActionRefused = true;
			}
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
	
	public int getTotalNumberOfActions()
	{
		return numSuccessfulActions + numFailedActions;
	}
}
