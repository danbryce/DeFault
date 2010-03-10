/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ConjunctionEffect.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.Effect;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.PDDLObject;

/**
 * An 'and' effect in PDDL. Just applies all of its child effects.
 */
public class ConjunctionEffect implements Effect
{
    private final boolean applicable;
    private List<? extends Effect> subEffects;
    
    public ConjunctionEffect(List<? extends Effect> subEffects) 
    {
        this.subEffects = subEffects;
        
        boolean tempApplicable = true;
        for (Effect effect : subEffects) {
            if (!effect.isEvaluable()) {
                tempApplicable = false;
            }
        }
        applicable = tempApplicable;
    }

    public void apply(ConsistentLiteralSet startState,
                      ConsistentLiteralSet endState) 
    {
        for (Effect effect : subEffects) {
            effect.apply(startState, endState);
        }
    }

    public Effect instantiate(Map<FormalArgument, PDDLObject> parameters,
                              Set<PDDLObject> objects) 
    {
        if (applicable) {
            return this;
        } else {
            List<Effect> newEffects = new ArrayList<Effect>(subEffects.size());
            for (Effect effect : subEffects) {
                newEffects.add((Effect) effect.instantiate(parameters, objects));
            }
            return new ConjunctionEffect(newEffects);
        }
    }
    
    public List<Effect> getSubEffects() {
    	List<Effect> effects = new ArrayList<Effect>();
    	
    	for(Effect effect : subEffects) {
    		effects.add(effect);
    	}
    	return effects;
    }
    
    public List<PredicateEffect> getSubEffectsAsPredicateEffects() {
    	List<PredicateEffect> effects = new ArrayList<PredicateEffect>();
    	
    	for(Effect effect : subEffects) {
    		effects.add((PredicateEffect)effect);
    	}
    	return effects;
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!applicable) {
            throw new IllegalStateException("Attempt to get literals used by non-applicable effect");
        }
        for (Effect effect : subEffects) {
            effect.getLiteralsUsed(resultSet);
        }
    }
    
    public boolean isEvaluable() 
    {
        return applicable;
    }
    
    public String toString() 
    {
        String sep = "";
        StringBuffer result = new StringBuffer();        
        for (Effect eff : subEffects) {
            result.append(sep).append("(").append(eff).append(")");
            sep = " and ";
        }
        return result.toString();
    }

	public void getMethodDefs(Set<MethodDef> resultSet) {
		for(Effect e : subEffects){
			e.getMethodDefs(resultSet);
		}
	}
}
