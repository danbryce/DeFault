/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: WhenEffect.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.*;

import edu.usu.cs.pddl.domain.*;

/**
 * Conditional effect class.
 */
public class WhenEffect implements Effect
{
    private final boolean applicable;
    
    private final DefaultGoalDesc condition;
    private final Effect effect;
    
    public WhenEffect(final DefaultGoalDesc condition, final Effect effect) {
        this.condition = condition;
        this.effect = effect;
        
        applicable = condition.isEvaluable() && effect.isEvaluable();
    }

    public void apply(ConsistentLiteralSet startState,
                      ConsistentLiteralSet endState) {
        if (!applicable) {
            throw new IllegalStateException("Attempt to apply non-applicable When effect");
        }
        if (condition.evaluate(startState)) {
            effect.apply(startState, endState);
        }
    }

    public Effect instantiate(Map<FormalArgument, PDDLObject> parameters,
                              Set<PDDLObject> objects) {
        if (applicable) {
            return this;
        } else {
            return new WhenEffect((DefaultGoalDesc) condition.instantiate(parameters, objects), 
                                  (Effect) effect.instantiate(parameters, objects));
        }
    }

    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!applicable) {
            throw new IllegalStateException("Attempt to get literals used by non-applicable effect");
        }
        condition.getLiteralsUsed(resultSet);
        effect.getLiteralsUsed(resultSet);
    }

    public boolean isEvaluable() {
        return applicable;
    }
    
    public String toString()
    {
        return "when (" + condition + ") then (" + effect + ")";
    }

	
	public void getMethodDefs(Set<MethodDef> resultSet) {
		effect.getMethodDefs(resultSet);
	}
}
