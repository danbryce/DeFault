/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PDDLType.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

/**
 * PDDL types.
 */
public class PDDLType
{
    private final String name;
    private final PDDLType parentType;
    
    public PDDLType(String name) {
        this(name, null);
    }
    
    public PDDLType(String name, PDDLType parentType) {
        if (name == null) {
            throw new IllegalArgumentException("null name");
        }
        this.name = name;
        this.parentType = parentType;
    }

    public String getName() {
        return name;
    }

    public PDDLType getParentType() {
        return parentType;
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
        final PDDLType other = (PDDLType) obj;
        if (Domain.CASE_SENSITIVE) {
            return name.equals(other.name);
        } else {
            return name.equalsIgnoreCase(other.name);
        }
    }

    public boolean equalsOrIsParentOf(PDDLType type) {
        if ("object".equalsIgnoreCase(name)) { // 'Object' type is parent of all types
            return true;
        } else {
            while (type != null) {
                if ((Domain.CASE_SENSITIVE && name.equals(type.name))
                        || name.equalsIgnoreCase(type.name)) {
                    return true;
                }
                type = type.getParentType();
            }
        }
        return false;
    }
    
    public String toString()
    {
        return getName();
    }
}
