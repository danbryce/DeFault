/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: FormalArgument.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

/**
 * A variable or parameter with a type. Names will always start with '?' in PDDL.
 */
public class FormalArgument
{
    private final String name; // May be an object or a variable
    private final PDDLType type;
    
    public FormalArgument(final String name) {
        this(name, null);
    }
    
    public FormalArgument(final String name, final PDDLType type) {
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

    public boolean typeMatches(PDDLObject obj) {
        if (type == null) {
            // Allow any object, even if the object itself has a type
            return true;
        } else {
            return type.equalsOrIsParentOf(obj.getType());
        }
    }

    public boolean typeMatches(FormalArgument var) {
        if (type == null) {
            // Allow any object, even if the object itself has a type
            return true;
        } else {
            return type.equalsOrIsParentOf(var.getType());
        }
    }
    
    public String toString() {
        return name + (type == null ? "" : "-" + type);
    }
}
