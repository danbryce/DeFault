/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PDDLNumber.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * A raw number (constant).
 */
public class PDDLNumber implements NumericExpr
{
    private final int value;
    
    public PDDLNumber(final int value) {
        this.value = value;
    }

    public int evaluate(ConsistentLiteralSet literals) {
        return value;
    }
    public NumericExpr instantiate(Map<FormalArgument, PDDLObject> parameters,
                                   Set<PDDLObject> objects) {
        return this;
    }
    public boolean isEvaluable() {
        return true;
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        // No literals used as part of this expression!
    }
    
    public String toString() {
        return String.valueOf(value);
    }

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		// TODO Auto-generated method stub
		
	}
}
