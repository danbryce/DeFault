/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: BinaryArithmeticExpr.java 32 2007-02-21 16:29:39Z zas $
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
 * Numeric expresssion (fExp in PDDL) for a binary arithmetic operation 
 * ('*' | '+' | '-' | '/').
 */
public class BinaryArithmeticExpr implements NumericExpr
{
    private final boolean evaluable;
    
    // binaryOp : '*' | '+' | '-' | '/' ;
    private final String operator;
    private final NumericExpr firstOperand;
    private final NumericExpr secondOperand;
    
    public BinaryArithmeticExpr(final String operator, final NumericExpr firstOperand, final NumericExpr secondOperand) {
        if (!"*".equals(operator) && !"+".equals(operator) 
                && !"-".equals(operator) && !"/".equals(operator)) {
            throw new IllegalArgumentException("Unknown operator '" + operator + "'");
        }
        this.operator = operator;
        this.firstOperand = firstOperand;
        this.secondOperand = secondOperand;
        
        evaluable = (firstOperand.isEvaluable() && secondOperand.isEvaluable());
    }

    public boolean isEvaluable() {
        return evaluable;
    }
    
    public NumericExpr instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        if (evaluable) {
            return this;
        } else {
            return new BinaryArithmeticExpr(operator, 
                    (NumericExpr) firstOperand.instantiate(parameters, objects),
                    (NumericExpr) secondOperand.instantiate(parameters, objects));
        }
    }
    
    /* (non-Javadoc)
     * @see edu.usu.cs.pddl.domain.NumericExpr#evaluate(edu.usu.cs.pddl.domain.ConsistentLiteralSet)
     */
    public int evaluate(ConsistentLiteralSet literals) {
        if ("*".equals(operator)) {
            return firstOperand.evaluate(literals) * secondOperand.evaluate(literals);
            
        } else if ("+".equals(operator)) {
            return  firstOperand.evaluate(literals) + secondOperand.evaluate(literals);
            
        } else if ("-".equals(operator)) {
            return firstOperand.evaluate(literals) - secondOperand.evaluate(literals);
            
        } else if ("/".equals(operator)) {
            return firstOperand.evaluate(literals) / secondOperand.evaluate(literals);
        
        } else {
            throw new IllegalStateException("Illegal operator " + operator);
        }
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!evaluable) {
            throw new IllegalStateException("Attempt to get literals used by non-evaluable function expr");
        }
        firstOperand.getLiteralsUsed(resultSet);
        secondOperand.getLiteralsUsed(resultSet);
    }
    
    public String toString()
    {
        return "(" + firstOperand + " " + operator + " " + secondOperand + ")";
    }

	
	public void getMethods(Set<MethodDef> preconditionMethods) {
		firstOperand.getMethods(preconditionMethods);
		secondOperand.getMethods(preconditionMethods);
	}
}
