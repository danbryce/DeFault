/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: FunctionHeader.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * Placeholder for a function used in an {@link ActionDef} before actual objects
 * have been matched to the action arguments. Replaced by an {@link FunctionInstance}
 * when objects are instantiated.
 */
public class FunctionHeader implements NumericExpr
{
    private final FunctionDef definition;
    private final List<FormalArgument> arguments;
    
    public FunctionHeader(final FunctionDef definition, final List<FormalArgument> arguments) {
        this.definition = definition;
        this.arguments = arguments;
    }

    public int evaluate(ConsistentLiteralSet literals) {
        throw new UnsupportedOperationException("Function headers are not evaluable (function " 
                                                + definition.getName() + ")");
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        throw new UnsupportedOperationException("Function headers are not evaluable (function " 
                                                + definition.getName() + ")");
    }
    
    public boolean isEvaluable() {
        return false;
    }
    
    public NumericExpr instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        List<PDDLObject> actualArgs = new ArrayList<PDDLObject>(arguments.size());
        for (FormalArgument a : arguments) {
            PDDLObject obj = parameters.get(a);
            if (obj == null) {
                throw new IllegalStateException("No argument suppled for " + a.getName() 
                                                + " in function '" + definition.getName() + "'");
            }
            actualArgs.add(obj);
        }
        return new FunctionInstance(definition, actualArgs);
    }
    
    public String toString()
    {
        return definition.getName() + arguments;
    }

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		preconditionMethods.add(this.definition);
	}
}
