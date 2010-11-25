package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.*;

public class DomainExpert 
{
	//Domain and Problem stuff
	String domainFileString;
	String problemFileString;
	int seed;
	
    Domain domain;
    Problem problem;
	
	private static Random random;//Expert takes a sim seed to init the rand generator
	double probability;//Expert chooses whether or not a poss feature is to become an actual feature at this # [0-1]
	
	List<ActionInstance> actionsCV;//complete version
	public Hashtable<Integer, IncompleteActionInstance> actionsCV_HT;//hashtable
		
	public DomainExpert(String dFileString, String pFileString, int simSeed)
	{	
		domainFileString = dFileString;
		problemFileString = pFileString;
		seed = simSeed;
		
		setDomainAndProblem();
		
		random = new Random(seed);
		probability = .5;
		
		createActions_CompleteVersion();//makes CV of problem's actions, set problem's actionList to this CV.	
		loadActionsHT();
	}
	
	public void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFileString, problemFileString);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	/**
	 * Due to the planner removing add effects from actions for parcprinter and pathways.
	 * The Planner.getPlan method preserves the actionsList.
	 * The planner's problem is set to the Expert's.  
	 * When the planner is used to test whether a domain/problem is solvable in the sim,
	 *  the planner resets the problem's actions back to their original form.
	 * Then this method must be called to restore the expert's actions.
	 */
	public void restoreActionsToStateBeforePlannerCall()
	{
		actionsCV = problem.getActions();
		loadActionsHT();
	}
	
	private void loadActionsHT()
	{
		actionsCV_HT = new Hashtable<Integer, IncompleteActionInstance>();
		for(ActionInstance act: actionsCV)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			actionsCV_HT.put(a.getIndex(), a);
		}
	}
	
	public Problem getProblem() { return problem;}
	public IncompleteActionInstance getActionCVByID(Integer id){ return actionsCV_HT.get(id); }
	public List<ActionInstance> getActions(){ return actionsCV; }
	
	public int getCountOfFeaturesInActionsCV()
	{
		int count = 0;
		for(ActionInstance act: actionsCV)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;
			count += a.getPreconditions().size();
			count += a.getAddEffects().size();
			count += a.getDeleteEffects().size();	
		}
		return count;
	}	
		
	/**
	 * DE here gives accurate state update using its CV of action chosen by agent.
	 * Agent then must learn about the action it selected - it does not know whether the action succeeded or failed.
	 * Note that it is possible an action may have succeeded but will not change the state.
	 * 
	 * @param currentState
	 * @param incompleteActionChosen
	 * @return Set<Proposition> newState
	 */
	public Set<Proposition> applyAction(Set<Proposition> currentState, IncompleteActionInstance incompleteActionChosen)
	{		
		Set<Proposition> newState = new HashSet<Proposition>(currentState);
		
		IncompleteActionInstance a = actionsCV_HT.get(incompleteActionChosen.getIndex());
					
		if(currentState.containsAll(a.getPreconditions()))
		{
			newState.removeAll(a.getDeleteEffects());
			newState.addAll(a.getAddEffects());
		}

		return newState;
	}
	
	/*
	 *If Agent is performing QA Learning, then the DE here gives feedback about the Q asked of it - 
	 * is the chosen possible feature of a chosen action for its chosen list a real feature or not?
	 * The agent has told the DE which possibles list the prop came from.
	 * The DE looks up the prop in its appropriate knowns list (# of possibles list - 3)
	 *  
	 *  QA_ActionAndPropChoice class data members:
	 * 	 IncompleteActionInstance action;
	 *   Integer listOriginOfProp;
	 *   Proposition propToLearnAbout;
	*/
//	public boolean giveFeedbackForQuestion (QA_Learning.QA_ActionAndPropChoice actionWithQ)
//	{
//		IncompleteActionInstance actCV = actionsCV_HT.get(actionWithQ.action.getIndex());
//			
//		//An incomplete action has 6 lists. See Actions_Utility class...  
//		int listToCheck = actionWithQ.listOriginOfProp - 3; 
//		
//		boolean isFound = false;
//		switch(listToCheck)
//		{
//			case (Actions_Utility.KNOWNPRECONDITIONSLIST): //1
//				if(actCV.getPreconditions().contains(actionWithQ.propToLearnAbout)) isFound = true;
//				break;
//			case (Actions_Utility.KNOWNADDEFFECTSLIST): //2
//				if(actCV.getAddEffects().contains(actionWithQ.propToLearnAbout)) isFound = true;
//				break;
//			case (Actions_Utility.KNOWNDELETEEFFECTSLIST): //3
//				if(actCV.getDeleteEffects().contains(actionWithQ.propToLearnAbout)) isFound = true;
//				break;
//			default:
//				System.out.println("ERROR: Sim did not find right list. THIS SHOULD NEVER HAPPEN!");
//		}
//		
//		return isFound;
//	}
	
	/**
	 * Uses the probability and simSeed found in the DE constructor to create a complete version (CV)
	 *  of the agent's/problem's incomplete actions (AgentVersion - they contain possible features).
	 * If the rand gen yields a double higher than the probability, then add the
	 *  possible feature as a real feature, else discard.
	 */
	private void createActions_CompleteVersion()
	{
		actionsCV = new ArrayList<ActionInstance>();
		
		HashSet<Proposition> newPresSet;
		HashSet<Proposition> newAddsSet;
		HashSet<Proposition> newDelsSet;
		HashSet<Proposition> newEmptySet;
	
		for(ActionInstance a : problem.getActions())
		{
			IncompleteActionInstance ia = (IncompleteActionInstance) a;
			
			newPresSet 	= new HashSet<Proposition>(ia.getPreconditions());
			newAddsSet 	= new HashSet<Proposition>(ia.getAddEffects());
			newDelsSet 	= new HashSet<Proposition>(ia.getDeleteEffects());
			newEmptySet = new HashSet<Proposition>();
			
			//Preconditions
			for(Proposition p : ia.getPossiblePreconditions())
			{			
				Double nextDouble = random.nextDouble();
				if(nextDouble > probability) { newPresSet.add(p); }
			}
			
			//Adds
			for(Proposition p : ia.getPossibleAddEffects())
			{
				Double nextDouble = random.nextDouble();
				if(nextDouble > probability) newAddsSet.add(p);
			}
			
			//Deletes
			for(Proposition p : ia.getPossibleDeleteEffects())
			{			
				Double nextDouble = random.nextDouble();
				if(nextDouble > probability) newDelsSet.add(p);
			}
			
			//Create a new actionInstance with above changes and stick it into sim's actionsCV list
			//String name, Set<Proposition> pres, Set<Proposition> adds, Set<Proposition> dels,
			//Set<Proposition> possPres, Set<Proposition> possAdds, Set<Proposition> possDels, int index)
			IncompleteActionInstance newIA = new IncompleteActionInstance(ia.getName(), newPresSet,
					newAddsSet, newDelsSet, newEmptySet, newEmptySet, newEmptySet, ia.getIndex());
			
			actionsCV.add(newIA);
		}
		
		problem.setActionInstances(actionsCV); 
	}
}
