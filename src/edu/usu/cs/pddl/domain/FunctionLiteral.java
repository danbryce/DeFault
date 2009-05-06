/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: FunctionLiteral.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

/**
 * Function with a specific value.
 */
public class FunctionLiteral extends Literal
{
    private final int value;
    
    public FunctionLiteral(final FunctionInstance function, final int value) {
        super(function);
        this.value = value;
    }    
    
    public int getValue() {
        return value;
    }

    @Override
    public int hashCode()
    {
        final int PRIME = 31;
        int result = super.hashCode();
        result = PRIME * result + value;
        return result;
    }

    @Override
    public boolean equals(Object obj)
    {
        if (this == obj)
            return true;
        if (!super.equals(obj))
            return false;
        if (getClass() != obj.getClass())
            return false;
        final FunctionLiteral other = (FunctionLiteral) obj;
        if (value != other.value)
            return false;
        return true;
    }
    
    @Override
    public String toString() 
    {
        return getInstance().toString() + "=" + value; 
    }
}
