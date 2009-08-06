/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Problem.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.io.StringWriter;
import java.util.*;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public interface Problem
{

//	public Problem(final String name, 
//			final Domain domain, 
//			final Set<PDDLObject> objects, 
//			final ConsistentLiteralSet startState, 
//			final GoalDesc goal);
//	
//	public Problem(final String name,
//			final Domain domain,
//			final Set<PDDLObject> objects,
//			final ConsistentLiteralSet startState,
//			final List<GoalDesc> goals);

	public Domain getDomain();

	/*
	 * Returns the first element of the goal array
	 */
	public DefaultGoalDesc getGoal();
	
	public List<DefaultGoalDesc> getGoals();

	public String getName();

	public Set<PDDLObject> getObjects();

	public ConsistentLiteralSet getStartState();

	public Boolean isDynamicPredicateInstance(PredicateInstance p);

//	private boolean checkDynamicPredicate(PredicateInstance p);

//	private boolean isAnEffectButNeverChangesValue(PredicateInstance p);
//
//	private boolean isAnEffectOfUnexecutableAction(PredicateInstance p);
//
//	private boolean isAnEffect(PredicateInstance p);
	
    public String toString();

	public List<IncompleteActionInstance> getActions();

	public IncompleteActionInstance getGoalAction();
	
	public Set<Proposition> getInitialState();

	public void setGoalAction(IncompleteActionInstance createGoal);
    
}
