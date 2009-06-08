/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: GraphAction.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.heuristic.relaxedplangraph;

import edu.usu.cs.pddl.domain.*;

/**
 * Action plus metadata needed by the planning graph. Consists of an {@link ActionInstance}
 * plus the literals that form the preconditions and effects of the action.
 */
public class GraphAction
{
    private final ActionInstance action;
    private final ConsistentLiteralSet preconditions;
    private ConsistentLiteralSet effects;
    private final boolean isMaintenanceAction;

    /**
     * 
     * @param action
     * @param preconditions includes ALL literals used by this action
     */
    public GraphAction(ActionInstance action, ConsistentLiteralSet preconditions)
    {
        if (action == null) {
            throw new IllegalArgumentException("null action");
        }
        if (preconditions == null) {
            throw new IllegalArgumentException("null preconditions");
        }
        this.action = action;
        this.preconditions = preconditions;
        isMaintenanceAction = false;
    }
    
    public static GraphAction createMaintenanceAction(ConsistentLiteralSet maintainedLiteral)
    {
        return new GraphAction(maintainedLiteral);
    }
    
    private GraphAction(ConsistentLiteralSet maintainedLiteral)
    {
        if (maintainedLiteral == null) {
            throw new IllegalArgumentException("null literal set");
        }
        this.action = null;
        this.preconditions = maintainedLiteral;
        this.effects = maintainedLiteral;
        isMaintenanceAction = true;
    }
    
    public boolean isValid() 
    {
        if (isMaintenanceAction) {
            return true;
        } else {
            return action.preConditionSatisfied(preconditions);
        }
    }
    
    public ConsistentLiteralSet getEffects()
    {
        if (effects != null) {
            return effects;
        } else {
            if (!isValid()) {
                throw new RuntimeException("Attempt to get effects of action " + action.getDefinition().getName()
                                           + " when preconditions are not satisfied");
            }
            effects = action.perform(preconditions);
            return effects;
        }
    }

    public ActionInstance getAction()
    {
        return action;
    }

    public ConsistentLiteralSet getPreconditions()
    {
        return preconditions;
    }
    
    public boolean isMaintenanceAction()
    {
        return isMaintenanceAction;
    }

    public String toString() 
    {
        String sep = "";
        StringBuffer result = new StringBuffer();
        result.append(isMaintenanceAction ? "<maint>" : action.toString());
        result.append("\n\t[");
        for (Literal l : getPreconditions().getLiterals()) {
            result.append(sep).append(l.toString());
            sep = ", ";
        }
        result.append("] -> [");
        sep = "";
        for (Literal l : getEffects().getLiterals()) {
            result.append(sep).append(l.toString());
            sep = ", ";
        }
        result.append("]");
        
        return result.toString();
    }
    
    public String getActionHeader()
    {
        if (isMaintenanceAction) {
            return "<maint>(" + getPreconditions().getLiterals().iterator().next() + ")";
        } else {
            return action.toString();
        }
    }

    @Override
    /*** Just returns super.hashCode, as only one instance of each GraphAction should
     * exist for each {@link Level}. */
    public int hashCode()
    {
        return super.hashCode();
    }

    @Override
    /*** Just returns super.equals, as only one instance of each GraphAction should
     * exist for each {@link Level}. */
    public boolean equals(Object obj)
    {
        return (this == obj);
    }
    
}
