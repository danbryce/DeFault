package edu.usu.cs.planner.ffrisky.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.incomplete.FriskyHeuristic;
import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class PddlImporter {
	public static IncompleteProblem getProblem(Domain domain,
			Problem problem) {

		IncompleteProblem incompleteProblem = new IncompleteProblem();


		// Create initial node
		incompleteProblem.setInitialNode(new FFRiskyNode(problem.getInitialState(), new FriskyHeuristic(problem, domain)));

		// Create goal node
		incompleteProblem.setGoal(createGoal(problem.getGoal()));

		// Get actions
		List<IncompleteActionInstance> actionInstances = problem.getActions();
		try {
			if(actionInstances == null){
			actionInstances = createActionInstances(domain, problem);
			}
		} catch (IllDefinedProblemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		incompleteProblem.setActions(actionInstances);

		return incompleteProblem;
	}

	public static IncompleteActionInstance createGoal(DefaultGoalDesc goalDesc) {
		Set<Proposition> preconditions = new HashSet<Proposition>();
		Set<LiteralInstance> resultSet = new HashSet<LiteralInstance>();
		goalDesc.getLiteralsUsed(resultSet);
		for (LiteralInstance literal : resultSet) {
			preconditions.add(new Proposition(literal));
		}
		return new IncompleteActionInstance("goal", preconditions, null, null, null, null, null);
	}

	public static List<IncompleteActionInstance> createActionInstances(
			Domain domain,
			Problem problem)
			throws IllDefinedProblemException {
		List<ActionInstance> instances = new ArrayList<ActionInstance>();
		Set<PDDLObject> allObjects = problem.getObjects();

		// Iterate over all actions, creating multiple instances for each
		// (probably)
		List<ActionDef> actionDefs = domain.getActions();
		for (ActionDef action : actionDefs) {
			List<List<PDDLObject>> allowedActualArgs = getPossibleArguments(
					action, allObjects, problem.getStartState());
			for (List<PDDLObject> actualArgs : allowedActualArgs) {
				ActionInstance instance = new ActionInstance(action,
						actualArgs, allObjects);
				instances.add(instance);
			}
		}
		
		List<IncompleteActionInstance> actions = new ArrayList<IncompleteActionInstance>();
		for (ActionInstance actionInstance : instances) {
			actions.add(new IncompleteActionInstance(actionInstance));
		}
		return actions;
	}

	private static List<List<PDDLObject>> getPossibleArguments(
			ActionDef action, Set<PDDLObject> allObjects,
			ConsistentLiteralSet startState) throws IllDefinedProblemException {
		final List<PDDLObject> noObjects = Collections.emptyList();
		List<List<PDDLObject>> result = new ArrayList<List<PDDLObject>>();
		List<FormalArgument> arguments = action.getArguments();

		if (arguments.size() > allObjects.size()) {
			throw new IllDefinedProblemException(
					"Not enough objects for arguments of action "
					+ action.getName());
		} else if (arguments.size() == 0) {
			result.add(noObjects);
		} else {
			// General case of 1 or more arguments

			// Keep the results as a list of partial solutions, where each
			// solution is a list of arguments
			// First stage is one solution, with no arguments-so-far
			result.add(noObjects);
			final Set<PDDLObject> remainingObjs = new HashSet<PDDLObject>();

			for (FormalArgument arg : arguments) {
				// After dealing with argument one, newSolns will be a list of
				// arrays of length one, etc
				List<List<PDDLObject>> newSolns = new ArrayList<List<PDDLObject>>();

				for (List<PDDLObject> argsSoFar : result) {
					// Get correct set of all objects not used in the argument
					// list so far
					remainingObjs.clear();
					remainingObjs.addAll(allObjects);
					remainingObjs.removeAll(argsSoFar);

					for (PDDLObject obj : remainingObjs) {
						if (arg.typeMatches(obj)) {
							final List<PDDLObject> newArgList = new ArrayList<PDDLObject>(
									argsSoFar);
							newArgList.add(obj);
							if (action.isLegalPartialInstantiation(newArgList,
									startState)) {
								newSolns.add(newArgList);
							}
						}
					}
				}
				result = newSolns;
			}
		}
		return result;
	}
}
