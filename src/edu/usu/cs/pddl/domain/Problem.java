/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Problem.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.io.StringWriter;
import java.util.*;

public class Problem
{
	private final String name;
	private final Domain domain;
	private final Set<PDDLObject> objects;
	private final ConsistentLiteralSet startState;
	private final GoalDesc goal;

	private Map<PredicateDef, PredicateInstance> dynamicPredicates = null;
	private Map<PredicateDef, PredicateInstance> staticPredicates = null;

	public Problem(final String name, 
			final Domain domain, 
			final Set<PDDLObject> objects, 
			final ConsistentLiteralSet startState, 
			final GoalDesc goal) {
		this.name = name;
		this.domain = domain;
		this.objects = objects;
		this.startState = startState;
		this.goal = goal;
	}

	public Domain getDomain() {
		return domain;
	}

	public GoalDesc getGoal() {
		return goal;
	}

	public String getName() {
		return name;
	}

	public Set<PDDLObject> getObjects() {
		return objects;
	}

	public ConsistentLiteralSet getStartState() {
		return startState;
	}

	public Boolean isDynamicPredicateInstance(PredicateInstance p){

		if(dynamicPredicates.get(p.getDefinition()) != null){
			return true;
		}
		else if(staticPredicates.get(p.getDefinition()) != null){
			return false;
		}
		else{
			if(checkDynamicPredicate(p)){
				dynamicPredicates.put((PredicateDef) p.getDefinition(), p);
				return true;
			}
			else{
				staticPredicates.put((PredicateDef) p.getDefinition(), p);
				return false;
			}
		}

	}

	private boolean checkDynamicPredicate(PredicateInstance p) {
		//static (not dynamic) if 
		// 1) it is either not given as an effect, or
		// 2) it is the effect of an action whose precondition
		//    will never be satisfied, or
		// 3) it is given as an effect but doesn't change its value

		if(!isAnEffect(p) || 
				isAnEffectOfUnexecutableAction(p) ||
				isAnEffectButNeverChangesValue(p)){
			return false;
		}
		return true;	
	}

	private boolean isAnEffectButNeverChangesValue(PredicateInstance p) {
		// TODO Auto-generated method stub
		return false;
	}

	private boolean isAnEffectOfUnexecutableAction(PredicateInstance p) {
		// TODO Auto-generated method stub
		return false;
	}

	private boolean isAnEffect(PredicateInstance p) {
		
		
		return false;
	}
	
	

    
    public String toString(){
    	StringWriter sw = new StringWriter();
    	
    	sw.append("(define (problem "); sw.append(name); sw.append(")\n");
    	sw.append(" (:domain "); sw.append(domain.getName()); sw.append(")\n");
    	sw.append("(:objects \n");
    	for(PDDLObject o : objects)
    		sw.append("   " + o.toString() + "\n");
    	sw.append(" )\n");
    	sw.append("(:init \n");
    	sw.append(startState.toString());
    	sw.append(" )\n");
       	sw.append("(:goal \n");
    	sw.append(goal.toString());
       	sw.append("\n )\n");
       	sw.append(")\n");
          
    	
    	return sw.toString();
    }
    
}
