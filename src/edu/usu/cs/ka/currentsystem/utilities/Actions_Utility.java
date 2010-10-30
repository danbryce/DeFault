package edu.usu.cs.ka.currentsystem.utilities;

import java.util.*;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.ActionInstance;

public class Actions_Utility 
{
	//Lists that exist for each actionInstance
	public static final int KNOWNPRECONDITIONSLIST 	= 1;
	public static final int KNOWNADDEFFECTSLIST 	= 2;
	public static final int KNOWNDELETEEFFECTSLIST 	= 3;
	public static final int POSSPRECONDITIONSLIST  	= 4;
	public static final int POSSADDEFFECTSLIST     	= 5;
	public static final int POSSDELETEEFFECTSLIST  	= 6;
	
	
	public static void printIncompleteActionInstance(IncompleteActionInstance a)
	{
		System.out.println();
		System.out.println("  Name     : " + a.getName());					//String
		System.out.println("  Index    : " + a.getIndex());					//int
		System.out.println("  Pres     : " + a.getPreconditions());			//Set<Proposition>
		System.out.println("  Poss Pres: " + a.getPossiblePreconditions());	//Set<Proposition>			
		System.out.println("  Adds     : " + a.getAddEffects());			//Set<Proposition>
		System.out.println("  Poss Adds: " + a.getPossibleAddEffects());	//Set<Proposition>
		System.out.println("  Deletes  : " + a.getDeleteEffects());			//Set<Proposition>
		System.out.println("  Poss Dels: " + a.getPossibleDeleteEffects());	//Set<Proposition>
		//System.out.println("   ActionRisks: " + a.getActionRisks());				//int
		//System.out.println("   ArgMapping : " + a.getArgMapping());				//Map<FormalArgument, PDDLObject>
		//System.out.println("   Cost       : " + a.getCost());				    //double
		//System.out.println("   Definition : " + a.getDefinition());				//ActionDef
		//System.out.println();
	}
	
	public static void printIncompleteVersionOfActionInstance(ActionInstance a)
	{
		IncompleteActionInstance act = (IncompleteActionInstance) a;
		printIncompleteActionInstance(act);
	}
		
	public static void printListOfActions(List<ActionInstance> actions)
	{
		for(ActionInstance act : actions)
			printIncompleteVersionOfActionInstance(act);
		
		System.out.println();
	}
	
	public static List<ActionInstance> getIncompleteActionInstancesAsActionInstances(List<IncompleteActionInstance> incompleteActionInstanceList)
	{	
		ArrayList<ActionInstance> arr = new ArrayList<ActionInstance>();
		for (IncompleteActionInstance iai : incompleteActionInstanceList)
			arr.add(iai);
		return arr;
	}
	
	public static List<ActionInstance> getIncompleteActionInstancesAsActionInstances(Hashtable<Integer, IncompleteActionInstance> incompleteActionInstanceHT)
	{	
		ArrayList<ActionInstance> arr = new ArrayList<ActionInstance>();
		for (IncompleteActionInstance iai : incompleteActionInstanceHT.values())
			arr.add(iai);
		return arr;
	}
	
	public static boolean isIncompleteActionComplete(IncompleteActionInstance a)
	{
		if(a.getPossiblePreconditions().size() == 0 && a.getPossibleAddEffects().size() == 0 && a.getPossibleDeleteEffects().size() == 0)
			return true;
		else 
			return false;	
	}
	
	//When called, this method return the # of propositions in an actions list (actions).  
	//This # changes as agents takes actions, because it is learning...
	public static int getCountOfPropsInXListForAllActionInstances(int whichList, List<ActionInstance> actions)
	{
		int count = 0;
		
		for(ActionInstance act : actions)
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
	
	public static int getCountOfActionsThatAreIncomplete(List<ActionInstance> actions)
	{
		int count = 0;
		
		for(ActionInstance act: actions)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			
			boolean isActionComplete = isIncompleteActionComplete(a);
			if(!isActionComplete)
				count++;
		}
		
		return count;
	}
	
}
