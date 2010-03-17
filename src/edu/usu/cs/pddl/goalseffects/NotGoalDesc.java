/**
 * NotGoalDesc.java
 * author: fm086
 * date: 22.07.2008
 *
 */

package edu.usu.cs.pddl.goalseffects;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.FalseGoal;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PredicateHeader;
import edu.usu.cs.pddl.domain.PredicateInstance;
import edu.usu.cs.pddl.domain.TrueGoal;
import edu.usu.cs.pddl.parser.DisjunctionGoalDesc;
import edu.usu.cs.pddl.parser.ForAllGoalDesc;
import edu.usu.cs.pddl.parser.ThereExistsGoalDesc;

public class NotGoalDesc implements GoalDesc {

	private final boolean evaluable;
	private GoalDesc negatedGoal;

	public NotGoalDesc(GoalDesc newSub){
		this.negatedGoal = newSub;
		evaluable = newSub.isEvaluable();
	}

	public GoalDesc getNegatedGoal() {
		return negatedGoal;
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
	public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
		if (evaluable) {
			return this;
		} else {
			GoalDesc newSub = negatedGoal.instantiate(parameters, objects);
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

	//	(s -g) is -g notsat : g is sat = ! (g is notsat)

	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState,
			Set<PDDLObject> allObjects) {
		//TODO for now assume its satisfied
		return !negatedGoal.notSatisfiedBy(partialArgMap, startState, allObjects);
	}

	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {
		//move negation in
		//distribute ors over ands
		//bring quantifiers out
		GoalDesc result = null;

		if(negatedGoal instanceof PredicateHeader){
			GoalDesc g = this.negatedGoal.toDNF(quantifiedVariableMap, objects, startState);
			if(g instanceof TrueGoal){
				result = new FalseGoal();
			}
			else if (g instanceof FalseGoal){
				result = new TrueGoal();
			}
			else{
				result = new NotGoalDesc(g);
			}
		}
		else if(negatedGoal instanceof PredicateInstance){
			result = this;
		}
		else if(negatedGoal instanceof ConjunctionGoalDesc){
			//use de morgan's on conjunction and call toDNF()

			ConjunctionGoalDesc c = (ConjunctionGoalDesc) negatedGoal;
			List<GoalDesc> disjuncts = new ArrayList<GoalDesc>();
			for(GoalDesc g : c.getSubGoals()){
				disjuncts.add(new NotGoalDesc(g));
			}
			DisjunctionGoalDesc deMorganResult = new DisjunctionGoalDesc(disjuncts);
			result = deMorganResult.toDNF(quantifiedVariableMap, objects, startState);
		}
		else if(negatedGoal instanceof DisjunctionGoalDesc){
			//use de morgan's on disjunction and call toDNF()
			DisjunctionGoalDesc c = (DisjunctionGoalDesc) negatedGoal;
			List<GoalDesc> conjuncts = new ArrayList<GoalDesc>();
			for(GoalDesc g : c.getDisjuncts()){
				conjuncts.add(new NotGoalDesc(g));
			}
			ConjunctionGoalDesc deMorganResult = new ConjunctionGoalDesc(conjuncts);
			result = deMorganResult.toDNF(quantifiedVariableMap, objects, startState);
		}
		else if(negatedGoal instanceof ForAllGoalDesc){
			//turn negated forall into exists negation, and then get DNF for negation
			ForAllGoalDesc g = (ForAllGoalDesc)negatedGoal;
			GoalDesc ng = new ThereExistsGoalDesc(g.getVariables(), new NotGoalDesc(g.getGoal()));
			result = ng.toDNF(quantifiedVariableMap, objects, startState);			
		}
		else if(negatedGoal instanceof ThereExistsGoalDesc){
			//turn negated exits into forall negation, and then get DNF for negation
			ThereExistsGoalDesc g = (ThereExistsGoalDesc)negatedGoal;
			GoalDesc ng = new ForAllGoalDesc(g.getVariables(), new NotGoalDesc(g.getGoal()));
			result = ng.toDNF(quantifiedVariableMap, objects, startState);			

		}

		return result;
	}

	@Override
	public void renameVariables(Map<FormalArgument, FormalArgument> nameMap)
	throws Exception {
		this.negatedGoal.renameVariables(nameMap);		
	}

	@Override
	public GoalDesc deepCopy() {
		// TODO Auto-generated method stub
		return new NotGoalDesc(negatedGoal.deepCopy());
	}



}
