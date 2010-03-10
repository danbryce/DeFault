/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PredicateHeader.java 32 2007-02-21 16:29:39Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;
import edu.usu.cs.pddl.parser.DisjunctionGoalDesc;

/**
 * Placeholder for a predicate used in an {@link ActionDef} before actual objects
 * have been matched to the action arguments. Replaced by an {@link PredicateInstance}
 * when objects are instantiated.
 */
public class PredicateHeader implements GoalDesc
{
	private final PredicateDef definition;
	private List<? extends Term> arguments;

	public PredicateHeader(final PredicateDef definition, final List<? extends Term> arguments) {
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
		List<Term> actualArgs = new ArrayList<Term>(arguments.size());
		boolean ground = true;
		for (Term a : arguments) {
			Term obj = null;
			if(a instanceof PDDLObject){
				obj = (PDDLObject)a;
			}
			else if(a instanceof ConstantDef) {
				obj = new PDDLObject(((ConstantDef) a).getName(), ((ConstantDef) a).getType());
			}
			else {
				obj = parameters.get(a);
				if (obj == null) {
					ground = false;
					obj = a;
					//throw new IllegalStateException("No argument suppled for " + a.getName());
				}

			}
			actualArgs.add(obj);

		}
		if(ground){

			List<PDDLObject> args = new ArrayList<PDDLObject>();
			for(Term t : actualArgs){
				args.add((PDDLObject)t);
			}
			return new PredicateInstance(definition, args);
		}
		else{
			return new PredicateHeader(definition, actualArgs);
		}
	}

	public String toString()
	{
		return definition.getName() + arguments;
	}

	@Override
	public void getMethods(List<MethodDef> preconditionMethods) {
		preconditionMethods.add(this.definition);
	}

	public MethodDef getDefinition() {
		return definition;
	}
	
	public List<? extends Term> getArguments() {
		return arguments;
	}

	//returns false if literal is dynamic or an initial proposition unifies with predicate (and predicate is ground)
	//returns true otherwise

	@Override
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState,
			Set<PDDLObject> allObjects) {
		//assume satisfied for now if dynamic
		if(this.definition.isDynamic())
			return false;

		PDDLObject fo = new PDDLObject("DansFakeObjectForVariables");

		//"instantiate" predicate 
		List<PDDLObject> instantiatedObjects = new ArrayList<PDDLObject>();
		for(Term fa : arguments){

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

	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {

		GoalDesc instan = this.instantiate(quantifiedVariableMap, objects);
		if(instan instanceof PredicateInstance){
			if(!this.getDefinition().isDynamic()){
				if(!this.notSatisfiedBy(quantifiedVariableMap, startState, objects)){
					//this is a ground predicate that is true in the initial state
					return new TrueGoal();
				}
				else{
					return new FalseGoal();
				}
			}
		}
		//		else{
		return instan;//this.instantiate(quantifiedVariableMap, objects);
		//		}
	}

	@Override
	public void renameVariables(Map<FormalArgument, FormalArgument> nameMap) {
		List<FormalArgument> newArguments = new ArrayList<FormalArgument>();

		for(Term fa : arguments){
			FormalArgument f = nameMap.get(fa);
			if(f == null){
				newArguments.add((FormalArgument) fa);
			}
			else{
				newArguments.add(f);
			}
		}
		this.arguments = newArguments;
	}

	@Override
	public GoalDesc deepCopy() {
		// TODO Auto-generated method stub
		return this;
	}


}
