package edu.usu.cs.incompletecompleteagentsim;

import java.util.*;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.pddl.domain.incomplete.*;

//Assumption: no set of propositions in an IncompleteActionInstance class instance is ever null.
//Even "goal" is an IncompleteActionInstance object for incomplete domains.
//Go to IAI class and uncomment constructor println statements if you like...
public class Agent 
{	
	Domain incompleteDomain;
	Problem problem;
	
	private static Random random;
	private Integer range; 
	
	List<ActionInstance> actionInstances;
	
	//Lists that exist for each actionInstance
	public static final int KNOWNPRECONDITIONSLIST = 1;
	public static final int KNOWNADDEFFECTSLIST 	= 2;
	public static final int KNOWNDELETEEFFECTSLIST = 3;
	public static final int POSSPRECONDITIONSLIST  = 4;
	public static final int POSSADDEFFECTSLIST     = 5;
	public static final int POSSDELETEEFFECTSLIST  = 6;
	
	//Types of learning the agent can perform
	public static enum LearningType {QA, EXPLORATION};
	
	//Data members used in keeping track of results data
	Integer originalNumOfKnownPreconditions;
	Integer originalNumOfKnownAddEffects;
	Integer originalNumOfKnownDeleteEffects;
	Integer originalNumOfPossPreconditions;
	Integer originalNumOfPossAddEffects;
	Integer originalNumOfPossDeleteEffects;
	
	Integer totalOriginalNumKnownPresAddsDeletes;
	Integer totalOriginalNumPossiblePresAddsDeletes;
	
	Integer currNumOfKnownPreconditions;
	Integer currNumOfKnownAddEffects;
	Integer currNumOfKnownDeleteEffects;
	Integer currNumOfPossPreconditions;
	Integer currNumOfPossAddEffects;
	Integer currNumOfPossDeleteEffects;
	
	Integer totalCurrNumKnownPresAddsDeletes;
	Integer totalCurrNumPossiblePresAddsDeletes;
	
	Integer numSuccessfulActions;
	Integer numNoStateChangeActionsWithoutFailure;
	Integer numFailedActions;
	Integer numFailedActionsByExplorationLearner;
	Integer numFailedActionsByQALearner;
	
	Integer numTimesExplorationLearnerCalled;
	Integer numTimesQALearnerCalled;
	
	Integer numPossPresLearnedToKnownByExploration;
	Integer numPossAddEffectsLearnedToKnownByExploration;
	Integer numPossDeleteEffectsLearnedToKnownByExploration;
	
	Integer numPossPresLearnedToKnownByQA;
	Integer numPossAddEffectsLearnedToKnownByQA;
	Integer numPossDeleteEffectsLearnedToKnownByQA;
	
	Integer numPossPresLearnedToNotExistByExploration;
	Integer numPossAddEffectsLearnedToNotExistByExploration;
	Integer numPossDeleteEffectsLearnedToNotExistByExploration;
	
	Integer numPossPresLearnedToNotExistByQA;
	Integer numPossAddEffectsLearnedToNotExistByQA;
	Integer numPossDeleteEffectsLearnedToNotExistByQA;
	
	Long startTime;
	Long finishTime;
	
	//Constructor
	public Agent(Domain d, Problem p)
	{
		actionInstances = null;
		try{actionInstances = PddlImporter.createActionInstances(d, p);
		}catch(Exception e){System.out.println("Agent ActionInstances grab failed.");}
		
		System.out.println("-----------------------------------------------------");
		System.out.println("AGENT ACTIONS AVAILABLE (has possibles): ");
		
		//Showing to user what actions (and their properties) the agent can perform
		//These will be updated/change as the agent learns
		for(ActionInstance act : actionInstances)
		{
			System.out.println();
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			printIncompleteVersionOfActionInstance(a);	
		}
		
		System.out.println("\nEND - AGENT ACTIONS AVAILABLE");
		System.out.println("-----------------------------------------------------");
		
		random = new Random(0);
						
		//For results, collects the number of known/possible pre's, adds, deletes
		setInitialListSizeCountForAllAgentsActionInstances();
		
		//Counters for results
		numSuccessfulActions = 0;
		numNoStateChangeActionsWithoutFailure = 0;
		numFailedActions = 0;
		
		numFailedActionsByExplorationLearner = 0;
		numFailedActionsByQALearner = 0;
		
		numTimesExplorationLearnerCalled = 0;
		numTimesQALearnerCalled = 0;
		
		numPossPresLearnedToKnownByExploration = 0;
		numPossAddEffectsLearnedToKnownByExploration = 0;
		numPossDeleteEffectsLearnedToKnownByExploration = 0;
		
		numPossPresLearnedToKnownByQA = 0;
		numPossAddEffectsLearnedToKnownByQA = 0;
		numPossDeleteEffectsLearnedToKnownByQA = 0;
		
		numPossPresLearnedToNotExistByExploration = 0;
		numPossAddEffectsLearnedToNotExistByExploration = 0;
		numPossDeleteEffectsLearnedToNotExistByExploration = 0;
		
		numPossPresLearnedToNotExistByQA = 0;
		numPossAddEffectsLearnedToNotExistByQA = 0;
		numPossDeleteEffectsLearnedToNotExistByQA = 0;	
	}
	
	//Current way to choose whether to ask a question vs. learn by exploring
	//is to add the # of agents actions and total # of possibles, get a random int in that range.
	//If the random int is in the range of number of actions, then learn by exploring, else
	//ask a question.
	//!!!!This version takes the initial # of possibles only!!!!
	public LearningType selectTypeOfLearning()
	{	
		System.out.println("----------------------------------------------------------------");
		System.out.println("AGENT IS CHOOSING WHICH TYPE OF LEARNING TO PERFORM");
		System.out.println(" If rand number is < # of actions, then Exploration, else QA.\n");
		
		//Range for doing random selection of QA vs. exploration
		//	 based on only the current # of possibles + # of actions.
		setCurrentPossibleListSizeCountForAllAgentsActionInstances();
		range = actionInstances.size() + totalCurrNumPossiblePresAddsDeletes;
		Integer rand = random.nextInt(range);
		
		System.out.println(" # of actions               : " + actionInstances.size());
		System.out.println(" Current # of possible props: " + totalCurrNumPossiblePresAddsDeletes);
		System.out.println(" Range                      : " + range);
		System.out.println(" Random #                   : " + rand); 
		
		LearningType type;
		if(rand < actionInstances.size()) type = LearningType.EXPLORATION;
		else type = LearningType.QA;
		
		System.out.println("\nTYPE LEARNING SELECTED: " + type);
		System.out.println("----------------------------------------------------------------");
		return type;
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
		Integer choice = random.nextInt(bestActionToTry.size());
		System.out.println("\nACTION CHOSEN: ");
		printIncompleteVersionOfActionInstance((IncompleteActionInstance) bestActionToTry.get(choice));
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
		if(isActionComplete(prevAction))
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
		printIncompleteVersionOfActionInstance((IncompleteActionInstance) actionInstances.get(location));
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
	
	//This version of choosing an action for QA is random based, but only for the actions that are applicable 
	// to the current state by their known pre's. Then it selects an action which has at least one
	// possible from among that group. If no actions relevant to that state have an outstanding possible, then it will signal so.
	// Otherwise, it randomly selects one possible to learn about.
	public QA_ActionAndPropChoice chooseIncompleteActionAndProp_QA()
	{
		System.out.println("\n----------------------------------------------------------------");
		System.out.println("QA - AGENT IS CHOOSING AN INCOMPLETE ACTION FOR QA");
		
		//Get all incomplete actions
		System.out.println("\nThese actions are incomplete (contain possibles): ");
		LinkedList<ActionInstance> actionsWithPossibles = new LinkedList<ActionInstance>();
		for(ActionInstance act : actionInstances)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			
			if(!isActionComplete(a))
			{
				System.out.println(" " + a.getName());
				actionsWithPossibles.add(act);
			}
		}
		
		//Check for no actions with possibles - this should never happen by
		// the design of the the method selectTypeOfLearning()
		if(actionsWithPossibles.size() == 0)
		{
			System.out.println("ERROR: No actions found with possibles for QA.");
			System.out.println(" THIS SHOULD NEVER HAPPEN!");
			return null;
		}
		
		Integer choice = random.nextInt(actionsWithPossibles.size()); //the choice of which action with possibles is made
		ActionInstance act = actionsWithPossibles.get(choice);
		IncompleteActionInstance a = (IncompleteActionInstance) act;
		
		System.out.println("\nACTION CHOSEN: ");
		printIncompleteVersionOfActionInstance(a);
		
		//restrict the possible prop choice to learn about to the possible pre/add/delete lists that actually have possibles
		LinkedList<Integer> ListsWithPossiblesForChosenAction = new LinkedList<Integer>();
		if(a.getPossiblePreconditions().size() != 0 /*|| a.getPossiblePreconditions() != null*/)
		{
			ListsWithPossiblesForChosenAction.add(POSSPRECONDITIONSLIST);
		}
		if(a.getPossibleAddEffects().size() != 0 /*|| a.getPossibleAddEffects() != null*/)
		{
			ListsWithPossiblesForChosenAction.add(POSSADDEFFECTSLIST);
		}
		if(a.getPossibleDeleteEffects().size() != 0 /*|| a.getPossibleDeleteEffects() != null*/)
		{
			ListsWithPossiblesForChosenAction.add(POSSDELETEEFFECTSLIST);
		}
		
		//choose a list from amongst those.
		Integer randListChoice = random.nextInt(ListsWithPossiblesForChosenAction.size());
		Integer listNumber = ListsWithPossiblesForChosenAction.get(randListChoice);
		
		//get the list
		Set<Proposition> listOfPossiblesFromWhichToChooseAProp = null;
		switch(listNumber)
		{
			case(POSSPRECONDITIONSLIST):
				System.out.println("LIST CHOSEN: possible preconditions");
				listOfPossiblesFromWhichToChooseAProp = a.getPossiblePreconditions();
				break;
			case(POSSADDEFFECTSLIST):
				System.out.println("LIST CHOSEN: possible add effects");
				listOfPossiblesFromWhichToChooseAProp = a.getPossibleAddEffects();
				break;
			case(POSSDELETEEFFECTSLIST):
				System.out.println("LIST CHOSEN: possible delete effects");
				listOfPossiblesFromWhichToChooseAProp = a.getPossibleDeleteEffects();
				break;
		}
		
		//get the proposition to check
		Integer propChosenIndex = random.nextInt(listOfPossiblesFromWhichToChooseAProp.size());
		ArrayList<Proposition> arr = new ArrayList<Proposition>(listOfPossiblesFromWhichToChooseAProp);
		Proposition propToCheck = arr.get(propChosenIndex);
		
		System.out.println("PROPOSITION CHOSEN: " + propToCheck);
		
		QA_ActionAndPropChoice qa_actionChoiceAndProp =  new QA_ActionAndPropChoice(act, listNumber, propToCheck);
		
		System.out.println("----------------------------------------------------------------");
		
		numTimesQALearnerCalled++;
		
		return qa_actionChoiceAndProp;
	}
	
	public void incorporateKnowledgeGained_QA(boolean result, QA_ActionAndPropChoice qa_actionChoiceAndProp)
	{
		System.out.println("----------------------------------------------------------------");
		System.out.println("QA - AGENT IS LEARNING ABOUT ACTION SELECTED (" + qa_actionChoiceAndProp.action.getName() + ")...");
		System.out.println("REGARDING THIS POSSIBLE PRE/ADD/DELETE PROPOSITION: " + qa_actionChoiceAndProp.propToLearnAbout);
		
		IncompleteActionInstance newVersionOfAction = makeDeepCopyOfIncompleteActionInstance((IncompleteActionInstance) qa_actionChoiceAndProp.action);

		System.out.print("\nBelongs to the agent's possible ");
		
		switch(qa_actionChoiceAndProp.listOriginOfProp)
		{
			case(POSSPRECONDITIONSLIST):
				System.out.println("pre's list.");
				if(result)
				{
					newPreconditionsSet.add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossPresLearnedToKnownByQA++;
				}
				else
					numPossPresLearnedToNotExistByQA++;
				newPossPreconditionsSet.remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
			case(POSSADDEFFECTSLIST):
				System.out.println("adds list.");
				if(result)
				{
					newAddEffectsSet.add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossAddEffectsLearnedToKnownByQA++;
				}
				else
					numPossAddEffectsLearnedToNotExistByQA++;
				newPossAddEffectsSet.remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
			case(POSSDELETEEFFECTSLIST):
				System.out.println("deletes list.");
				if(result)
				{
					newDeleteEffectsSet.add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossDeleteEffectsLearnedToKnownByQA++;
				}
				else
					numPossDeleteEffectsLearnedToNotExistByQA++;
				newPossDeleteEffectsSet.remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
		}
		
		System.out.print("Was it found in the sim's actual list?: ");
		if(result) System.out.println("YES");
		else System.out.println("NO");
		
		Integer location = actionInstances.indexOf(qa_actionChoiceAndProp.action);
		actionInstances.set(location, newVersionOfAction);
		
		System.out.println("\nNEW VERSION OF INCOMPLETE ACTION (AFTER LEARNING BY QA):");
		printIncompleteVersionOfActionInstance((IncompleteActionInstance) actionInstances.get(location));
		System.out.println("----------------------------------------------------------------");
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
	
	boolean isActionComplete(IncompleteActionInstance a)
	{
		if(a.getPossiblePreconditions().size() == 0 && 
		   a.getPossibleAddEffects().size()    == 0 && 
		   a.getPossibleDeleteEffects().size() == 0)
			return true;
		else return false;	
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
	
	//When called, this method return the current # of propositions in a list for the set of
	// actionInstances.  This # changes as agents takes actions, because it is learning...
	// Lists are: 	1) KNOWNPRECONDITIONSLIST 
	//  		  	2) KNOWNADDEFFECTSLIST
	//			  	3) KNOWNDELETEEFFECTSLIST
	//				4) POSSPRECONDITIONSLIST 
	//  		  	5) POSSADDEFFECTSLIST
	//			  	6) POSSDELETEEFFECTSLIST
	int countCurrNumPropsInXListForAllActionInstances(int whichList)
	{
		int count = 0;
		for(ActionInstance act : actionInstances)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			
			switch(whichList)
			{
				case KNOWNPRECONDITIONSLIST:
					count += a.getPreconditions().size();
					break;
				case KNOWNADDEFFECTSLIST:
					count += a.getAddEffects().size();
					break;
				case KNOWNDELETEEFFECTSLIST:
					count += a.getDeleteEffects().size();
					break;
				case POSSPRECONDITIONSLIST:
					count += a.getPossiblePreconditions().size();
					break;
				case POSSADDEFFECTSLIST:
					count += a.getPossibleAddEffects().size();
					break;
				case POSSDELETEEFFECTSLIST:
					count += a.getPossibleDeleteEffects().size();
					break;
				default:
					System.out.println("Error while counting possibles...");
			}
		}
		return count;
	}
	
	void setInitialListSizeCountForAllAgentsActionInstances()
	{
		//Init these before the agents begins learning, print them at end
		originalNumOfKnownPreconditions = countCurrNumPropsInXListForAllActionInstances(KNOWNPRECONDITIONSLIST);
		originalNumOfKnownAddEffects    = countCurrNumPropsInXListForAllActionInstances(KNOWNADDEFFECTSLIST);
		originalNumOfKnownDeleteEffects = countCurrNumPropsInXListForAllActionInstances(KNOWNDELETEEFFECTSLIST);
		originalNumOfPossPreconditions 	= countCurrNumPropsInXListForAllActionInstances(POSSPRECONDITIONSLIST);
		originalNumOfPossAddEffects		= countCurrNumPropsInXListForAllActionInstances(POSSADDEFFECTSLIST);
		originalNumOfPossDeleteEffects	= countCurrNumPropsInXListForAllActionInstances(POSSDELETEEFFECTSLIST);
		
		totalOriginalNumKnownPresAddsDeletes    = originalNumOfKnownPreconditions + originalNumOfKnownAddEffects + originalNumOfKnownDeleteEffects;
		totalOriginalNumPossiblePresAddsDeletes = originalNumOfPossPreconditions + originalNumOfPossAddEffects + originalNumOfPossDeleteEffects;
	}
	
	void setCurrentListSizeCountForAllAgentsActionInstances()
	{
		setCurrentKnownListSizeCountForAllAgentsActionInstances();
		setCurrentPossibleListSizeCountForAllAgentsActionInstances();
	}
	
	void setCurrentKnownListSizeCountForAllAgentsActionInstances()
	{
		currNumOfKnownPreconditions = countCurrNumPropsInXListForAllActionInstances(KNOWNPRECONDITIONSLIST);
		currNumOfKnownAddEffects    = countCurrNumPropsInXListForAllActionInstances(KNOWNADDEFFECTSLIST);
		currNumOfKnownDeleteEffects = countCurrNumPropsInXListForAllActionInstances(KNOWNDELETEEFFECTSLIST);
	
		totalCurrNumKnownPresAddsDeletes    = currNumOfKnownPreconditions + currNumOfKnownAddEffects + currNumOfKnownDeleteEffects;
	}
	
	void setCurrentPossibleListSizeCountForAllAgentsActionInstances()
	{
		currNumOfPossPreconditions  = countCurrNumPropsInXListForAllActionInstances(POSSPRECONDITIONSLIST);
		currNumOfPossAddEffects	   = countCurrNumPropsInXListForAllActionInstances(POSSADDEFFECTSLIST);
		currNumOfPossDeleteEffects  = countCurrNumPropsInXListForAllActionInstances(POSSDELETEEFFECTSLIST);

		totalCurrNumPossiblePresAddsDeletes = currNumOfPossPreconditions + currNumOfPossAddEffects + currNumOfPossDeleteEffects;
	}
	
	void startStopwatch(){startTime = System.currentTimeMillis();}
	
	void stopStopwatch(){finishTime = System.currentTimeMillis();}
	
	private Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}
	
	public static void printIncompleteVersionOfActionInstance(IncompleteActionInstance a)
	{
			System.out.println("  Name     : " + a.getName());					//String
			System.out.println("  Index    : " + a.getIndex());					//int
			System.out.println("  Pres     : " + a.getPreconditions());			//Set<Proposition>
			System.out.println("  Poss Pres: " + a.getPossiblePreconditions());	//Set<Proposition>
			if (a.getPossiblePreconditions() == null) System.out.println("  Poss Pres is in fact null");				
			System.out.println("  Adds     : " + a.getAddEffects());			//Set<Proposition>
			System.out.println("  Poss Adds: " + a.getPossibleAddEffects());	//Set<Proposition>
			if(a.getPossibleAddEffects() == null) System.out.println("  Poss Adds is in fact null");
			System.out.println("  Deletes  : " + a.getDeleteEffects());			//Set<Proposition>
			System.out.println("  Poss Dels: " + a.getPossibleDeleteEffects());	//Set<Proposition>
			if(a.getPossibleDeleteEffects() == null) System.out.println("  Poss Dels is in fact null");
			//a.getDefinition() -> an ActionDef object - original from Domain before transformation into ActionInstance - unchanges
			//a.equals(IncompleteActionInstance obj)
	}
	
	void printDeepResults()
	{
		System.out.println("BEFORE LEARNING/SOLVING...");
		System.out.println(" Total # of agent actions: " + actionInstances.size());
		System.out.println(" Total initial # of known pre's, add & delete effects: " + totalOriginalNumKnownPresAddsDeletes);
		System.out.println("	Total initial # of known preconditions : " 			+ originalNumOfKnownPreconditions);
		System.out.println("	Total initial # of known add effects   : " 			+ originalNumOfKnownAddEffects);
		System.out.println("	Total initial # of known delete effects: " 			+ originalNumOfKnownDeleteEffects);
		System.out.println(" Total initial # of possible pre's, add & delete effects: " + totalOriginalNumPossiblePresAddsDeletes);
		System.out.println("	Total initial # of possible preconditions : " 		+ originalNumOfPossPreconditions);
		System.out.println("	Total initial # of possible add effects   : " 		+ originalNumOfPossAddEffects);
		System.out.println("	Total initial # of possible delete effects: " 		+ originalNumOfPossDeleteEffects);
		System.out.println();
		
		//The placement of the counters for this stuff should be reviewed, but they're good.
		//Do we also want to know the number of times the QA/Exploration types definitively succeeded, and when there was a no decision?
		System.out.println("AFTER LEARNING/SOLVING...");
		System.out.println(" # of steps/actions taken in finding solution (not a hard fail): " + numSuccessfulActions);
		System.out.println(" Time to solution (secs): " + getTimeToSolve());
		System.out.println("  # of times the exploration learner was called: " + numTimesExplorationLearnerCalled);
		System.out.println("  # of times the QA learner was called         : " + numTimesQALearnerCalled);
		System.out.println("    # of times a failed action occurred          : " + numFailedActions);
		System.out.println("        # of times the QA learner failed         : 0 (does not take actions.)" );
		System.out.println("        # of times the exploration learner failed: " + numFailedActionsByExplorationLearner);
		System.out.println("    # of times a no state change action occurred : " +  numNoStateChangeActionsWithoutFailure);
		System.out.println();
		
		setCurrentListSizeCountForAllAgentsActionInstances();
		System.out.println(" Total end # of known pre's, add & delete effects: " + totalCurrNumKnownPresAddsDeletes);
		System.out.println("	Total end # of known preconditions : " 			+ currNumOfKnownPreconditions);
		System.out.println("	Total end # of known add effects   : " 			+ currNumOfKnownAddEffects);
		System.out.println("	Total end # of known delete effects: " 			+ currNumOfKnownDeleteEffects);
		System.out.println(" Total end # of possible pre's, add & delete effects: " + totalCurrNumPossiblePresAddsDeletes);
		System.out.println("	Total remaining # of possible preconditions : " + currNumOfPossPreconditions);
		System.out.println("	Total remaining # of possible add effects   : " + currNumOfPossAddEffects);
		System.out.println("	Total remaining # of possible delete effects: " + currNumOfPossDeleteEffects);
		System.out.println();
				
		Integer totalNumPossPresLearnedByExploration = numPossPresLearnedToKnownByExploration + 
					numPossPresLearnedToNotExistByExploration;
		Integer totalNumPossAddsLearnedByExploration = numPossAddEffectsLearnedToKnownByExploration + 
					numPossAddEffectsLearnedToNotExistByExploration;
		Integer totalNumPossDeletesLearnedByExploration = numPossDeleteEffectsLearnedToKnownByExploration + 
					numPossDeleteEffectsLearnedToNotExistByExploration;
		Integer totalNumPossPresAddsDeletesLearnedByExploration = totalNumPossPresLearnedByExploration + 
						totalNumPossAddsLearnedByExploration + totalNumPossDeletesLearnedByExploration;
		
		Integer totalNumPossPresLearnedByQA = numPossPresLearnedToKnownByQA + numPossPresLearnedToNotExistByQA;
		Integer totalNumPossAddsLearnedByQA = numPossAddEffectsLearnedToKnownByQA + numPossAddEffectsLearnedToNotExistByQA;
		Integer totalNumPossDeletesLearnedByQA = numPossDeleteEffectsLearnedToKnownByQA + numPossDeleteEffectsLearnedToNotExistByQA;
		Integer totalNumPossPresAddsDeletesLearnedByQA = totalNumPossPresLearnedByQA + 
						totalNumPossAddsLearnedByQA + totalNumPossDeletesLearnedByQA;
		
		Integer totalNumPossPresAddsDeletesLearned = totalNumPossPresAddsDeletesLearnedByExploration + totalNumPossPresAddsDeletesLearnedByQA;
		Integer totalNumPossPresLearned = totalNumPossPresLearnedByExploration + totalNumPossPresLearnedByQA;
		Integer totalNumPossAddsLearned = totalNumPossAddsLearnedByExploration + totalNumPossAddsLearnedByQA;
		Integer totalNumPossDeletesLearned = totalNumPossDeletesLearnedByExploration + totalNumPossDeletesLearnedByQA;
			
		System.out.println("DETAILS about Possible Preconditions, Adds, Deletes overall and by learning method...");
		System.out.println(" Total # of possibles pre's, add & delete effects learned: " + totalNumPossPresAddsDeletesLearned);
		System.out.println("        Total # possible preconditions learned : " + totalNumPossPresLearned);
		System.out.println("        Total # possible add effects learned   : " + totalNumPossAddsLearned);
		System.out.println("        Total # possible delete effects learned: " + totalNumPossDeletesLearned);
		System.out.println("    Total # of possibles pre's, add & delete effects learned by exploration: " + totalNumPossPresAddsDeletesLearnedByExploration);
		System.out.println("        Total # possible preconditions learned by exploration: " + totalNumPossPresLearnedByExploration);
		System.out.println("            To exist (became known pre's)       : " + numPossPresLearnedToKnownByExploration);
		System.out.println("            To not exist (were not actual pre's): " + numPossPresLearnedToNotExistByExploration);
		System.out.println("        Total # possible add effects learned by exploration: " + totalNumPossAddsLearnedByExploration);
		System.out.println("            To exist (became known adds)       : " + numPossAddEffectsLearnedToKnownByExploration);
		System.out.println("            To not exist (were not actual adds): " + numPossAddEffectsLearnedToNotExistByExploration);
		System.out.println("        Total # possible delete effects learned by exploration: " + totalNumPossDeletesLearnedByExploration);
		System.out.println("            To exist (became known deletes)       : " + numPossDeleteEffectsLearnedToKnownByExploration);
		System.out.println("            To not exist (were not actual deletes): " + numPossDeleteEffectsLearnedToNotExistByExploration);
		System.out.println("    Total # of possibles pre's, add & delete effects learned by QA: " + totalNumPossPresAddsDeletesLearnedByQA);
		System.out.println("        Total # possible preconditions learned by QA: " + totalNumPossPresLearnedByQA);
		System.out.println("            To exist (became known pre's)       : " + numPossPresLearnedToKnownByQA);
		System.out.println("            To not exist (were not actual pre's): " + numPossPresLearnedToNotExistByQA);
		System.out.println("        Total # possible add effects learned by QA: " + totalNumPossAddsLearnedByQA);
		System.out.println("            To exist (became known adds)       : " + numPossAddEffectsLearnedToKnownByQA);
		System.out.println("            To not exist (were not actual adds): " + numPossAddEffectsLearnedToNotExistByQA);
		System.out.println("        Total # possible delete effects learned by QA: " + totalNumPossDeletesLearnedByQA);
		System.out.println("            To exist (became known deletes)       : " + numPossDeleteEffectsLearnedToKnownByQA);
		System.out.println("            To not exist (were not actual deletes): " + numPossDeleteEffectsLearnedToNotExistByQA);
	}
	
	class QA_ActionAndPropChoice
	{
		ActionInstance action;
		Integer listOriginOfProp;
		Proposition propToLearnAbout;
		
		QA_ActionAndPropChoice(ActionInstance a, Integer l, Proposition p)
		{
			action = a;
			listOriginOfProp = l;
			propToLearnAbout = p;
		}
	}
	
}
