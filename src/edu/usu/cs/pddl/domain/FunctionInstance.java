/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: FunctionInstance.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * A function with its arguments mapped to actual PDDL objects (but without a value).
 */
public class FunctionInstance extends LiteralInstance implements NumericExpr
{
    public FunctionInstance(final FunctionDef definition, final List<PDDLObject> arguments) {
        super(definition, arguments);
    }

    /* (non-Javadoc)
     * @see edu.usu.cs.pddl.domain.NumericExpr#evaluate(java.util.Collection)
     */
    public int evaluate(ConsistentLiteralSet literals) {
        return literals.getFunctionValue(this);
    }
    
    public boolean isEvaluable() {
        return true;
    }
    
    public NumericExpr instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        return this;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        return super.equals(obj);
    }

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		preconditionMethods.add(this.getDefinition());
	}
}
