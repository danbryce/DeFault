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
	 * RISKY 
	 * 		- check the action's known preconditions.
	 * 		- check whether the unsat possPre combination has already produced failure.
	 * 		- check for failure in the past using failVar.
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
		//Check the action's known preconditions.
		if(!areActionPreConditionsSat(currAction, currState)) return false;

		//Check whether the unsat possPre combination has already produced failure.
		int posspres = bdd.ref(bdd.getZero());
		for(Proposition p : currAction.getPossiblePreconditions())
		{
			if(!currState.contains(p))
			{
				Fault risk = Fault.getRiskFromIndex(Fault.PRECOPEN, currAction.getName(), p.getName());
				int tmp = bdd.ref(bdd.or(posspres, riskToBDD.get(risk)));
				bdd.deref(posspres);
				posspres = tmp;
			}
		}

		if(bdd.and(bddRef_KB, bdd.not(posspres)) == bdd.getZero())
		{
			System.out.print(" %");
			bdd.deref(posspres);
			return false;
		}
		bdd.deref(posspres);

		//Check for failure in the past using failVar.
		if(bdd.and(bddRef_KB, bdd.not(failVar)) == 0)
		{
			System.out.print(" $");
			this.incrementFailedActionsCount();
			return false;
		}

		return true;
	}

}//end class
