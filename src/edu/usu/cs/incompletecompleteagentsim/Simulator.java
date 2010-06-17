package edu.usu.cs.incompletecompleteagentsim;

import java.util.*;


import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.pddl.goalseffects.*;
import edu.usu.cs.pddl.domain.translation.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.astar.*;
import edu.usu.cs.search.*;

public class Simulator 
{
	List<ActionInstance> actionInstances;
	
	Simulator(Domain d, Problem p)
	{
		actionInstances = null;
		try{actionInstances = PddlImporter.createActionInstances(d, p);
		}catch(Exception e){System.out.println("Agent ActionInstances grab failed.");}
		
		System.out.println("\n-----------------------------------------------------");
		System.out.println("SIMULATOR ACTIONS AVAILABLE (no possibles): ");
		printIncompleteVersionOfActionInstances();
		System.out.println("\nEND - SIMULATOR ACTIONS AVAILABLE");
		System.out.println("-----------------------------------------------------");
	}
	
	public Set<Proposition> updateState(Set<Proposition> currentState, ActionInstance agentAction)
	{
		System.out.println("\n----------------------------------------------------------------");
		System.out.println("SIM updates state based on agents action using its enhanced info");
		System.out.println(" about pres and effects. The updated state shows the changes.");
		System.out.println(" Agent will have to discover which of the possible pres/effects");
		System.out.println(" for each of his actions are real for this particular domain.");
		System.out.println(" Sim DOES NOT tell Agent that the action was a success/failure.");
		System.out.println(" (Note: an accepted action might not change state -");
		System.out.println("        consider the same action taken twice in a row or");
		System.out.println("        actions whose add effects already exist and");
		System.out.println("        whose delete effects already don't exist...\n");
		
		Set<Proposition> newState = new HashSet<Proposition>(currentState);
		
		for(ActionInstance completeAction : actionInstances)
			if(completeAction.getName().equals(agentAction.getName()))
			{
				IncompleteActionInstance a = (IncompleteActionInstance) completeAction;
				
				Agent.printIncompleteVersionOfActionInstance(a);
				
				if(currentState.containsAll(a.getPreconditions()))
				{
					newState.removeAll(a.getDeleteEffects());
					newState.addAll(a.getAddEffects());
				}
				break;
			}
		
		System.out.println("----------------------------------------------------------------\n");
		return newState;
	}
	
	public boolean giveFeedbackForQuestion (QA_Learning.QA_ActionAndPropChoice actionWithQ)
	{
		System.out.println("\n----------------------------------------------------------------");
		System.out.println("SIM gives feedback about an action selected by agent");
		System.out.println(" that contains possibles.");
		System.out.println(" This feedback will tell the agent whether or not a particular");
		System.out.println(" possible is in fact an actual precondition or add/delete effect.\n");
		
		
		IncompleteActionInstance a = null;
		for(ActionInstance completeAction : actionInstances)
			if(completeAction.getName().equals(actionWithQ.action.getName()))
			{
				System.out.println("Sim found complete version of action named: " +  actionWithQ.action.getName());		
				a = (IncompleteActionInstance) completeAction;
				Agent.printIncompleteVersionOfActionInstance(a);
				break;
			}
	
		if(a == null)
		{
			System.out.println("ERROR: Sim did not find complete version of action named: " +  actionWithQ.action.getName());
			System.out.println("THIS SHOULD NEVER HAPPEN!");
			return false;
		}
		
		//An incomplete action has 6 lists.  
		//The known pres/adds/deletes are 1-3.
		//The possible pre's/add/deletes are 4-6.
		//See Agent constants for each list.
		//The agent has told the sim which possibles list the prop came from.
		//The sim looks up the prop in its appropriate knowns list.
		int listToCheck = actionWithQ.listOriginOfProp - 3; 
		
		boolean isFound = false;
		switch(listToCheck)
		{
			case (Agent.KNOWNPRECONDITIONSLIST):
				if(a.getPreconditions().contains(actionWithQ.propToLearnAbout))
				{
					System.out.println("Sim found: " + actionWithQ.propToLearnAbout);
					System.out.println(" in the complete action version's preconditions list.");
					isFound = true;
				}
				else
				{
					System.out.println("Sim did not find: " + actionWithQ.propToLearnAbout);
					System.out.println(" in the complete action version's preconditions list.");
				}
				break;
			case (Agent.KNOWNADDEFFECTSLIST):
				if(a.getAddEffects().contains(actionWithQ.propToLearnAbout))
				{
					System.out.println("Sim found: " + actionWithQ.propToLearnAbout);
					System.out.println(" in the complete action version's add effects list.");
					isFound = true;
				}
				else
				{
					System.out.println("Sim did not find: " + actionWithQ.propToLearnAbout);
					System.out.println(" in the complete action version's add effects list.");
				}
				break;
			case (Agent.KNOWNDELETEEFFECTSLIST):
				if(a.getDeleteEffects().contains(actionWithQ.propToLearnAbout))
				{
					System.out.println("Sim found: " + actionWithQ.propToLearnAbout);
					System.out.println(" in the complete action version's delete effects list.");
					isFound = true;
				}
				else
				{
					System.out.println("Sim did not find: " + actionWithQ.propToLearnAbout);
					System.out.println(" in the complete action version's delete effects list.");
				}
				break;
			default:
				System.out.println("ERROR: Sim did not find right list.");
				System.out.println(" THIS SHOULD NEVER HAPPEN!");
		}
				
		System.out.println("----------------------------------------------------------------\n");
		
		return isFound;
	}
	
	
	public void printIncompleteVersionOfActionInstances()
	{
		for(ActionInstance action : actionInstances)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) action;
			System.out.println();
			System.out.println("  Name     : " + a.getName());					//String
			System.out.println("  Index    : " + a.getIndex());					//int
			System.out.println("  Pres     : " + a.getPreconditions());			//Set<Proposition>
			System.out.println("  Poss Pres: " + a.getPossiblePreconditions());	//Set<Proposition>
			System.out.println("  Adds     : " + a.getAddEffects());			//Set<Proposition>
			System.out.println("  Deletes  : " + a.getDeleteEffects());			//Set<Proposition>
			System.out.println("  Poss Adds: " + a.getPossibleAddEffects());	//Set<Proposition>
			System.out.println("  Poss Dels: " + a.getPossibleDeleteEffects());	//Set<Proposition>
			//a.getDefinition() -> an ActionDef object - original from Domain	//
			//a.equals(IncompleteActionInstance obj)
		}
	}

}
