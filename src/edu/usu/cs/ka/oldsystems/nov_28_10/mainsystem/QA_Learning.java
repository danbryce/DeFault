package edu.usu.cs.ka.oldsystems.nov_28_10.mainsystem;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Set;

import edu.usu.cs.ka.oldsystems.nov_28_10.utilities.*;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class QA_Learning 
{
	Hashtable<Integer, IncompleteActionInstance> actions;
	
	//Lists that exist for each actionInstance
	public static final int KNOWNPRECONDITIONSLIST 	= 1;
	public static final int KNOWNADDEFFECTSLIST 	= 2;
	public static final int KNOWNDELETEEFFECTSLIST 	= 3;
	public static final int POSSPRECONDITIONSLIST  	= 4;
	public static final int POSSADDEFFECTSLIST     	= 5;
	public static final int POSSDELETEEFFECTSLIST  	= 6;
	
	Integer numTimesQALearnerCalled;
	
	Integer numFailedActionsByQALearner;
	
	Integer numPossPresLearnedToKnownByQA;
	Integer numPossAddEffectsLearnedToKnownByQA;
	Integer numPossDeleteEffectsLearnedToKnownByQA;
	
	Integer numPossPresLearnedToNotExistByQA;
	Integer numPossAddEffectsLearnedToNotExistByQA;
	Integer numPossDeleteEffectsLearnedToNotExistByQA;
	
	QA_Learning(Hashtable<Integer, IncompleteActionInstance> a)
	{
		actions = a;
		
		numTimesQALearnerCalled = 0;
		
		numFailedActionsByQALearner = 0;
		
		numPossPresLearnedToKnownByQA = 0;
		numPossAddEffectsLearnedToKnownByQA = 0;
		numPossDeleteEffectsLearnedToKnownByQA = 0;
		
		numPossPresLearnedToNotExistByQA = 0;
		numPossAddEffectsLearnedToNotExistByQA = 0;
		numPossDeleteEffectsLearnedToNotExistByQA = 0;	
	}
	
	//This version of choosing an action for QA is random based. It selects an action
	// from among the group of actionsCV with possible. 
	// If no actionsCV have possibles, then QA will not have been called.
	public QA_ActionAndPropChoice chooseIncompleteActionAndProp_QA()
	{
		System.out.println("\n----------------------------------------------------------------");
		System.out.println("QA - AGENT IS CHOOSING AN INCOMPLETE ACTION FOR QA");
		
		//Get all incomplete actionsCV
		System.out.println("\nThese actionsCV are incomplete (contain possibles): ");
		LinkedList<IncompleteActionInstance> incompleteActionsWithPossibles = new LinkedList<IncompleteActionInstance>();
		for(IncompleteActionInstance a : actions.values())
		{			
			if(!Actions_Utility.isIncompleteActionComplete(a))
			{
				System.out.println(" " + a.getName());
				incompleteActionsWithPossibles.add(a);
			}
		}
		
		//Check for no actionsCV with possibles - this should never happen by
		// the design of the the method selectTypeOfLearning()
		if(incompleteActionsWithPossibles.size() == 0)
		{
			System.out.println("ERROR: No actionsCV found with possibles for QA.");
			System.out.println(" THIS SHOULD NEVER HAPPEN!");
			return null;
		}
		
		Integer choice = Agent.random.nextInt(incompleteActionsWithPossibles.size()); //the choice of which action with possibles is made
		IncompleteActionInstance a = incompleteActionsWithPossibles.get(choice);
		
		System.out.println("\nACTION CHOSEN: ");
		Actions_Utility.printIncompleteVersionOfActionInstance(a);
		
		//restrict the possible prop choice to learn about to the possible pre/add/delete lists that actually have possibles
		LinkedList<Integer> ListsWithPossiblesForChosenAction = new LinkedList<Integer>();
		if(a.getPossiblePreconditions().size() != 0 /*|| a.getPossiblePreconditions() != null*/)
			ListsWithPossiblesForChosenAction.add(POSSPRECONDITIONSLIST);
		if(a.getPossibleAddEffects().size() != 0 /*|| a.getPossibleAddEffects() != null*/)
			ListsWithPossiblesForChosenAction.add(POSSADDEFFECTSLIST);
		if(a.getPossibleDeleteEffects().size() != 0 /*|| a.getPossibleDeleteEffects() != null*/)
			ListsWithPossiblesForChosenAction.add(POSSDELETEEFFECTSLIST);
		
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
		
		QA_ActionAndPropChoice qa_actionChoiceAndProp =  new QA_ActionAndPropChoice(a, listNumber, propToCheck);
		
		System.out.println("----------------------------------------------------------------");
		
		numTimesQALearnerCalled++;
		
		return qa_actionChoiceAndProp;
	}
	
	public void incorporateKnowledgeGained_QA(boolean result, QA_ActionAndPropChoice qa_actionChoiceAndProp)
	{
		System.out.println("----------------------------------------------------------------");
		System.out.println("QA - AGENT IS LEARNING ABOUT ACTION SELECTED (" + qa_actionChoiceAndProp.action.getName() + ")...");
		System.out.println("REGARDING THIS POSSIBLE PRE/ADD/DELETE PROPOSITION: " + qa_actionChoiceAndProp.propToLearnAbout);
		
		IncompleteActionInstance newVersionOfAction = qa_actionChoiceAndProp.action;

		System.out.print("\nBelongs to the agent's possible ");
		switch(qa_actionChoiceAndProp.listOriginOfProp)
		{
			case(POSSPRECONDITIONSLIST):
				System.out.println("pre's list.");
				if(result)
				{
					newVersionOfAction.getPreconditions().add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossPresLearnedToKnownByQA++;
				}
				else
					numPossPresLearnedToNotExistByQA++;
				newVersionOfAction.getPossiblePreconditions().remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
			case(POSSADDEFFECTSLIST):
				System.out.println("adds list.");
				if(result)
				{
					newVersionOfAction.getAddEffects().add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossAddEffectsLearnedToKnownByQA++;
				}
				else
					numPossAddEffectsLearnedToNotExistByQA++;
				newVersionOfAction.getPossibleAddEffects().remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
			case(POSSDELETEEFFECTSLIST):
				System.out.println("deletes list.");
				if(result)
				{
					newVersionOfAction.getDeleteEffects().add(qa_actionChoiceAndProp.propToLearnAbout);
					numPossDeleteEffectsLearnedToKnownByQA++;
				}
				else
					numPossDeleteEffectsLearnedToNotExistByQA++;
				newVersionOfAction.getPossibleDeleteEffects().remove(qa_actionChoiceAndProp.propToLearnAbout);
				break;
		}
		
		System.out.print("Was it found in the sim's actual list?: ");
		if(result) System.out.println("YES");
		else System.out.println("NO");
	
		System.out.println("\nNEW VERSION OF INCOMPLETE ACTION (AFTER LEARNING BY QA):");
		Actions_Utility.printIncompleteVersionOfActionInstance(newVersionOfAction);
		actions.put(newVersionOfAction.getIndex(), newVersionOfAction);		
		System.out.println("----------------------------------------------------------------");
	}
	
	public void replaceIncompleteActionInstanceWithNewVersion(IncompleteActionInstance a)
	{
		actions.put(a.getIndex(), a);
	}
		
	public class QA_ActionAndPropChoice
	{
		IncompleteActionInstance action;
		Integer listOriginOfProp;
		Proposition propToLearnAbout;
			
		QA_ActionAndPropChoice(IncompleteActionInstance a, Integer l, Proposition p)
		{
			action = a;
			listOriginOfProp = l;
			propToLearnAbout = p;
		}
	}
}
