/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Effect.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.Set;

/**
 * Interface to represent the effects of actions in PDDL.
 */
public interface Effect extends LiteralOperation
{
    /**
     * Add all literals made true by performing this action to the <code>endState</code>.
     * @param startState literals true at the start of the action.
     * @param endState literals true after the action. May be empty when the method is called.
     */
    public void apply(ConsistentLiteralSet startState, ConsistentLiteralSet endState);

	public void getMethodDefs(Set<MethodDef> resultSet);
}
