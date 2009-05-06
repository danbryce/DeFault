/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Literal.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

/**
 * Function or predicate with an associated value (which will be a number for functions, 
 * boolean for predicates).
 */
public abstract class Literal
{
    private final LiteralInstance instance;
    
    public Literal(LiteralInstance instance)
    {
        if (instance == null) {
            throw new IllegalArgumentException("null function/predicate instance");
        }
        this.instance = instance;
    }

    public LiteralInstance getInstance()
    {
        return instance;
    }

    @Override
    public int hashCode()
    {
        return instance.hashCode();
    }

    @Override
    public boolean equals(Object obj)
    {
        if (!(obj instanceof Literal)) {
            return false;
        }
        final Literal other = (Literal) obj;
        return instance.equals(other.instance);
    }
}
