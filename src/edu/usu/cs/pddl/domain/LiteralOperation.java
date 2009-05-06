/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: LiteralOperation.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * Interface representing goalDesc, functionExp and effect in PDDL, which all need to provide
 * certain utility operations.
 */
public interface LiteralOperation
{   
    public boolean isEvaluable();
    
    /**
     * 
     * @param parameters
     * @param objects needed for quantified goals, e.g. forall x (...)
     * @return
     */
    public LiteralOperation instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects);
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet);
}
