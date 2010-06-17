package edu.usu.cs.incompletecompleteagentsim;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class QA_Learning 
{
	List<ActionInstance> actionInstances;
	
	//Lists that exist for each actionInstance
	public static final int KNOWNPRECONDITIONSLIST = 1;
	public static final int KNOWNADDEFFECTSLIST 	= 2;
	public static final int KNOWNDELETEEFFECTSLIST = 3;
	public static final int POSSPRECONDITIONSLIST  = 4;
	public static final int POSSADDEFFECTSLIST     = 5;
	public static final int POSSDELETEEFFECTSLIST  = 6;
	
	Integer numTimesQALearnerCalled;
	
	Integer numFailedActionsByQALearner;
	
	Integer numPossPresLearnedToKnownByQA;
	Integer numPossAddEffectsLearnedToKnownByQA;
	Integer numPossDeleteEffectsLearnedToKnownByQA;
	
	Integer numPossPresLearnedToNotExistByQA;
	Integer numPossAddEffectsLearnedToNotExistByQA;
	Integer numPossDeleteEffectsLearnedToNotExistByQA;
	
	QA_Learning(List<ActionInstance> a)
	{
		actionInstances = a;
		
		numTimesQALearnerCalled = 0;
		
		numFailedActionsByQALearner = 0;
		
		numPossPresLearnedToKnownByQA = 0;
		numPossAddEffectsLearnedToKnownByQA = 0;
		numPossDeleteEffectsLearnedToKnownByQA = 0;
		
		numPossPresLearnedToNotExistByQA = 0;
		numPossAddEffectsLearnedToNotExistByQA = 0;
		numPossDeleteEffectsLearnedToNotExistByQA = 0;	
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
			
			if(!Agent.isActionComplete(a))
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
		
		Integer choice = Agent.random.nextInt(actionsWithPossibles.size()); //the choice of which action with possibles is made
		ActionInstance act = actionsWithPossibles.get(choice);
		IncompleteActionInstance a = (IncompleteActionInstance) act;
		
		System.out.println("\nACTION CHOSEN: ");
		Agent.printIncompleteVersionOfActionInstance(a);
		
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
		Integer randListChoice = Agent.random.nextInt(ListsWithPossiblesForChosenAction.size());
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
		Integer propChosenIndex = Agent.random.nextInt(listOfPossiblesFromWhichToChooseAProp.size());
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
		
		IncompleteActionInstance newVersionOfAction = Agent.makeDeepCopyOfIncompleteActionInstance((IncompleteActionInstance) qa_actionChoiceAndProp.action);

		System.out.print("\nBelongs to the agent's possible ");
		
		switch(qa_actionChoiceAndProp.listOriginOfProp)
		{
			case(POSSPRECONDITIONSLIST):
				System.out.println("pre's list.");
				if(result)
				{
					Agent.newPreconditionsSet.add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossPresLearnedToKnownByQA++;
				}
				else
					numPossPresLearnedToNotExistByQA++;
				Agent.newPossPreconditionsSet.remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
			case(POSSADDEFFECTSLIST):
				System.out.println("adds list.");
				if(result)
				{
					Agent.newAddEffectsSet.add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossAddEffectsLearnedToKnownByQA++;
				}
				else
					numPossAddEffectsLearnedToNotExistByQA++;
				Agent.newPossAddEffectsSet.remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
			case(POSSDELETEEFFECTSLIST):
				System.out.println("deletes list.");
				if(result)
				{
					Agent.newDeleteEffectsSet.add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossDeleteEffectsLearnedToKnownByQA++;
				}
				else
					numPossDeleteEffectsLearnedToNotExistByQA++;
				Agent.newPossDeleteEffectsSet.remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
		}
		
		System.out.print("Was it found in the sim's actual list?: ");
		if(result) System.out.println("YES");
		else System.out.println("NO");
		
		Integer location = actionInstances.indexOf(qa_actionChoiceAndProp.action);
		actionInstances.set(location, newVersionOfAction);
		
		System.out.println("\nNEW VERSION OF INCOMPLETE ACTION (AFTER LEARNING BY QA):");
		Agent.printIncompleteVersionOfActionInstance((IncompleteActionInstance) actionInstances.get(location));
		System.out.println("----------------------------------------------------------------");
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
