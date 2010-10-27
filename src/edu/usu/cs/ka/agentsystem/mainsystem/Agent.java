package edu.usu.cs.ka.agentsystem.mainsystem;

import java.util.*;

import edu.usu.cs.ka.agentsystem.utilities.*;

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
	
	static Random random;
	private Integer range; 
	
	List<ActionInstance> originalIncompleteActionInstanceList;
	Hashtable<Integer, IncompleteActionInstance> incompleteActionInstanceHT;
		
	//Types of learning the agent can perform
	public static enum LearningType {QA, EXPLORATION};
	
	//Data members used in keeping track of results data
	Integer originalNumOfKnownPreconditions;
	Integer originalNumOfKnownAddEffects;
	Integer originalNumOfKnownDeleteEffects;
	Integer originalNumOfPossPreconditions;
	Integer originalNumOfPossAddEffects;
	Integer originalNumOfPossDeleteEffects;
	
	public Integer totalOriginalIncompleteActions;
	public Integer totalOriginalNumKnownPresAddsDeletes;
	public Integer totalOriginalNumPossiblePresAddsDeletes;
	
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
	
	boolean debug;
	
	//Constructor
	public Agent(Domain d, Problem p)
	{
		debug = false;
		
		try{
			originalIncompleteActionInstanceList = PddlImporter.createActionInstances(d, p);
		}catch(Exception e){System.out.println("Agent ActionInstances grab failed.");}
		
		if(debug){
			System.out.println("-----------------------------------------------------");
			System.out.println("AGENT ACTIONS AVAILABLE (has possibles): ");
		}
		
		//Showing to user what actions (and their properties) the agent can perform
		//These will be updated/change as the agent learns
		incompleteActionInstanceHT = new Hashtable<Integer, IncompleteActionInstance>();
		for(ActionInstance act : originalIncompleteActionInstanceList)
		{
			IncompleteActionInstance a = (IncompleteActionInstance) act;	
			incompleteActionInstanceHT.put(a.getIndex(), a);
			
			if(debug){
				System.out.println();
				Actions_Utility.printIncompleteVersionOfActionInstance(a);
			}
		}
		
		if(debug){
			System.out.println("\nEND - AGENT ACTIONS AVAILABLE");
			System.out.println("-----------------------------------------------------");
		}
		
		qa_side = new QA_Learning(incompleteActionInstanceHT);
		explore_side = new Passive_Learning(incompleteActionInstanceHT);
		
		random = new Random(0);
						
		//For results, checks actions to count how many have possibles
		Actions_Utility.getCountOfActionsThatAreIncomplete(originalIncompleteActionInstanceList);
		//For results, collects the number of known/possible pre's, adds, deletes
		setInitialListSizeCountForAllAgentsActionInstances();
	}
	
	public List<ActionInstance> getOriginalIncompleteActionInstancesList(){	return originalIncompleteActionInstanceList; }
	
	public Hashtable<Integer, IncompleteActionInstance> getIncompleteActionInstanceHT() { return incompleteActionInstanceHT;}
	
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
		setCurrentListSizeCountForAllAgentsActionInstances();
		range = incompleteActionInstanceHT.size() + totalCurrNumPossiblePresAddsDeletes;
		Integer rand = random.nextInt(range);
		
		System.out.println(" # of actions               : " + incompleteActionInstanceHT.size());
		System.out.println(" Current # of possible props: " + totalCurrNumPossiblePresAddsDeletes);
		System.out.println(" Range                      : " + range);
		System.out.println(" Random #                   : " + rand); 
		
		LearningType type;
		if(rand < incompleteActionInstanceHT.size()) type = LearningType.EXPLORATION;
		else type = LearningType.QA;
		
		System.out.println("\nTYPE LEARNING SELECTED: " + type);
		System.out.println("----------------------------------------------------------------");
		return type;
	}
						
	void setInitialListSizeCountForAllAgentsActionInstances()
	{
		//Init these before the agents begins learning, print them at end
		originalNumOfKnownPreconditions = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNPRECONDITIONSLIST, originalIncompleteActionInstanceList);
		originalNumOfKnownAddEffects    = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNADDEFFECTSLIST, originalIncompleteActionInstanceList);
		originalNumOfKnownDeleteEffects = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNDELETEEFFECTSLIST, originalIncompleteActionInstanceList);
		originalNumOfPossPreconditions 	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSPRECONDITIONSLIST, originalIncompleteActionInstanceList);
		originalNumOfPossAddEffects		= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSADDEFFECTSLIST, originalIncompleteActionInstanceList);
		originalNumOfPossDeleteEffects	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSDELETEEFFECTSLIST, originalIncompleteActionInstanceList);
		
		totalOriginalNumKnownPresAddsDeletes    = originalNumOfKnownPreconditions + originalNumOfKnownAddEffects + originalNumOfKnownDeleteEffects;
		totalOriginalNumPossiblePresAddsDeletes = originalNumOfPossPreconditions + originalNumOfPossAddEffects + originalNumOfPossDeleteEffects;
	}
	
	public Integer getTotalInitialNumberOfFeatures()
	{
		return totalOriginalNumKnownPresAddsDeletes + totalOriginalNumPossiblePresAddsDeletes;
	}
	
	void setCurrentListSizeCountForAllAgentsActionInstances()
	{
		List<ActionInstance> temp = Actions_Utility.getIncompleteActionInstancesAsActionInstances(incompleteActionInstanceHT);
		
		currNumOfKnownPreconditions = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNPRECONDITIONSLIST, temp);
		currNumOfKnownAddEffects    = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNADDEFFECTSLIST, temp);
		currNumOfKnownDeleteEffects = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.KNOWNDELETEEFFECTSLIST, temp);
	
		totalCurrNumKnownPresAddsDeletes    = currNumOfKnownPreconditions + currNumOfKnownAddEffects + currNumOfKnownDeleteEffects;
		
		currNumOfPossPreconditions 	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSPRECONDITIONSLIST, temp);
		currNumOfPossAddEffects 	= Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSADDEFFECTSLIST, temp);
		currNumOfPossDeleteEffects  = Actions_Utility.getCountOfPropsInXListForAllActionInstances(Actions_Utility.POSSDELETEEFFECTSLIST, temp);

		totalCurrNumPossiblePresAddsDeletes = currNumOfPossPreconditions + currNumOfPossAddEffects + currNumOfPossDeleteEffects;
	}
		
	public void startStopwatch(){startTime = System.currentTimeMillis();}
	
	public void stopStopwatch(){finishTime = System.currentTimeMillis();}
	
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}
		
	public void printDeepResults()
	{
		System.out.println("BEFORE LEARNING/SOLVING...");
		System.out.println(" Total # of agent actions: " + incompleteActionInstanceHT.size());
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
		System.out.println("  # of times the exploration learner was called: " + explore_side.numTimesExplorationLearnerCalled);
		System.out.println("  # of times the QA learner was called         : " + qa_side.numTimesQALearnerCalled);
		System.out.println("    # of times a failed action occurred          : " + explore_side.numFailedActions);
		System.out.println("        # of times the QA learner failed         : 0 (does not take actions.)" );
		System.out.println("        # of times the exploration learner failed: " + explore_side.numFailedActionsByExplorationLearner);
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
				
		Integer totalNumPossPresLearnedByExploration = explore_side.numPossPresLearnedToKnownByExploration + 
		explore_side.numPossPresLearnedToNotExistByExploration;
		Integer totalNumPossAddsLearnedByExploration = explore_side.numPossAddEffectsLearnedToKnownByExploration + 
		explore_side.numPossAddEffectsLearnedToNotExistByExploration;
		Integer totalNumPossDeletesLearnedByExploration = explore_side.numPossDeleteEffectsLearnedToKnownByExploration + 
		explore_side.numPossDeleteEffectsLearnedToNotExistByExploration;
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
		System.out.println("            To exist (became known pre's)       : " + explore_side.numPossPresLearnedToKnownByExploration);
		System.out.println("            To not exist (were not actual pre's): " + explore_side.numPossPresLearnedToNotExistByExploration);
		System.out.println("        Total # possible add effects learned by exploration: " + totalNumPossAddsLearnedByExploration);
		System.out.println("            To exist (became known adds)       : " + explore_side.numPossAddEffectsLearnedToKnownByExploration);
		System.out.println("            To not exist (were not actual adds): " + explore_side.numPossAddEffectsLearnedToNotExistByExploration);
		System.out.println("        Total # possible delete effects learned by exploration: " + totalNumPossDeletesLearnedByExploration);
		System.out.println("            To exist (became known deletes)       : " + explore_side.numPossDeleteEffectsLearnedToKnownByExploration);
		System.out.println("            To not exist (were not actual deletes): " + explore_side.numPossDeleteEffectsLearnedToNotExistByExploration);
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
	
	public int getTotalNumberOfActions()
	{
		return explore_side.numSuccessfulActions + explore_side.numFailedActions;
	}

	public void replaceIncompleteActionInstanceWithNewVersion(IncompleteActionInstance a)
	{
		incompleteActionInstanceHT.put(a.getIndex(), a);
	}
}
