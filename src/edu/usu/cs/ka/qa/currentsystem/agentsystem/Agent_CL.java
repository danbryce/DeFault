package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.util.*;

import edu.usu.cs.ka.qa.currentsystem.utilities.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;


public class Agent_CL extends Agent 
{
	static boolean debug = false;
	
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
	 * Note that old version of this method check AllPossPres for SAT and
	 *  was aligned with a version of the Simulation that removed the first action of any plan in order to examine it.
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
		{
			if(debug)System.out.print(" #");
			return false;
		}
		
		//CONSERVATIVE - Check the possPre's.
		//if(!areActionPossPreConditionsSat(currAction, currState)) 
		//	return false;
		
		//RISKY
		//Check whether the unsat possPre combination has already produced failure.
		if(existsFailureInPastWithThisUnsatPossPreCombination(currAction, currState))
		{
			if(debug)System.out.print(" %");
			return false;
		}

		//RISKY
		//Check for failure in the past
		if(existsActionFailureInPastEntailFailVar())
		{
			if(debug)System.out.print(" $");
			return false;
		}
		
		//This should never happen
		if(plan == null || plan.size() == 0) return false;
		
		//LO0KAHEAD
		//bdd.ref(bddRef_KB);
		//int failureExplanationSentence_bddRef = RiskCounter.getFailureExplanationSentence_BDDRef(problem, plan, Planner.solver);
		int failureExplanationSentence_bddRef = RiskCounter.tryThisPFEGenerator(problem, plan, Planner.solver);
		
		//If the plan has failed, this will know about it. It's time to replan.
		if(bdd.toString(failureExplanationSentence_bddRef).contains("TRUE")) 
		{	
			bdd.deref(failureExplanationSentence_bddRef);
			return false;
		}
		//If the plan cannot fail, this will know about it. The agent can't help but succeed.
		if(bdd.toString(failureExplanationSentence_bddRef).contains("FALSE")) 
		{
			bdd.deref(failureExplanationSentence_bddRef);
			return true;
		}
		
		//LOOKAHEAD - Check for entailment of the plan's failure explanation ^ the KB.
		//FailureExplanationSentence is entailed when should be. 

		if(debug)
		{
			System.out.println("KB:");
			System.out.println(bdd.toString(bddRef_KB));
			System.out.println("PFE: ");
			System.out.println(bdd.toString(failureExplanationSentence_bddRef));
			System.out.println("ENTAILMENT RESULT: ");
			System.out.println(bdd.and(bddRef_KB, bdd.not(failureExplanationSentence_bddRef)));
		}
		try
		{
			if(bdd.and(bdd.ref(bddRef_KB), bdd.ref(bdd.not(bdd.ref(failureExplanationSentence_bddRef)))) == bdd.getZero())
			//if(bdd.and(bddRef_KB, bdd.not(failureExplanationSentence_bddRef)) == bdd.getZero())
			{
				if(debug)System.out.println(" &");
				bdd.deref(failureExplanationSentence_bddRef);
				return false;
			}
		}
		catch(Exception e)
		{
			System.out.println("IN AgentCL.isActionApplicable. Trying again...");
			e.printStackTrace();
		
			if(bdd.and(bddRef_KB, bdd.not(failureExplanationSentence_bddRef)) == bdd.getZero())
			{
				if(debug)System.out.println(" &");
				bdd.deref(failureExplanationSentence_bddRef);
				return false;
			}
		}
		
		bdd.deref(failureExplanationSentence_bddRef);
		
		return true;
	}
				
}//end class
