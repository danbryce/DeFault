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

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class DefaultProblem implements Problem
{
	private String name = null;
	private Domain domain = null;
	private Set<PDDLObject> objects = null;
	private ConsistentLiteralSet startState = null;
	private Set<Proposition> initialState = null;
//	private final GoalDesc goal;
	private List<DefaultGoalDesc> goals = null;
	IncompleteActionInstance goalAction = null;
	private List<IncompleteActionInstance> actions = null;
	
	private Map<PredicateDef, PredicateInstance> dynamicPredicates = null;
	private Map<PredicateDef, PredicateInstance> staticPredicates = null;

	public DefaultProblem(){
		
	}
	
	public DefaultProblem(final String name, 
			final Domain domain, 
			final Set<PDDLObject> objects, 
			final ConsistentLiteralSet startState, 
			final DefaultGoalDesc goal) {
		this.name = name;
		this.domain = domain;
		this.objects = objects;
		this.startState = startState;
		goals = new ArrayList<DefaultGoalDesc>();
		goals.add(goal);
			
			Collection<PredicateLiteral> literals = startState.getPredicateLiterals();
		initialState = new HashSet<Proposition>();
		for (PredicateLiteral literal : literals) {
			if (literal.getValue()) {
				initialState.add(new Proposition(literal.getInstance()));
			}
		}
	}
	
	public DefaultProblem(final String name,
			final Domain domain,
			final Set<PDDLObject> objects,
			final ConsistentLiteralSet startState,
			final List<DefaultGoalDesc> goals) {
		this.name = name;
		this.domain = domain;
		this.objects = objects;
		this.startState = startState;
		this.goals = goals;
	}

	public Domain getDomain() {
		return domain;
	}

	/*
	 * Returns the first element of the goal array
	 */
	public DefaultGoalDesc getGoal() {
		return goals.get(0);
	}
	
	public List<DefaultGoalDesc> getGoals() {
		return goals;
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
       	sw.append("(:goals \n");
       	for(DefaultGoalDesc goal : goals) {
       		sw.append(goal.toString());
       	}
       	sw.append("\n )\n");
       	sw.append(")\n");
          
    	
    	return sw.toString();
    }

	@Override
	public List<IncompleteActionInstance> getActions() {
		if(actions == null){
			try {
				actions = PddlImporter.createActionInstances(domain, this);
			} catch (IllDefinedProblemException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return actions;
	}

	@Override
	public IncompleteActionInstance getGoalAction() {
		if(goalAction == null){
			goalAction = PddlImporter.createGoal(getGoal());
		}
		return goalAction;
	}

	@Override
	public Set<Proposition> getInitialState() {
		// TODO Auto-generated method stub
		return initialState;
	}

	@Override
	public void setGoalAction(IncompleteActionInstance createGoal) {
		goalAction = createGoal;
	}
    
}
