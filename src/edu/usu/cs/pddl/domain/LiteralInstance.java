/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: LiteralInstance.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * Base class for function/predicate instances, where concrete PDDL objects are mapped
 * to the arguments.
 */
public abstract class LiteralInstance
{
    private final MethodDef definition;
    private final List<PDDLObject> arguments;
    
    private final int hashcode;
    
    public LiteralInstance(final MethodDef definition, final List<PDDLObject> arguments) {
        if (definition == null) {
            throw new IllegalArgumentException("null function/predicate definition");
        }
        if (arguments == null) {
            throw new IllegalArgumentException("null argument list");
        }
        this.definition = definition;
        this.arguments = arguments;
        
        final int PRIME = 31;
        int result = 1;
        result = PRIME * result + arguments.hashCode();
        result = PRIME * result + definition.hashCode();
        hashcode = result;

    }

    public MethodDef getDefinition() {
        return definition;
    }
    
    public List<PDDLObject> getArguments() {
        return arguments;
    }

    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        resultSet.add(this);
    }

    @Override
    public int hashCode() {
    	return hashcode;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof LiteralInstance)) {
            return false;
        }
        final LiteralInstance other = (LiteralInstance) obj;
        return (arguments.equals(other.arguments)
                && definition.equals(other.definition));
    }
    
    @Override
    public String toString() 
    {
        StringBuffer argString = new StringBuffer();
        String sep = "";
        for (PDDLObject arg : arguments) {
            argString.append(sep).append(arg);
            sep = " ";
        }
        return "(" + definition.getName() + " "+  argString + ")"; 
    }
}
