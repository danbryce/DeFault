/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ComparisonGoalDesc.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.NumericExpr;
import edu.usu.cs.pddl.domain.PDDLObject;

/**
 * Binary comparison goal. Available operators are '>', '<', '=', '>=', and '<='.
 */
public class ComparisonGoalDesc implements DefaultGoalDesc
{
    private final boolean evaluable;
    
    // binaryComp : '>' | '<' | '=' | '>=' | '<=' ;
    private final String operator;
    private final NumericExpr firstOperand;
    private final NumericExpr secondOperand;
    
    public ComparisonGoalDesc(final String operator, final NumericExpr firstOperand, final NumericExpr secondOperand) {
        if (!">".equals(operator) && !"<".equals(operator) 
                && !"=".equals(operator) && !">=".equals(operator) && !"<=".equals(operator)) {
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
    
    public DefaultGoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        if (evaluable) {
            return this;
        } else {
            return new ComparisonGoalDesc(operator, 
                    (NumericExpr) firstOperand.instantiate(parameters, objects),
                    (NumericExpr) secondOperand.instantiate(parameters, objects));
        }
    }
    
    /* (non-Javadoc)
     * @see edu.usu.cs.pddl.domain.GoalDesc#evaluate()
     */
    public boolean evaluate(ConsistentLiteralSet literals) {
        if (">".equals(operator)) {
            return firstOperand.evaluate(literals) > secondOperand.evaluate(literals);
            
        } else if ("<".equals(operator)) {
            return  firstOperand.evaluate(literals) < secondOperand.evaluate(literals);
            
        } else if ("=".equals(operator)) {
            return firstOperand.evaluate(literals) == secondOperand.evaluate(literals);
            
        } else if (">=".equals(operator)) {
            return firstOperand.evaluate(literals) >= secondOperand.evaluate(literals);
            
        } else if ("<=".equals(operator)) {
            return firstOperand.evaluate(literals) <= secondOperand.evaluate(literals);
        
        } else {
            throw new IllegalStateException("Illegal operator " + operator);
        }
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!evaluable) {
            throw new IllegalStateException("Attempt to get literals used by non-evaluable goal desc");
        }
        firstOperand.getLiteralsUsed(resultSet);
        secondOperand.getLiteralsUsed(resultSet);
    }
    
    public String toString()
    {
        return firstOperand + " " + operator + " " + secondOperand;
    }

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		firstOperand.getMethods(preconditionMethods);
		secondOperand.getMethods(preconditionMethods);
		
	}

	
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState) {
		// TODO work this out, for now assume its satisfied
		return false;
	}
}
