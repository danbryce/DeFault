/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ConjunctionGoalDesc.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.goalseffects;

import java.util.*;

import edu.usu.cs.pddl.domain.*;

/**
 * An 'and' goal.
 */
public class ConjunctionGoalDesc implements GoalDesc
{
    private final boolean evaluable;
    private List<? extends GoalDesc> subGoals;
    
    public ConjunctionGoalDesc(List<? extends GoalDesc> subGoals) {
        this.subGoals = subGoals;
        
        boolean tempEval = true;
        for (GoalDesc sg : subGoals) {
            if (!sg.isEvaluable()) {
                tempEval = false;
            }
        }
        evaluable = tempEval;
    }
    
    public boolean isEvaluable() {
        return evaluable;
    }
    
    public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
        if (evaluable) {
            return this;
        } else {
            List<GoalDesc> newSubs = new ArrayList<GoalDesc>(subGoals.size());
            for (GoalDesc sg : subGoals) {
                newSubs.add((GoalDesc) sg.instantiate(parameters, objects));
            }
            return new ConjunctionGoalDesc(newSubs);
        }
    }

    /* (non-Javadoc)
     * @see edu.usu.cs.pddl.domain.GoalDesc#evaluate(java.util.Collection)
     */
    public boolean evaluate(ConsistentLiteralSet literals) {
        for (GoalDesc sg : subGoals) {
            if (!sg.evaluate(literals)) {
                return false;
            }
        }
        return true;
    }
    
    public void getLiteralsUsed(Set<LiteralInstance> resultSet)
    {
        if (!evaluable) {
            throw new IllegalStateException("Attempt to get literals used by non-evaluable goal desc");
        }
        for (GoalDesc sg : subGoals) {
            sg.getLiteralsUsed(resultSet);
        }
    }
    
    public String toString() 
    {
        String sep = "";
        StringBuffer result = new StringBuffer();
        result.append("(and ");
        for (GoalDesc goal : subGoals) {
            result.append(sep).append(goal);
            sep = " ";
        }
        result.append(")");
        return result.toString();
    }

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		// TODO Auto-generated method stub
		for(GoalDesc g : subGoals)
			g.getMethods(preconditionMethods);
	}

	
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState) {
		//if any precondition is not satisfied then true, else false
		for(GoalDesc sg :subGoals){
			if(sg.notSatisfiedBy(partialArgMap, startState)){
				return true;
			}
		}
		return false;
	}
}
