/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: GoalDesc.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;


import java.util.List;
import java.util.Map;


/**
 * Interface representing goals and preconditions in PDDL, which have a
 * boolean value associated with them.
 */
public interface DefaultGoalDesc extends  GoalDesc 
{
    public boolean evaluate(ConsistentLiteralSet literals);
	public void getMethods(List<MethodDef> preconditionMethods);
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState);
}
