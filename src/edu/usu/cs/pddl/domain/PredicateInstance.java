/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateInstance.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.List;
import java.util.Map;
import java.util.Set;



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


	public void getMethods(Set<MethodDef> preconditionMethods) {
		preconditionMethods.add(this.getDefinition());
	}


	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState,
			Set<PDDLObject> allObjects) {
		// TODO assmue is satisfied for now
		for(PredicateLiteral l : startState.getPredicateLiterals()){
			if(l.getInstance().equals(this)){
				return false;
			}
		}
		return true;
	}

	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {
		// TODO Auto-generated method stub
		return this;
	}

	@Override
	public void renameVariables(Map<FormalArgument, FormalArgument> nameMap)
	throws Exception {
		// TODO Auto-generated method stub

	}

	

	
	@Override
	public GoalDesc deepCopy() {
		// TODO Auto-generated method stub
		return this;
	}

	@Override
	public int compareTo(Object p) {
		return this.toString().compareTo(((LiteralInstance)p).toString());
		
	}
}
