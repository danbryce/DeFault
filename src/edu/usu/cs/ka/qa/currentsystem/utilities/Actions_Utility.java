package edu.usu.cs.ka.qa.currentsystem.utilities;

import java.util.*;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
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
		System.out.println("   ActionRisks: " + a.getActionRisks());		//int
		System.out.println("   ArgMapping : " + a.getArgMapping());			//Map<FormalArgument, PDDLObject>
		System.out.println("   Cost       : " + a.getCost());				//double
		System.out.println("   Definition : " + a.getDefinition());			//ActionDef
		System.out.println();
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
	}
	
	public static void printActionInListOfActions(List<ActionInstance> actions, String name)
	{
		for(ActionInstance act : actions)
			if(act.getName().equals(name))
				printIncompleteVersionOfActionInstance(act);
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
					System.out.println("Error in getCountOfPropsInXListForAllActionInstances...");
			}
		}
		return count;
	}
	
	public static int getCountOfIncompleteFeaturesInActionsList(List<ActionInstance> actions)
	{
		int total = 0;
		
		total += getCountOfPropsInXListForAllActionInstances(POSSPRECONDITIONSLIST, actions);
		total += getCountOfPropsInXListForAllActionInstances(POSSADDEFFECTSLIST, actions);
		total += getCountOfPropsInXListForAllActionInstances(POSSDELETEEFFECTSLIST, actions);
		
		return total;
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
	
	public static void showActionsCountPADAndPossPADs(List<ActionInstance> actions)
	{
		int numPres = 0;
		int numAdds = 0;
		int numDels = 0;
		int numPossPres = 0;
		int numPossAdds = 0;
		int numPossDels = 0;
		
		for(ActionInstance act: actions)
		{
			IncompleteActionInstance temp = (IncompleteActionInstance) act;
			
			numPres += temp.getPreconditions().size();
			numAdds += temp.getAddEffects().size();
			numDels += temp.getDeleteEffects().size();
			numPossPres += temp.getPossiblePreconditions().size();
			numPossAdds += temp.getPossibleAddEffects().size();
			numPossDels += temp.getPossibleDeleteEffects().size();
		}
		
		System.out.println("pres: " + numPres +
				           "\t adds: " + numAdds +
				           "\t dels: " + numDels +
				           "\t possPres: " + numPossPres +
				           "\t possAdds: " + numPossAdds +
				           "\t possDels: " + numPossDels);
	}
	
	public static List<ActionInstance> getListFrom_Int_IAI_HT(Hashtable<Integer, IncompleteActionInstance> ht)
	{
		List<ActionInstance> list = new ArrayList<ActionInstance>();
		for(IncompleteActionInstance i: ht.values())
			list.add((ActionInstance) i );
		
		return list;
	}
	
	public static List<ActionInstance> getListFrom_String_IAI_HT(Hashtable<String, IncompleteActionInstance> ht)
	{
		List<ActionInstance> list = new ArrayList<ActionInstance>();
		for(IncompleteActionInstance i: ht.values())
			list.add((ActionInstance) i );
		
		return list;
	}
	
	//Be selective about the data members
	public static List<ActionInstance> makeActionsListDeepCopy(List<ActionInstance> list)
	{
		if(list == null)
			return null;
	
		ArrayList<ActionInstance> newList = new ArrayList<ActionInstance>();
		
		for(ActionInstance action : list)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) action;
			IncompleteActionInstance  newVersion = makeActionDeepCopy(a);
			newList.add((ActionInstance) newVersion);		
		}
	
		return newList;
	}
	
	private static IncompleteActionInstance makeActionDeepCopy(IncompleteActionInstance a)
	{		
		HashSet<Proposition> pres = new HashSet<Proposition>(a.getPreconditions());
		HashSet<Proposition> adds = new HashSet<Proposition>(a.getAddEffects());
		HashSet<Proposition> dels = new HashSet<Proposition>(a.getDeleteEffects());
		HashSet<Proposition> possPres = new HashSet<Proposition>(a.getPossiblePreconditions());
		HashSet<Proposition> possAdds = new HashSet<Proposition>(a.getPossibleAddEffects());
		HashSet<Proposition> possDels = new HashSet<Proposition>(a.getPossibleDeleteEffects());

		IncompleteActionInstance newAction = new IncompleteActionInstance(
				a.getName(), pres, adds, dels, possPres, possAdds, possDels, a.getIndex());

		return newAction;
	}
	
	public static ActionInstance getActionInListOfActions(String name, List<ActionInstance> actions)
	{
		for(ActionInstance act : actions)
			if(act.getName().equals(name))
				return act;
		
		return null;
	}
	
	public static boolean comparePlansShallowEquality(List<ActionInstance> oldPlan, List<ActionInstance> newPlan)
	{
		if(oldPlan.size() != newPlan.size())
			return false;
		
		for(int i = 0; i < oldPlan.size(); i++)
		{
			if(!oldPlan.get(i).getName().equals(newPlan.get(i).getName()))
				return false;
		}
		
		return true;
	}
}
