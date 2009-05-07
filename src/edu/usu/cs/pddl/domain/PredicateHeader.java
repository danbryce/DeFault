/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateHeader.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.*;

/**
 * Placeholder for a predicate used in an {@link ActionDef} before actual objects
 * have been matched to the action arguments. Replaced by an {@link PredicateInstance}
 * when objects are instantiated.
 */
public class PredicateHeader implements GoalDesc
{
	private final PredicateDef definition;
	private final List<FormalArgument> arguments;

	public PredicateHeader(final PredicateDef definition, final List<FormalArgument> arguments) {
		this.definition = definition;
		this.arguments = arguments;
	}

	public boolean evaluate(ConsistentLiteralSet literals) {
		throw new UnsupportedOperationException("Predicate headers are not evaluable (predicate " 
				+ definition.getName() + ")");
	}

	public void getLiteralsUsed(Set<LiteralInstance> resultSet)
	{
		throw new UnsupportedOperationException("Predicate headers are not evaluable (predicate " 
				+ definition.getName() + ")");
	}

	public boolean isEvaluable() {
		return false;
	}

	public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
		List<PDDLObject> actualArgs = new ArrayList<PDDLObject>(arguments.size());
		for (FormalArgument a : arguments) {
			PDDLObject obj = parameters.get(a);
			if (obj == null) {
				throw new IllegalStateException("No argument suppled for " + a.getName());
			}
			actualArgs.add(obj);
		}
		return new PredicateInstance(definition, actualArgs);
	}

	public String toString()
	{
		return definition.getName() + arguments;
	}

	
	public void getMethods(List<MethodDef> preconditionMethods) {
		preconditionMethods.add(this.definition);
	}

	public MethodDef getDefinition() {
		return definition;
	}

	
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState) {
		//assume satisfied for now if dynamic
		if(this.definition.isDynamic())
			return false;
		
		PDDLObject fo = new PDDLObject("DansFakeObjectForVariables");
		
		//"instantiate" predicate 
		List<PDDLObject> instantiatedObjects = new ArrayList<PDDLObject>();
		for(FormalArgument fa : arguments){
			PDDLObject o = partialArgMap.get(fa);
			if(o != null){
				instantiatedObjects.add(o);
			}
			else{
				
				instantiatedObjects.add(fo);
			}
		}
		
		//may be satisfied if there is a startState Pred whose objects match those
		//in the instantiatedObjects
		for(PredicateLiteral l : startState.getPredicateLiterals()){
			if(!l.getInstance().getDefinition().equals(this.getDefinition()))
				continue;
			
			List<PDDLObject> initPredObjects = l.getInstance().getArguments();
			boolean allMatch = true;
			for(int i = 0; i< instantiatedObjects.size(); i++){
				PDDLObject instObject = instantiatedObjects.get(i);
				PDDLObject initObject = initPredObjects.get(i);
				if(!instObject.equals(fo) && !instObject.equals(initObject)){
					allMatch = false;
					break;
				}
			}
			if(allMatch){
				return false;
			}
		}
		
		
		return true;
	}
}
