/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: WhenEffect.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.Effect;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.LiteralOperation;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.PDDLObject;

/**
 * Conditional effect class.
 */
public class WhenEffect implements Effect
{
    private final boolean applicable;
    
    private final GoalDesc condition;
    private final Effect effect;
    
    public WhenEffect(final GoalDesc goalDesc, final Effect effect) {
        this.condition = goalDesc;
        this.effect = effect;
        
        applicable = goalDesc.isEvaluable() && effect.isEvaluable();
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
                              Set<PDDLObject> objects,
                  			Set<PDDLObject> allObjects) {
        if (applicable) {
            return this;
        } else {
            return new WhenEffect(condition.instantiate(parameters, objects), 
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

	@Override
	public LiteralOperation instantiate(
			Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
		// TODO Auto-generated method stub
		return null;
	}
}
