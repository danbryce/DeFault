package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;


public class Agent_CL extends Agent {

	public Agent_CL(String dFile, String pFile)
	{
		super(dFile, pFile);
	}
				
	/**
	 * RISKY - check only the action's known preconditions.
	 * 	Check abstract base class Agent note for further details.
	 * 
	 * @param currAction 	- IncompleteActionInstance
	 * @param prevState 	- Set<Proposition>
	 * @param plan 			- List<ActionInstance>
	 * @return boolean 		- can action can be applied?
	 */
	@Override
	public boolean isActionApplicable(IncompleteActionInstance currAction, Set<Proposition> currState, List<ActionInstance> plan)
	{
		//RISKY - always keep
		if(!areActionPreConditionsSat(currAction, currState)) return false;
		
		//failVar - did we fail in the past?
		if(bdd.and(bddRef_KB, bdd.not(failVar)) == 0) 
		{
			System.out.print(" $");
			return false;
		}
		
		//CONSERVATIVE
		if(!areActionPossPreConditionsSat(currAction, currState)) return false;
		
		//LOOKAHEAD
		problem.setInitialState(currState);
		int failureExplanationSentence_bddRef = RiskCounter.getFailureExplanationSentence_BDDRef(problem, plan, currAction);
		if(bdd.and(bddRef_KB, bdd.not(failureExplanationSentence_bddRef)) == 0)
		{
			bdd.deref(failureExplanationSentence_bddRef);
			System.out.print(" &");
			return false;
		}
		
		bdd.deref(failureExplanationSentence_bddRef);
		return true;
	}
				
}//end class
