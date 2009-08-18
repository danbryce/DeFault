/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Problem.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain.incomplete;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.PredicateInstance;
import edu.usu.cs.pddl.domain.PredicateLiteral;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class IncompleteProblem implements Problem
{
	private String name = null;
	private Domain domain = null;
	private Set<PDDLObject> objects = null;
	private ConsistentLiteralSet startState = null;
	private Set<Proposition> initialState = null;
	//	private final GoalDesc goal;
	private List<GoalDesc> goals = null;
	IncompleteActionInstance goalAction = null;
	private List<ActionInstance> actionInstances = null;

	//	private Map<PredicateDef, PredicateInstance> dynamicPredicates = null;
	//	private Map<PredicateDef, PredicateInstance> staticPredicates = null;


	public IncompleteProblem(){

	}

	public IncompleteProblem(final String name, 
			final Domain domain, 
			final Set<PDDLObject> objects, 
			final ConsistentLiteralSet startState, 
			final GoalDesc goal) {
		this.name = name;
		this.domain = domain;
		this.objects = objects;
		this.startState = startState;
		this.goals = new ArrayList<GoalDesc>();
		this.goals.add(goal);


		Collection<PredicateLiteral> literals = startState.getPredicateLiterals();
		initialState = new HashSet<Proposition>();
		for (PredicateLiteral literal : literals) {
			if(domain.isDynamic((PredicateDef) literal.getInstance().getDefinition())){
				if (literal.getValue()) {
					Proposition p = Proposition.getPropositionFromIndex(literal.getInstance());			
					initialState.add(p);
				}
			}
		}


	}

	public IncompleteProblem(final String name,
			final Domain domain,
			final Set<PDDLObject> objects,
			final ConsistentLiteralSet startState,
			final List<GoalDesc> goals) {
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
	public GoalDesc getGoal() {
		return goals.get(0);
	}



	public List<GoalDesc> getGoals() {
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

		//		if(dynamicPredicates.get(p.getDefinition()) != null){
		//			return true;
		//		}
		//		else if(staticPredicates.get(p.getDefinition()) != null){
		//			return false;
		//		}
		//		else{
		//			if(checkDynamicPredicate(p)){
		//				dynamicPredicates.put((PredicateDef) p.getDefinition(), p);
		//				return true;
		//			}
		//			else{
		//				staticPredicates.put((PredicateDef) p.getDefinition(), p);
		//				return false;
		//			}
		//		}
		return true;
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
		boolean partial = false;
		if(partial){
			for(Proposition p : initialState)
				sw.append("\t").append(p.toString()).append("\n");
		}
		else{
			sw.append(startState.toString());	
		}

		sw.append(" )\n");
		sw.append("(:goal \n");
		for(GoalDesc goal : goals) {
			sw.append(goal.toString());
		}
		sw.append("\n )\n");
		sw.append(")\n");


		return sw.toString();
	}

	@Override
	public List<ActionInstance> getActions() {
		if(actionInstances == null){
			try {
				actionInstances = PddlImporter.createActionInstances(domain, this);
			} catch (IllDefinedProblemException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return actionInstances;
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


	public void setGoalAction(IncompleteActionInstance createGoal) {
		goalAction = createGoal;
	}

	@Override
	public void setActionInstances(
			List<ActionInstance> actionInstances) {
		this.actionInstances = actionInstances;
	}


}
