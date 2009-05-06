/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: NumericExpr.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.List;

/**
 * Corresponds to fExp in PDDL - a function-based expression.
 */
public interface NumericExpr extends LiteralOperation
{
    public int evaluate(ConsistentLiteralSet literals);

	public void getMethods(List<MethodDef> preconditionMethods);
}
