/**
* NotGoalDesc.java
* author: fm086
* date: 22.07.2008
*
*/

package edu.usu.cs.pddl.goalseffects;

import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.PDDLObject;

public class NotGoalDesc implements DefaultGoalDesc {
    
	private final boolean evaluable;
    private DefaultGoalDesc negatedGoal;

    public NotGoalDesc(DefaultGoalDesc negGoal){
    	this.negatedGoal = negGoal;
    	evaluable = negGoal.isEvaluable();
    }
    
	//@Override
	public boolean evaluate(ConsistentLiteralSet literals) {
		return !negatedGoal.evaluate(literals);
	}

	//@Override
	public void getLiteralsUsed(Set<LiteralInstance> resultSet) {
        if (!evaluable) {
            throw new IllegalStateException("Attempt to get literals used by non-evaluable goal desc");
        }
        negatedGoal.getLiteralsUsed(resultSet);
	}

	//@Override
	public DefaultGoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        if (evaluable) {
            return this;
        } else {
        	DefaultGoalDesc newSub = (DefaultGoalDesc) negatedGoal.instantiate(parameters, objects);
        	return new NotGoalDesc(newSub);
        }
	}

	//@Override
	public boolean isEvaluable() {
		return evaluable;
	}
	
	@Override
	public String toString(){
		
        return "(not ("+negatedGoal+"))";		
	}

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		negatedGoal.getMethods(preconditionMethods);
	}

	
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState) {
		//TODO for now assume its satisfied
		return false;
	}

}
