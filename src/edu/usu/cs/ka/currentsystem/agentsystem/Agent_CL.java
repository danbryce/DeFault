package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.util.FaultCounter;


public class Agent_CL extends Agent {

	public Agent_CL(String dFile, String pFile)
	{
		super(dFile, pFile);
	}
				
	/**
	 * CONSERVATIVE - includes all RISKY checks++:
	 * 		RISKY - check the action's known preconditions.
	 * 			  - check whether the unsat possPre combination has already produced failure.
	 * 			  - check for failure in the past using failVar entailment.
	 * CONSERVATIVE - check the possPre's.
	 * LOOKAHEAD - check for entailment of the plan's failure explanation ^ the KB.
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
		
		//CONSERVATIVE - Check the possPre's.
		if(!areActionPossPreConditionsSat(currAction, currState)) 
			return false;
		
		//RISKY
		//Check whether the unsat possPre combination has already produced failure.
		if(existsFailureInPastWithThisUnsatPossPreCombination(currAction, currState))
		{
			//System.out.print(" %");
			return false;
		}

		//RISKY
		//Check for failure in the past
		if(existsActionFailureInPastEntailFailVar())
		{
			//System.out.print(" $");
			return false;
		}
		
		//LOOKAHEAD - Check for entailment of the plan's failure explanation ^ the KB.
		//FailureExplanationSentence is entailed when should be. 
		if(plan.size() != 0)
		{
			//bdd.ref(bddRef_KB);
			problem.setInitialState(currState);
			int failureExplanationSentence_bddRef = FaultCounter.getFailureExplanationSentence_BDDRef(problem, plan, currAction, Planner.solver);
			if(bdd.and(bddRef_KB, bdd.not(failureExplanationSentence_bddRef)) == 0)
			{
				//System.out.print(" &");
				bdd.deref(failureExplanationSentence_bddRef);
				return false;
			}
			
			bdd.deref(failureExplanationSentence_bddRef);
		}
		
		return true;
	}
				
}//end class
