package edu.usu.cs.incompletecompleteagentsim;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class Exploration_Learning 
{
	List<ActionInstance> actionInstances;
	
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
	
	Exploration_Learning(List<ActionInstance> a)
	{
		actionInstances = a;
		
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
	public ActionInstance chooseAction_Exploration(Set<Proposition> currentState)
	{
		System.out.println("\n----------------------------------------------------------------");
		System.out.println("EXPLORATION - AGENT IS CHOOSING AN ACTION FOR EXPLORATION");
		System.out.println(" FROM CURRENT STATE: " + currentState);
		
		System.out.println("\nKNOWN PRECONDITIONS WERE MET FOR THESE ACTIONS:");
		
		LinkedList<ActionInstance> bestActionToTry = new LinkedList<ActionInstance>();
		for(ActionInstance act : actionInstances)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			
			if(currentState.containsAll(a.getPreconditions()))
			{
				
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
				bestActionToTry.add(a);
			}
		}
		
		//Randomly choose a valid action (known preconditions are valid)
		Integer choice = Agent.random.nextInt(bestActionToTry.size());
		System.out.println("\nACTION CHOSEN: ");
		Agent.printIncompleteVersionOfActionInstance((IncompleteActionInstance) bestActionToTry.get(choice));
		System.out.println("----------------------------------------------------------------");
		

		//The reason why we increment here is just because the sim is about to (try to) apply it...
		//This action might end up failing, but we will just decrement this counter at that point
		//	 in the "wasActionRefused" method.
		numSuccessfulActions++;
		
		//This just keeps track of how many times the xploration-based learning type was called.
		numTimesExplorationLearnerCalled++;
		
		//There is always the case where there is no action available - presently uncaught/untested!
		return bestActionToTry.get(choice);
	}
	
	//this is the method that the agent uses when learning by exploration
	public void learnAboutActionTaken_Exploration(Set<Proposition> newState, Set<Proposition> prevState, ActionInstance actionTaken)
	{
		IncompleteActionInstance prevAction = (IncompleteActionInstance) actionTaken;
		
		System.out.println("----------------------------------------------------------------");
		System.out.println("EXPLORATION - AGENT IS LEARNING ABOUT ACTION TAKEN (" + prevAction.getName() + ")...");
		System.out.println("PREVIOUS STATE: " + prevState);
		System.out.println("NEW STATE     : " + newState);
		System.out.println();
		
		//Check to see if action has possibles. If not, there is nothing to be learned.
		if(Agent.isActionComplete(prevAction))
		{
			System.out.println("Action had no possible preconditions or effects (check above).");
			System.out.println("There is nothing to learn.");
			
			if(newState.equals(prevState))
			{
				numNoStateChangeActionsWithoutFailure++;
				System.out.println("Note that a state change did not occur.");
			}
			
			System.out.println("----------------------------------------------------------------");
			return;
		}
		
		//The action has possibles.  Make a deep copy of it for modification based on what the agent will learn.
		//At the end of this method this new version of the action will replace the old version in the
		//ActionInstances List generated in the constructor above.
		IncompleteActionInstance newVersionOfAction = makeDeepCopyOfIncompleteActionInstance(prevAction);
		
		//Action has possibles. If state did not change, action might have been refused by simulator, which knows
		// whether the agent possibles are actual pres and effects, OR, the effects of the action might already have
		//existed/not existed in the previous state...
		if(newState.equals(prevState))
		{
			System.out.println("State did not change. Action was refused by simulator OR");
			System.out.println(" the effects of the action already existed in the state.");
			
			//Check to see if a possible pre is not sat by...
			System.out.println("One of these possible pres might not have been sat: " + prevAction.getPossiblePreconditions());
			System.out.println("Checking known effects to see if action was refused...");
			
			//Looking to see if the action has known add effects that were not added to the new state
			// or known delete effects that were not removed from new state. If so, then the agent knows
			// the action it selected was refused because of a possible precondition that was not sat.
			//Otherwise, the agent can't tell if the action was accepted or not.
			boolean isActionRefused = wasActionRefused(prevAction, newState);
			if(isActionRefused)
			{
				System.out.println("The action was refused by sim.\n");
				
				//Count the number of times the exploration-based learner chose an action that definitively failed
				numFailedActionsByExplorationLearner++;
				
				List<Proposition> unsatPossPres = getListOfUnSatPossiblePreconditions(prevAction, newState);
				
				//Here is an easy chance to learn something - the action was refused, 
				//and there is only one possible precondition that was not valid.
				if(unsatPossPres.size() == 1)
				{
					System.out.println(" Unsat possible preconditions is a singleton. It must be a precondition.");
					
					Proposition p = unsatPossPres.get(0);
					System.out.println(" Agent action updated: " + p + " is now a known precondition.");
					newPreconditionsSet.add(p);
					newPossPreconditionsSet.remove(p);
					
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
					System.out.println(" The number of unsat possible preconditions is greater than 1.");
					System.out.println("  This case is difficult to learn from.");
					System.out.println("  Can't presently learn from this situation...");
					
				}
				else if(prevAction.getPossiblePreconditions().size() == 0)
				{
					System.out.println(" This shouldn't happen!");
				}
			}
			else //Agent cannot prove his action was rejected by the simulator.
			{
				System.out.println(" It doesn't appear that the action was refused by the sim.");
				System.out.println("  Perhaps it was the same action twice, or,");
				System.out.println("  perhaps the actions effects simply already existed.");
				System.out.println("  Check the previous state and the effects of the action for verification.");
				System.out.println("  Can't presently learn from this situation...");
				
				numNoStateChangeActionsWithoutFailure++;
			}
		}
		else // if new state is different than previous state
		{
			System.out.println("State changed; i.e., action was accepted.");
			
			//POSSIBLE PRECONDITIONS LEARN
			//If any possible pres of the action are not sat in the prev state, but the action was accepted by the sim,
			// then these possible pres are not actual pres.
			System.out.println(" Pres (including necessary possibles) were sat.");
			System.out.print("Did the action have possible pres? ");
			if(prevAction.getPossiblePreconditions().size() > 0)
			{
				System.out.println("YES");
				System.out.println("Were any of these possible pres not true?: " + prevAction.getPossiblePreconditions());
				
				for(Proposition p : prevAction.getPossiblePreconditions())
				{
					if(!prevState.contains(p))
					{
						System.out.println("Agent action updated: possible pre" + p + " is not a precondition (proven not needed).");
						newPossPreconditionsSet.remove(p);
						
						numPossPresLearnedToNotExistByExploration++;
					}
				}
			}
			else 													
				System.out.println("NO");
			
			//PREPARE FOR EFFECTS LEARNING
			System.out.print("Did the action have possible effects? ");
			if(prevAction.getPossibleAddEffects().size() > 0 || prevAction.getPossibleDeleteEffects().size() > 0)
				System.out.println("YES");
			else
				System.out.println("NO");
			
			//POSSIBLE ADD EFFECTS LEARN
			if(prevAction.getPossibleAddEffects().size() != 0)
			{
				System.out.println("Were any of these possible add effects added?: " + prevAction.getPossibleAddEffects());
				for(Proposition p : prevAction.getPossibleAddEffects())
				{
					if(newState.contains(p) && !prevState.contains(p))
					{
						System.out.println("Agent action updated: " + p + " is now a known add effect.");
						
						newAddEffectsSet.add(p);
						newPossAddEffectsSet.remove(p);
						
						numPossAddEffectsLearnedToKnownByExploration++;
					}
					else if(!newState.contains(p))
					{
						System.out.println("Agent action updated: " + p + " is not an add effect (proven not a possible).");
						
						newPossAddEffectsSet.remove(p);
						
						numPossAddEffectsLearnedToNotExistByExploration++;
					}
				}
			}
			
			//POSSIBLE DELETE EFFECTS LEARN
			if(prevAction.getPossibleDeleteEffects().size() != 0)
			{
				System.out.println("Were any of these possible delete effects removed?");
				System.out.println("\t" + prevAction.getPossibleDeleteEffects());
				for(Proposition p : prevAction.getPossibleDeleteEffects())
				{
					if(prevState.contains(p) && !newState.contains(p))
					{
						System.out.println("Agent action updated: " + p + " is now a known delete effect.");
						
						newDeleteEffectsSet.add(p);
						newPossDeleteEffectsSet.remove(p);
						
						numPossDeleteEffectsLearnedToKnownByExploration++;
					}
					else if(newState.contains(p))
					{
						System.out.println("Agent action updated: " + p + " is not a delete effect (proven not a possible).");
												
						newPossDeleteEffectsSet.remove(p);
						
						numPossDeleteEffectsLearnedToNotExistByExploration++;
					}
				}
			}
		}
		
		Integer location = actionInstances.indexOf(actionTaken);
		actionInstances.set(location, newVersionOfAction);
		
		System.out.println("\nNEW VERSION OF INCOMPLETE ACTION (AFTER LEARNING BY EXPLORATION):");
		Agent.printIncompleteVersionOfActionInstance((IncompleteActionInstance) actionInstances.get(location));
		System.out.println("----------------------------------------------------------------");
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
	
	Set<Proposition> newPreconditionsSet;
	Set<Proposition> newPossPreconditionsSet;
	Set<Proposition> newAddEffectsSet;
	Set<Proposition> newPossAddEffectsSet;
	Set<Proposition> newDeleteEffectsSet;
	Set<Proposition> newPossDeleteEffectsSet;
	private IncompleteActionInstance makeDeepCopyOfIncompleteActionInstance(IncompleteActionInstance prevAction)
	{
		newPreconditionsSet     	= new HashSet<Proposition>(prevAction.getPreconditions());
		newPossPreconditionsSet 	= new HashSet<Proposition>(prevAction.getPossiblePreconditions());
		newAddEffectsSet 			= new HashSet<Proposition>(prevAction.getAddEffects());
		newPossAddEffectsSet 		= new HashSet<Proposition>(prevAction.getPossibleAddEffects());
		newDeleteEffectsSet 		= new HashSet<Proposition>(prevAction.getDeleteEffects());
		newPossDeleteEffectsSet 	= new HashSet<Proposition>(prevAction.getPossibleDeleteEffects());
		
		IncompleteActionInstance newVersionOfAction = new IncompleteActionInstance
		(
			prevAction.getName(),
			newPreconditionsSet, newAddEffectsSet, newDeleteEffectsSet,
			newPossPreconditionsSet, newPossAddEffectsSet, newPossDeleteEffectsSet,
			prevAction.getIndex()		
		);
		
		return newVersionOfAction;
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
				System.out.println(" Add effect (known) " + p + " of action DNE in current state.");
				isActionRefused = true;
			}
		}
		
		//Looking to see if the action has known delete effects that were not deleted from the new state...
		for (Proposition p : prevAction.getDeleteEffects())
		{
			if(isActionRefused) break;
			
			if(newState.contains(p))
			{
				System.out.println("Delete effect (known) " + p + " of action exists in current state.");
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

}
