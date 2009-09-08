/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PDDLObject.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;



/**
 * Represents PDDL Objects from the problem definition.
 */
public class PDDLObject implements Term {
    private final String name;
    private final PDDLType type;
    
    public PDDLObject(final String name) {
        this(name, null);
    }
    
    public PDDLObject(final String name, final PDDLType type) {
        if (name == null) {
            throw new IllegalArgumentException("null name");
        }
        this.name = name;
        this.type = type;
    }
    
    public String getName() {
        return name;
    }
    
    public PDDLType getType() {
        return type;
    }
    
    @Override
    public int hashCode() {
        return name.hashCode();
    }
    
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        final PDDLObject other = (PDDLObject) obj;
        if (Domain.CASE_SENSITIVE) {
            return name.equals(other.name);
        } else {
            return name.equalsIgnoreCase(other.name);
        }
    }
    
    @Override
    public String toString()
    {
        return name;
    }
}
