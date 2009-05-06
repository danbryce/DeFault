/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateLiteral.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;




/**
 * Predicate with a specific value.
 */
public class PredicateLiteral extends Literal 
{
    private final boolean value; 
    
    public PredicateLiteral(final PredicateInstance predicate, final boolean value) {
        super(predicate);
        this.value = value;
    }

    public boolean getValue() {
        return value;
    }

    @Override
    public int hashCode()
    {
        final int PRIME = 31;
        int result = super.hashCode();
        result = PRIME * result + (value ? 1231 : 1237);
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
        final PredicateLiteral other = (PredicateLiteral) obj;
        if (value != other.value)
            return false;
        return true;
    }    
    
    @Override
    public String toString() 
    {
        if (value) {
            return getInstance().toString();
        } else {
            return "(not " + getInstance().toString() + ")";
        }
    }
}
