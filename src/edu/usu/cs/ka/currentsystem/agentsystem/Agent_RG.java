package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;


public class Agent_RG extends Agent {

	public Agent_RG(String dFile, String pFile)
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
	public boolean isActionApplicable(IncompleteActionInstance currAction, Set<Proposition> prevState, List<ActionInstance> plan)
	{
		//RISKY - always keep
		if(!areActionPreConditionsSat(currAction, prevState)) return false;
		
		//Did we fail in the past?
		//if(bdd.and(bddRef_KB, bdd.not(failVar)) == 0) return false;
		
		return true;
	}
				
}//end class
