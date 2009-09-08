package edu.usu.cs.pddl.domain;

import java.util.List;
import java.util.Map;
import java.util.Set;


public interface GoalDesc {

	void getMethods(List<MethodDef> preconditionMethods);

	boolean notSatisfiedBy(Map<FormalArgument, PDDLObject> partialArgMap,
			ConsistentLiteralSet startState, Set<PDDLObject> allObjects);

	GoalDesc toDNF(Map<FormalArgument, PDDLObject> quantfiedVariableMap, Set<PDDLObject> objects, ConsistentLiteralSet startState);

	boolean isEvaluable();

	void getLiteralsUsed(Set<LiteralInstance> resultSet);

	GoalDesc instantiate(Map<FormalArgument, PDDLObject> parameters,
			Set<PDDLObject> objects);

	boolean evaluate(ConsistentLiteralSet literals);

	void renameVariables(Map<FormalArgument, FormalArgument> nameMap) throws Exception;

	GoalDesc deepCopy();


	
}
