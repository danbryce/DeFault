package edu.usu.cs.pddl.parser;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.FalseGoal;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.GoalUtils;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PredicateHeader;
import edu.usu.cs.pddl.domain.TrueGoal;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;

public class ForAllGoalDesc extends QuantifiedGoal implements GoalDesc {

	public ForAllGoalDesc(List<FormalArgument> variables2, GoalDesc goal2) {
		super(variables2, goal2);
	}


	public String toString() 
	{
		String sep = "";
		StringBuffer result = new StringBuffer();
		result.append("(forall (");
		for (FormalArgument f : variables) {
			result.append(sep).append(f);
			sep = " ";
		}
		result.append(") ").append(goal).append(")");
		return result.toString();
	}


	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {
		//turn forall into conjunction
		if(variables.size() == 0){
			return goal.toDNF(quantifiedVariableMap, objects, startState);
		}
		else{
			GoalDesc result = null;
			List<GoalDesc> conjuncts = new ArrayList<GoalDesc>();
			
			ForAllGoalDesc copy = (ForAllGoalDesc) this.deepCopy();
			FormalArgument fa = copy.variables.remove(0);
			for(PDDLObject o : objects){
				if(fa.typeMatches(o)){
					quantifiedVariableMap.put(fa, o);
					GoalDesc g = copy.toDNF(quantifiedVariableMap, objects, startState);
					quantifiedVariableMap.remove(fa);
					if(g instanceof FalseGoal){
						return g;
					}
					else if(g instanceof TrueGoal){
						//conjuncts.add(g);
					}
					else{
						conjuncts.add(g);
					}
				}
			}
			if(conjuncts.size() == 0){
				return new TrueGoal();
			}
			else{
				result = new ConjunctionGoalDesc(conjuncts);
			}
			return result.toDNF(quantifiedVariableMap, objects, startState);
			
		}
		
	}

	@Override
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState,
			Set<PDDLObject> allObjects) {
		// need to first check if predicates that are not effected by quantifiers are satisfied
		GoalDesc withoutQuantifiers = GoalUtils.stripQuantifiers(this);
		boolean result = false;
		if(withoutQuantifiers.notSatisfiedBy(partialArgMap, startState, allObjects)){
			result = true;
		}
		GoalUtils.appendQuantifier(this, withoutQuantifiers);
		if(result){
			return result;
		}
		else{

			// if these are satisfied, then check quantified predicates
			// create a new Forall that instantiates first variable in all ways
			ForAllGoalDesc fg = (ForAllGoalDesc)this.deepCopy();
			FormalArgument fa = fg.getVariables().remove(0);
			GoalDesc ffg = null;
			if(fg.getVariables().size() == 0){
				ffg = fg.getGoal();
			}
			else{
				ffg = fg;
			}
			for(PDDLObject o : allObjects){
				if(fa.typeMatches(o)){
					partialArgMap.put(fa, o);
					if(ffg.notSatisfiedBy(partialArgMap, startState, allObjects)){
						return true;
					}
					partialArgMap.remove(fa);
				}
			}

		}

		return false;
	}

	@Override
	public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters,
			Set<PDDLObject> objects) {

		if(variables.size() == 0){
			return goal.instantiate(parameters, objects);
		}
		
		
		ForAllGoalDesc copy = (ForAllGoalDesc)this.deepCopy();
		FormalArgument fa = copy.variables.remove(0);

		List<GoalDesc> instantiated = new ArrayList<GoalDesc>();
		
		for(PDDLObject o : objects){
			if(fa.typeMatches(o)){
				parameters.put(fa, o);
				instantiated.add(copy.instantiate(parameters, objects));
				parameters.remove(fa);
			}
		}

		//combine list of instantiated
		Set<GoalDesc> results = new HashSet<GoalDesc>();
		for(GoalDesc g : instantiated){
			if(g instanceof ConjunctionGoalDesc){
				results.addAll(((ConjunctionGoalDesc) g).getSubGoals());
			}
			else if (g instanceof PredicateHeader){
				results.add(g);
			}
		}
		return new ConjunctionGoalDesc(new ArrayList<GoalDesc>(results));

		//		Map<FormalArgument, Set<PDDLObject>> universalInstantiations = new HashMap<FormalArgument, Set<PDDLObject>>();
		//		for(FormalArgument fa : variables){
		//			Set<PDDLObject> objs = new HashSet<PDDLObject>();
		//			for(PDDLObject o : objects){
		//				if(fa.typeMatches(o)){
		//					objs.add(o);
		//				}
		//			}
		//			universalInstantiations.put(fa, objs);
		//		}
		//		List<GoalDesc> subgoals = null;
		//		if(goal instanceof ConjunctionGoalDesc){
		//			ConjunctionGoalDesc cg = (ConjunctionGoalDesc)goal;
		//			subgoals = cg.getSubGoals();
		//		}
		//		else if(goal instanceof PredicateHeader){
		//			subgoals = new ArrayList<GoalDesc>();
		//			subgoals.add(goal);
		//		}
		//		
		//		Set<GoalDesc> instantiatedSubgoals = new HashSet<GoalDesc>();
		//		List<Map<FormalArgument, PDDLObject>> instantiations = new ArrayList<Map<FormalArgument, PDDLObject>>();
		//		instantiations.add(parameters);
		//		for(FormalArgument fa : universalInstantiations.keySet()){
		//		}


	}

	@Override
	public GoalDesc deepCopy() {
		List<FormalArgument> argCopy = new ArrayList<FormalArgument>();
		for(FormalArgument var : variables){
			argCopy.add(var);
		}

		if(goal != null){
			return new ForAllGoalDesc(argCopy, goal.deepCopy());
		}
		else{
			return new ForAllGoalDesc(argCopy, null);
		}
	}

}
