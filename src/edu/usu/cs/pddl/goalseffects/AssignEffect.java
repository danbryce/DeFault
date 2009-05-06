/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: AssignEffect.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.*;

import edu.usu.cs.pddl.domain.*;

/**
 * Effect class covering assignments to a function literal (including increase and scale operations).
 */
public class AssignEffect implements Effect
{
    private final boolean applicable;
    
    // assignOp : 'assign' | 'scale-up' | 'scale-down' | 'increase' | 'decrease'
    private final String operator;
    private final NumericExpr target; // Must be FunctionHeader or FunctionInstance...
    private final NumericExpr value;
    
    public AssignEffect(final String operator, final NumericExpr target, final NumericExpr value) 
    {
        if (!"assign".equals(operator) 
                && !"scale-up".equals(operator) && !"scale-down".equals(operator) 
                && ! "increase".equals(operator) && !"decrease".equals(operator)) {
            throw new IllegalArgumentException("Unsupported operator " + operator);
        }
        if (!(target instanceof FunctionHeader) && !(target instanceof FunctionInstance)) {
            throw new IllegalArgumentException("Invalid function target " + target);
        }
        
        this.operator = operator;
        this.target = target;
        this.value = value;
        
        applicable = target.isEvaluable() && value.isEvaluable();
    }

    public void apply(ConsistentLiteralSet startState,
                      ConsistentLiteralSet endState) 
    {
        if (!applicable) {
            throw new IllegalStateException("Attempt to apply operator " + operator + " to non-applicable effect");
        }
        FunctionInstance targetInstance = (FunctionInstance) target;
        int rhsValue = value.evaluate(startState);
        
        if ("assign".equals(operator)) {
            endState.addOrReplaceFunction(new FunctionLiteral(targetInstance, rhsValue));
            
        } else {
            int oldValue = startState.getFunctionValue(targetInstance);
            int newValue;
            
            if ("scale-up".equals(operator)) {
                newValue = oldValue * rhsValue;
                
            } else if ("scale-down".equals(operator)) {
                newValue = oldValue / rhsValue;
                
            } else if ("increase".equals(operator)) {
                newValue = oldValue + rhsValue;
                
            } else if ("decrease".equals(operator)) {
                newValue = oldValue - rhsValue;
                
            } else {
                throw new IllegalStateException("Illegal operator " + operator);
            }

            endState.addOrReplaceFunction(new FunctionLiteral(targetInstance, newValue));
        }
    }

    public Effect instantiate(Map<FormalArgument, PDDLObject> parameters,
                              Set<PDDLObject> objects) 
    {
        if (applicable) {
            return this;
        } else {
            return new AssignEffect(operator, 
                                    (NumericExpr) target.instantiate(parameters, objects), 
                                    (NumericExpr) value.instantiate(parameters, objects));
        }
    }

    public boolean isEvaluable() 
    {
        return applicable;
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!applicable) {
            throw new IllegalStateException("Attempt to get literals used by non-applicable effect");
        }
        target.getLiteralsUsed(resultSet);
        value.getLiteralsUsed(resultSet);
    }
    
    public String toString()
    {
        return target + " {" + operator + "} " + value;
    }

	
	public void getMethodDefs(Set<MethodDef> resultSet) {
		resultSet.add(((FunctionInstance)target).getDefinition()); 
	}
}
