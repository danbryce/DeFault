/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ActionDef.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

public class ActionDef
{
    private final String name;
    private final List<FormalArgument> arguments;
    private final GoalDesc preCondition;
    private final Effect effect;
    private final List<MethodDef> preconditionMethods;

    /** GoalDesc object to use for actions which don't have any preconditions */
    private static final GoalDesc NULL_PRECOND = new GoalDesc() {
        public boolean evaluate(ConsistentLiteralSet literals) {
            return true;
        }
        public void getLiteralsUsed(Set<LiteralInstance> resultSet) {
        }
        public LiteralOperation instantiate(Map<FormalArgument, PDDLObject> parameters,
                                            Set<PDDLObject> objects) {
            return this;
        }
        public boolean isEvaluable() {
            return true;
        }
        public String toString() {
            return "<none>";
        }
	
		public void getMethods(List<MethodDef> preconditionMethods) {
		  //none
		}
	
		public boolean notSatisfiedBy(
				Map<FormalArgument, PDDLObject> partialArgMap,
				ConsistentLiteralSet startState) {
			return false;
		}
    };

    /** Effect object to use for actions which don't have any effects */
    private static final Effect NULL_EFFECT = new Effect() {
        public void apply(ConsistentLiteralSet startState, ConsistentLiteralSet endState) {
        }
        public void getLiteralsUsed(Set<LiteralInstance> resultSet) {
        }
        public LiteralOperation instantiate(Map<FormalArgument, PDDLObject> parameters,
                                            Set<PDDLObject> objects) {
            return this;
        }
        public boolean isEvaluable() {
            return true;
        }
        public String toString() {
            return "<none>";
        }
		
		public void getMethodDefs(Set<MethodDef> resultSet) {
			//none
		}
    };
    
    public ActionDef(final String name, List<FormalArgument> arguments, 
                     GoalDesc preCondition, Effect effect) {
        if (name == null) {
            throw new IllegalArgumentException("null name");
        }
        if (arguments == null) {
            throw new IllegalArgumentException("null arguments");
        }
        if (preCondition == null) {
            preCondition = NULL_PRECOND;
        }
        if (effect == null) {
            effect = NULL_EFFECT;
        }
        this.name = name;
        this.arguments = arguments;
        this.preCondition = preCondition;
        this.effect = effect;
        
        this.preconditionMethods = new ArrayList<MethodDef>(); 
        	preCondition.getMethods(this.preconditionMethods);
        
    }

    public List<FormalArgument> getArguments() {
        return arguments;
    }

    public Effect getEffect() {
        return effect;
    }

    public String getName() {
        return name;
    }

    public GoalDesc getPreCondition() {
        return preCondition;
    }
    
    public String toString() {
        return name + arguments + "\nPRECOND: " + preCondition + "\nEFFECT: " + effect;
    }

	public List<MethodDef> getPreconditionMethods() {
		return preconditionMethods;
	}

	public boolean isLegalPartialInstantiation(List<PDDLObject> newArgList,
			ConsistentLiteralSet startState) {
		//does partial instantiation make action unexecutable, given
		// known static predicates and startState (i.e., can all static
		// predicates in precondition satisfied by initial state).
		Map<FormalArgument, PDDLObject> partialArgMap = new HashMap<FormalArgument, PDDLObject>();
		for(int i = 0; i < newArgList.size(); i++){
			partialArgMap.put(arguments.get(i), newArgList.get(i));
		}
		return !preCondition.notSatisfiedBy(partialArgMap, startState);
	}
}
