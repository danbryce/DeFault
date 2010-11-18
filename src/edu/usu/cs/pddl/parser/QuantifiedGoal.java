package edu.usu.cs.pddl.parser;

import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.MethodDef;
import edu.usu.cs.pddl.domain.PDDLObject;

public class QuantifiedGoal implements GoalDesc {
	protected List<FormalArgument> variables;
	protected GoalDesc goal;

	public QuantifiedGoal(List<FormalArgument> variables2, GoalDesc goal2) {
		this.variables=variables2;
		this.goal = goal2;
	}


	public List<FormalArgument> getVariables() {
		return variables;
	}


	public GoalDesc getGoal() {
		return goal;
	}


	@Override
	public boolean evaluate(ConsistentLiteralSet literals) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void getLiteralsUsed(Set<LiteralInstance> resultSet) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getMethods(Set<MethodDef> preconditionMethods) {
		// TODO Auto-generated method stub

	}

	@Override
	public GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters,
			Set<PDDLObject> objects) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isEvaluable() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean notSatisfiedBy(
			Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState,
			Set<PDDLObject> alllObjects) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantifiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void renameVariables(Map<FormalArgument, FormalArgument> nameMap) throws Exception {
		throw new Exception("Found a nested quantifier in renameVariables()");
	}


	public void setGoal(GoalDesc g) {
		goal = g;
	}


	public void setVariables(List<FormalArgument> newQuantifiers) {
		variables = newQuantifiers;
	}


	@Override
	public GoalDesc deepCopy() {
		// TODO Auto-generated method stub
		return null;
	}

}
