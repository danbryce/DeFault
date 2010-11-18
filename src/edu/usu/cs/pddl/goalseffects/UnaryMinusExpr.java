/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: UnaryMinusExpr.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.NumericExpr;
import edu.usu.cs.pddl.domain.PDDLObject;

/**
 * Numeric expresssion (fExp in PDDL) for a negated expression.
 */
public class UnaryMinusExpr implements NumericExpr
{
    private final boolean evaluable;
    
    private final NumericExpr operand;
    
    public UnaryMinusExpr(final NumericExpr operand) {
        this.operand = operand;
        
        evaluable = operand.isEvaluable();
    }

    public boolean isEvaluable() {
        return evaluable;
    }
    
    public NumericExpr instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        if (evaluable) {
            return this;
        } else {
            return new UnaryMinusExpr((NumericExpr) operand.instantiate(parameters, objects));
        }
    }
    
    /* (non-Javadoc)
     * @see edu.usu.cs.pddl.domain.NumericExpr#evaluate(edu.usu.cs.pddl.domain.ConsistentLiteralSet)
     */
    public int evaluate(ConsistentLiteralSet literals) {
        return - (operand.evaluate(literals));
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!evaluable) {
            throw new IllegalStateException("Attempt to get literals used by non-evaluable function expr");
        }
        operand.getLiteralsUsed(resultSet);
    }
    
    public String toString()
    {
        return " -" + operand;
    }

	
	public void getMethods(Set<MethodDef> preconditionMethods) {
		operand.getMethods(preconditionMethods);
	}
}
