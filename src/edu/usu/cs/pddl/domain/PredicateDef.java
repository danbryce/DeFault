/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateDef.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;


/**
 * Definition of a PDDL predicate.
 */
public class PredicateDef extends MethodDef 
{
    public PredicateDef(String name, List<FormalArgument> arguments)
    {
        super(name, arguments);
    }
    
    @Override
    public boolean equals(Object obj) 
    {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        return super.equals(obj);
    }
}
