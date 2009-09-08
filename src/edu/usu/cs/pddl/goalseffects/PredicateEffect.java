/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateEffect.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.Effect;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.LiteralOperation;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PredicateHeader;
import edu.usu.cs.pddl.domain.PredicateInstance;
import edu.usu.cs.pddl.domain.PredicateLiteral;

/**
 * Effect that just adds a predicate (or the negation of a predicate).
 */
public class PredicateEffect implements Effect
{
    private final boolean applicable;
    
    private final GoalDesc target; // Must be PredicateHeader or PredicateInstance
    private final boolean value;

    public PredicateEffect(final GoalDesc target, final boolean value) 
    {
        if (!(target instanceof PredicateHeader) && !(target instanceof PredicateInstance)) {
            throw new IllegalArgumentException("Invalid predicate target " + target);
        }
        this.target = target;
        this.value = value;
        applicable = target.isEvaluable();
    }

    public void apply(ConsistentLiteralSet startState,
                      ConsistentLiteralSet endState) 
    {
        if (!applicable) {
            throw new IllegalStateException("Attempt to apply non-evaluable predicate " + target);
        }
        
        endState.addOrReplacePredicate(new PredicateLiteral((PredicateInstance) target, value));
    }

    public Effect instantiate(Map<FormalArgument, PDDLObject> parameters,
                              Set<PDDLObject> objects) 
    {
        if (applicable) {
            return this;
        } else {
            return new PredicateEffect( target.instantiate(parameters, objects), 
                                       value);
        }
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!applicable) {
            throw new IllegalStateException("Attempt to get literals used by non-applicable effect");
        }
        target.getLiteralsUsed(resultSet);
    }

    public boolean isEvaluable() {
        return applicable;
    }
    
    public boolean isTrue() {
    	return value;
    }
    
    public String toString()
    {
        return (value ? "" : "not ") + target;
    }

	
	public void getMethodDefs(Set<MethodDef> resultSet) {
		resultSet.add(((PredicateHeader)target).getDefinition());
	}


}
