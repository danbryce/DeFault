/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ActionInstance.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * An action with {@link PDDLObject}s as arguments, instead of variables.
 */
public class ActionInstance
{
    private final ActionDef definition;
    private final Map<FormalArgument, PDDLObject> argMapping = new HashMap<FormalArgument, PDDLObject>();
    private final GoalDesc preCondition;
    private final Effect effect;
    
    public ActionInstance(ActionDef def, List<PDDLObject> actualArgs, Set<PDDLObject> objects) 
    {
        definition = def;
        List<FormalArgument> args = definition.getArguments();
        if (args.size() != actualArgs.size()) {
            throw new IllegalArgumentException("Wrong number of arguments");
        }
        
        for (int i = 0; i < actualArgs.size(); i++) {
            argMapping.put(args.get(i), actualArgs.get(i));
        }
        
        // Need to 'instantiate' the action
        preCondition = (GoalDesc) definition.getPreCondition().instantiate(argMapping, objects);
        effect = (Effect) definition.getEffect().instantiate(argMapping, objects);
    }
    
    public boolean preConditionSatisfied(ConsistentLiteralSet literals) 
    {
        return preCondition.evaluate(literals);
    }
    
    public ConsistentLiteralSet perform(ConsistentLiteralSet startState) 
    {
        ConsistentLiteralSet endState = new ConsistentLiteralSet(startState);
        effect.apply(startState, endState);
        return endState;
    }
    
    public Set<LiteralInstance> getInputLitInstances() 
    {
        Set<LiteralInstance> result = new HashSet<LiteralInstance>();
        preCondition.getLiteralsUsed(result);
        effect.getLiteralsUsed(result);
        return result;
    }

    public ActionDef getDefinition() {
        return definition;
    }

    public Effect getEffect() {
        return effect;
    }

    public GoalDesc getPreCondition() {
        return preCondition;
    }
    
    public String toString() {
        StringBuffer result = new StringBuffer(definition.getName() + "(");
        String sep = "";
        for (FormalArgument arg : definition.getArguments()) {
            result.append(sep + (argMapping.get(arg)).getName());
            sep = ", ";
        }
        result.append(")");
        return result.toString();
    }
}
