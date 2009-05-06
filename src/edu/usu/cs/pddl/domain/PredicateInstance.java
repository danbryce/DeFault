/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateInstance.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;


/**
 * A predicate with its arguments mapped to actual PDDL objects (but without a value).
 */
public class PredicateInstance extends LiteralInstance implements GoalDesc
{
    public PredicateInstance(final PredicateDef predicate, final List<PDDLObject> arguments) {
        super(predicate, arguments);
    }

    /* (non-Javadoc)
     * @see edu.usu.cs.pddl.domain.GoalDesc#evaluate(java.util.Collection)
     */
    public boolean evaluate(ConsistentLiteralSet literals) {
        return literals.getPredicateValue(this);
    }
    
    public boolean isEvaluable() {
        return true;
    }
    
    public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        return this;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        return super.equals(obj);
    }

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		preconditionMethods.add(this.getDefinition());
	}

	
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState) {
		// TODO assmue is satisfied for now
		return false;
	}
}
