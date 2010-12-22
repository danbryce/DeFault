package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;


public class Agent_RG extends Agent {

	public Agent_RG(String dFile, String pFile)
	{
		super(dFile, pFile);
	}

	/**
	 * RISKY 
	 * 		- check the action's known preconditions.
	 * 		- check whether the unsat possPre combination has already produced failure.
	 * 		- check for failure in the past using failVar entailment.
	 * GREEDY - do not check entailment of the plan's failure explanation ^ the KB.
	 * 	
	 * Check abstract base class Agent note for further details.
	 * 
	 * @param currAction 	- IncompleteActionInstance
	 * @param prevState 	- Set<Proposition>
	 * @param plan 			- List<ActionInstance>
	 * @return boolean 		- can action can be applied?
	 */
	@Override
	public boolean isActionApplicable(IncompleteActionInstance currAction, Set<Proposition> currState, List<ActionInstance> plan)
	{
		//RISKY
		//Check the action's known preconditions.
		if(!areActionPreConditionsSat(currAction, currState)) 
			return false;

		//Check whether the unsat possPre combination has already produced failure.
		if(existsFailureInPastWithThisUnsatPossPreCombination(currAction, currState))
		{
			//System.out.print(" %");
			return false;
		}

		//Check for failure in the past by failVar entailment.
		if(existsActionFailureInPastEntailFailVar())
		{
			//System.out.print(" $");
			return false;
		}

		return true;
	}

}//end class
