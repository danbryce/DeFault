package edu.usu.cs.ka.oldsystems.oct_28_10.mainsystem;

import java.util.*;

import edu.usu.cs.ka.oldsystems.oct_28_10.utilities.*;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.pddl.domain.incomplete.*;

/*Assumption: no set of propositions in an IncompleteActionInstance class instance is ever null.
 * Even "goal" is an IncompleteActionInstance object for incomplete domains.
 * Go to IAI class and uncomment constructor println statements if you like...
 * 	
 *Note: the ActionList being passed around is a shallow copy of Problem's version:
 * When an action is updated in the Agent HT, it is updated in the Agent List.
 * When an action is updated in the Agent List, it is updated in the Agent HT.
 * When an action is updated in the Agent class, it also updates the Problem's version of the action.
 * It does not change the DomainExpert's version of the action.
*/
public class Agent 
{	
	String domainFile;
	String problemFile;
	
	Domain domain;
	Problem problem;
	
	static Random random;//for random action/qa selection
	private Integer range;//for random action/qa selection 
	
	List<ActionInstance> actions;
	Hashtable<Integer, IncompleteActionInstance> actionsHT; //hashtable for speedier access - a shallow copy of actions List
		
	//Types of learning the agent can perform
	public static enum LearningType {QA, EXPLORATION};
	
	//Data members used in keeping track of results data
	Integer originalNumOfKnownPreconditions;
	Integer originalNumOfKnownAddEffects;
	Integer originalNumOfKnownDeleteEffects;
	Integer originalNumOfPossPreconditions;
	Integer originalNumOfPossAddEffects;
	Integer originalNumOfPossDeleteEffects;
	
	Integer totalOriginalIncompleteActions;
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
			
	Long startTime;
	Long finishTime;
	
	public QA_Learning qa_side;
	public Passive_Learning explore_side;
	
	//Constructor
	public Agent(Domain d, Problem p)
	{	
		actions = p.getActions();
		
		//These will be updated/change as the agent learns
		actionsHT = new Hashtable<Integer, IncompleteActionInstance>();
		for(ActionInstance act : actions)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;	
			actionsHT.put(a.getIndex(), a);
		}
		
		qa_side = new QA_Learning(actionsHT);
		explore_side = new Passive_Learning(actionsHT);
		
		random = new Random(0);
						
		//For results, checks actions to count how many have possibles
		Actions_Utility.getCountOfActionsThatAreIncomplete(actions);
		
		//For results, collects the number of known/possible pre's, adds, deletes
		setInitialListSizeCountForAllAgentsActionInstances();
	}//end constructor
	
	//Constructor
	public Agent(String dFile, String pFile)
	{	
		domainFile = dFile;
		problemFile = pFile;
		setDomainAndProblem();
		
		actions = problem.getActions();
		
		//These will be updated/change as the agent learns
		actionsHT = new Hashtable<Integer, IncompleteActionInstance>();
		for(ActionInstance act : actions)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;	
			actionsHT.put(a.getIndex(), a);
		}
		
		qa_side = new QA_Learning(actionsHT);
		explore_side = new Passive_Learning(actionsHT);
		
		random = new Random(0);
						
		//For results, checks actions to count how many have possibles
		Actions_Utility.getCountOfActionsThatAreIncomplete(actions);
		
		//For results, collects the number of known/possible pre's, adds, deletes
		setInitialListSizeCountForAllAgentsActionInstances();
	}//end constructor
	
	public void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	public Integer getTotalOriginalIncompleteActions() { return totalOriginalIncompleteActions; }
	public Integer getTotalOriginalNumKnownPresAddsDeletes() { return totalOriginalNumKnownPresAddsDeletes; }
	public Integer getTotalOriginalNumPossiblePresAddsDeletes() { return totalOriginalNumPossiblePresAddsDeletes; }
	public Integer getTotalInitialNumberOfFeatures(){ return totalOriginalNumKnownPresAddsDeletes + totalOriginalNumPossiblePresAddsDeletes; }
	
	public List<ActionInstance> getOriginalIncompleteActionInstancesList(){	return actions; }
			
	//Init these before the agent begins learning
	void setInitialListSizeCountForAllAgentsActionInstances()
	{
		originalNumOfKnownPreconditions = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNPRECONDITIONSLIST, actions);
		originalNumOfKnownAddEffects    = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNADDEFFECTSLIST, actions);
		originalNumOfKnownDeleteEffects = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNDELETEEFFECTSLIST, actions);
		
		originalNumOfPossPreconditions 	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSPRECONDITIONSLIST, actions);
		originalNumOfPossAddEffects		= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSADDEFFECTSLIST, actions);
		originalNumOfPossDeleteEffects	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSDELETEEFFECTSLIST, actions);
		
		totalOriginalNumKnownPresAddsDeletes    = originalNumOfKnownPreconditions + originalNumOfKnownAddEffects + originalNumOfKnownDeleteEffects;
		totalOriginalNumPossiblePresAddsDeletes = originalNumOfPossPreconditions + originalNumOfPossAddEffects + originalNumOfPossDeleteEffects;
	}
	
	void setCurrentListSizeCountForAllAgentsActionInstances()
	{
		List<ActionInstance> temp = Actions_Utility.getIncompleteActionInstancesAsActionInstances(actionsHT);
		
		currNumOfKnownPreconditions = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNPRECONDITIONSLIST, temp);
		currNumOfKnownAddEffects    = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNADDEFFECTSLIST, temp);
		currNumOfKnownDeleteEffects = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNDELETEEFFECTSLIST, temp);
		
		currNumOfPossPreconditions 	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSPRECONDITIONSLIST, temp);
		currNumOfPossAddEffects 	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSADDEFFECTSLIST, temp);
		currNumOfPossDeleteEffects  = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSDELETEEFFECTSLIST, temp);

		totalCurrNumKnownPresAddsDeletes    = currNumOfKnownPreconditions + currNumOfKnownAddEffects + currNumOfKnownDeleteEffects;
		totalCurrNumPossiblePresAddsDeletes = currNumOfPossPreconditions + currNumOfPossAddEffects + currNumOfPossDeleteEffects;
	}
	
	public int getTotalNumberOfActions(){ return explore_side.numSuccessfulActions + explore_side.numFailedActions; }
		
	public void startStopwatch(){ startTime = System.currentTimeMillis(); }
	
	public void stopStopwatch(){ finishTime = System.currentTimeMillis(); }
	
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}
	
	//Current way to randomly choose whether to ask a question vs. learn by exploring
	//is to add the # of agents actions and total # of possibles, get a random int in that range.
	//If the random int is in the range of number of actions, then learn by exploring, else
	//ask a question == If rand number is < # of actions, then Exploration, else QA.
	public LearningType selectTypeOfLearning_randSwitch()
	{		
		//Range for doing random selection of QA vs. exploration is based on the current # of possibles + # of actions.
		setCurrentListSizeCountForAllAgentsActionInstances();
		range = actionsHT.size() + totalCurrNumPossiblePresAddsDeletes;
		Integer rand = random.nextInt(range);
		
		LearningType type;
		if(rand < actionsHT.size()) 
			type = LearningType.EXPLORATION;
		else 
			type = LearningType.QA;

		return type;
	}
		
	public void printDeepResults()
	{
		System.out.println("BEFORE LEARNING/SOLVING...");
		System.out.println(" Total # of agent actions: " + actionsHT.size());
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
		System.out.println(" # of steps/actions taken in finding solution (not a hard fail): " + explore_side.numSuccessfulActions);
		System.out.println(" Time to solution (secs): " + getTimeToSolve());
		System.out.println("  # of times the exploration learner was called: " + explore_side.numTimesPassiveLearnerCalled);
		System.out.println("  # of times the QA learner was called         : " + qa_side.numTimesQALearnerCalled);
		System.out.println("    # of times a failed action occurred          : " + explore_side.numFailedActions);
		System.out.println("        # of times the QA learner failed         : 0 (does not take actions.)" );
		System.out.println("        # of times the exploration learner failed: " + explore_side.numFailedActionsByPassiveLearner);
		System.out.println("    # of times a no state change action occurred : " +  explore_side.numNoStateChangeActionsWithoutFailure);
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
				
		Integer totalNumPossPresLearnedByExploration = explore_side.numPossPresLearnedToKnownByPassiveLearning + 
		explore_side.numPossPresLearnedToNotExistByPassiveLearning;
		Integer totalNumPossAddsLearnedByExploration = explore_side.numPossAddEffectsLearnedToKnownByPassiveLearning + 
		explore_side.numPossAddEffectsLearnedToNotExistByPassiveLearning;
		Integer totalNumPossDeletesLearnedByExploration = explore_side.numPossDeleteEffectsLearnedToKnownByPassiveLearning + 
		explore_side.numPossDeleteEffectsLearnedToNotExistByPassiveLearning;
		Integer totalNumPossPresAddsDeletesLearnedByExploration = totalNumPossPresLearnedByExploration + 
						totalNumPossAddsLearnedByExploration + totalNumPossDeletesLearnedByExploration;
		
		Integer totalNumPossPresLearnedByQA = qa_side.numPossPresLearnedToKnownByQA + qa_side.numPossPresLearnedToNotExistByQA;
		Integer totalNumPossAddsLearnedByQA = qa_side.numPossAddEffectsLearnedToKnownByQA + qa_side.numPossAddEffectsLearnedToNotExistByQA;
		Integer totalNumPossDeletesLearnedByQA = qa_side.numPossDeleteEffectsLearnedToKnownByQA + qa_side.numPossDeleteEffectsLearnedToNotExistByQA;
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
		System.out.println("            To exist (became known pre's)       : " + explore_side.numPossPresLearnedToKnownByPassiveLearning);
		System.out.println("            To not exist (were not actual pre's): " + explore_side.numPossPresLearnedToNotExistByPassiveLearning);
		System.out.println("        Total # possible add effects learned by exploration: " + totalNumPossAddsLearnedByExploration);
		System.out.println("            To exist (became known adds)       : " + explore_side.numPossAddEffectsLearnedToKnownByPassiveLearning);
		System.out.println("            To not exist (were not actual adds): " + explore_side.numPossAddEffectsLearnedToNotExistByPassiveLearning);
		System.out.println("        Total # possible delete effects learned by exploration: " + totalNumPossDeletesLearnedByExploration);
		System.out.println("            To exist (became known deletes)       : " + explore_side.numPossDeleteEffectsLearnedToKnownByPassiveLearning);
		System.out.println("            To not exist (were not actual deletes): " + explore_side.numPossDeleteEffectsLearnedToNotExistByPassiveLearning);
		System.out.println("    Total # of possibles pre's, add & delete effects learned by QA: " + totalNumPossPresAddsDeletesLearnedByQA);
		System.out.println("        Total # possible preconditions learned by QA: " + totalNumPossPresLearnedByQA);
		System.out.println("            To exist (became known pre's)       : " + qa_side.numPossPresLearnedToKnownByQA);
		System.out.println("            To not exist (were not actual pre's): " + qa_side.numPossPresLearnedToNotExistByQA);
		System.out.println("        Total # possible add effects learned by QA: " + totalNumPossAddsLearnedByQA);
		System.out.println("            To exist (became known adds)       : " + qa_side.numPossAddEffectsLearnedToKnownByQA);
		System.out.println("            To not exist (were not actual adds): " + qa_side.numPossAddEffectsLearnedToNotExistByQA);
		System.out.println("        Total # possible delete effects learned by QA: " + totalNumPossDeletesLearnedByQA);
		System.out.println("            To exist (became known deletes)       : " + qa_side.numPossDeleteEffectsLearnedToKnownByQA);
		System.out.println("            To not exist (were not actual deletes): " + qa_side.numPossDeleteEffectsLearnedToNotExistByQA);
	}
}
