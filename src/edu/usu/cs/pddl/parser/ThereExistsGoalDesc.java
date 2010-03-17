package edu.usu.cs.pddl.parser;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.FalseGoal;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.TrueGoal;

public class ThereExistsGoalDesc extends QuantifiedGoal implements GoalDesc  {


	public ThereExistsGoalDesc(List<FormalArgument> variables,
			GoalDesc goal2) {
		super(variables, goal2);
	}

	public String toString() 
	{
		String sep = "";
		StringBuffer result = new StringBuffer();
		result.append("(exists (");
		for (FormalArgument f : variables) {
			result.append(sep).append(f);
			sep = " ";
		}
		result.append(") ").append(goal).append(")");
		return result.toString();
	}

	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {
		//turn exist into disjunction
		if(variables.size() == 0){
			return goal.toDNF(quantifiedVariableMap, objects, startState);
		}
		else{
			GoalDesc result = null;
			List<GoalDesc> conjuncts = new ArrayList<GoalDesc>();
			
			ThereExistsGoalDesc copy = (ThereExistsGoalDesc) this.deepCopy();
			FormalArgument fa = copy.variables.remove(0);
			for(PDDLObject o : objects){
				if(fa.typeMatches(o)){
					quantifiedVariableMap.put(fa, o);
					GoalDesc g = copy.toDNF(quantifiedVariableMap, objects, startState);
					quantifiedVariableMap.remove(fa);
					if(g instanceof FalseGoal){
						//do nothing
					}
					else if(g instanceof TrueGoal){
						return g;
					}
					else{
						conjuncts.add(g);
					}
				}
			}
			if(conjuncts.size() == 0){
				result = new FalseGoal();
			}
			else{
				result = new DisjunctionGoalDesc(conjuncts);
			}
			return result.toDNF(quantifiedVariableMap, objects, startState);
			
		}
	}
	@Override
	public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters,
			Set<PDDLObject> objects) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState,
			Set<PDDLObject> allObjects) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public GoalDesc deepCopy() {
		if(goal != null){
			return new ThereExistsGoalDesc(variables, goal.deepCopy());
		}
		else{
			return new ThereExistsGoalDesc(variables, null);
		}
	}


}
