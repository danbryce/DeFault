package edu.usu.cs.pddl.domain;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.goalseffects.NotGoalDesc;
import edu.usu.cs.pddl.parser.DisjunctionGoalDesc;

public class ImplyGoalDesc implements GoalDesc {

	private final GoalDesc antecedent;
	private final GoalDesc consequent;
	
	public ImplyGoalDesc(GoalDesc antecedent2, GoalDesc consequent2) {
		this.antecedent = antecedent2;
		this.consequent = consequent2;
	}

	@Override
	public boolean evaluate(ConsistentLiteralSet literals) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void getMethods(Set<MethodDef> preconditionMethods) {
		// TODO Auto-generated method stub

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
	public void getLiteralsUsed(Set<LiteralInstance> resultSet) {
		// TODO Auto-generated method stub

	}

//	@Override
//	public LiteralOperation instantiate(
//			Map<FormalArgument, PDDLObject> parameters, Set<PDDLObject> objects) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public boolean isEvaluable() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters,
			Set<PDDLObject> objects) {
		// TODO Auto-generated method stub
		return null;
	}

	public String toString() 
	{
		StringBuffer result = new StringBuffer();
		result.append("(imply ").append(antecedent).append(" ").append(consequent).append(")");
		return result.toString();
	}
	
	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {
		List<GoalDesc> disjuncts = new ArrayList<GoalDesc>();
		GoalDesc negatedAntecedent = new NotGoalDesc(antecedent);
		disjuncts.add(negatedAntecedent);
		disjuncts.add(consequent);
		GoalDesc g = new DisjunctionGoalDesc(disjuncts);
		return g.toDNF(quantifiedVariableMap, objects, startState);
	}

	@Override
	public void renameVariables(Map<FormalArgument, FormalArgument> nameMap)
			throws Exception {
		throw new Exception("Renaming variables in Imply, should have been eliminated before standardization");

	}

	@Override
	public GoalDesc deepCopy() {
		// TODO Auto-generated method stub
		return new ImplyGoalDesc(antecedent.deepCopy(), consequent.deepCopy());
	}

}
