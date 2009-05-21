package edu.usu.cs.partialsatisfactionproblem;

import java.util.*;
import java.util.logging.Logger;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.plangraph.IllDefinedProblemException;

public class PSPSolver {
	private static final Logger logger = Logger.getLogger(PSPSolver.class.getName());
	
	private final Domain domain;
	private final Problem problem;
	private final PSP psp;
	
	private final List<ActionInstance> actionInstances;
	private List<ActionInstance> plan;
	
	public PSPSolver(Domain domain, Problem problem) throws IllDefinedProblemException
	{
		if(domain == null || problem == null) {
			throw new IllegalArgumentException("null domain/problem");
		}
		this.domain = domain;
		this.problem = problem;
		this.actionInstances = createActionInstances(domain, problem);
		logger.info("All action instances in problem:");
		for(ActionInstance ai : actionInstances) {
			logger.info(ai.toString());
		}
		
		this.psp = new PSP(domain, problem, actionInstances);
	}
	
	public List<ActionInstance> solve() {
		plan = null;
		
		plan = psp.getPath();
		
		return plan;
	}
	
	public int getNumLevels()
	{
		if(plan == null) {
			return 0;
		}
		return plan.size();
	}
	
	public int getNodesExpandedCount() {
		if (plan == null) {
			return 0;
		}
		return psp.getNodesExpandedCount();
	}

    private List<ActionInstance> createActionInstances(Domain domain, Problem problem) throws IllDefinedProblemException
	{
		List<ActionInstance> instances = new ArrayList<ActionInstance>();
		Set<PDDLObject> allObjects = problem.getObjects();
		
		// Iterate over all actions, creating multiple instances for each (probably)
		List<ActionDef> actionDefs = domain.getActions();
		for (ActionDef action : actionDefs) 
		{
			List<List<PDDLObject>> allowedActualArgs = getPossibleArguments(action, allObjects, problem.getStartState());
			for (List<PDDLObject> actualArgs : allowedActualArgs) 
			{
				ActionInstance instance = new ActionInstance(action, actualArgs, allObjects);
				instances.add(instance);
			}
		}
		return instances;
	}

    private List<List<PDDLObject>> getPossibleArguments(ActionDef action,
											            Set<PDDLObject> allObjects, 
											            ConsistentLiteralSet startState)
			throws IllDefinedProblemException
	{
		final List<PDDLObject> noObjects = Collections.emptyList();
		List<List<PDDLObject>> result = new ArrayList<List<PDDLObject>>();
		List<FormalArgument> arguments = action.getArguments();
		
		if (arguments.size() > allObjects.size()) {
			throw new IllDefinedProblemException("Not enough objects for arguments of action " + action.getName());
		} else if (arguments.size() == 0) {
			result.add(noObjects);
		} else {
			// General case of 1 or more arguments
		
			// Keep the results as a list of partial solutions, where each solution is a list of arguments
			// First stage is one solution, with no arguments-so-far
			result.add(noObjects);
			final Set<PDDLObject> remainingObjs = new HashSet<PDDLObject>();
		
			for (FormalArgument arg : arguments) {
				// After dealing with argument one, newSolns will be a list of arrays of length one, etc
				List<List<PDDLObject>> newSolns = new ArrayList<List<PDDLObject>>();
		
				for (List<PDDLObject> argsSoFar : result) {
					// Get correct set of all objects not used in the argument list so far
					remainingObjs.clear();
					remainingObjs.addAll(allObjects);
					remainingObjs.removeAll(argsSoFar);
		
					for (PDDLObject obj : remainingObjs) {
						if (arg.typeMatches(obj)) {
							final List<PDDLObject> newArgList = new ArrayList<PDDLObject>(argsSoFar);
							newArgList.add(obj);
							if(action.isLegalPartialInstantiation(newArgList, startState)){
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

	public long getTotalTimeTaken() {
		return psp.getTotalTimeTaken();
	}
	
	public long getHeuristicTimeTaken() {
		return psp.getHeuristicTimeTaken();
	}
}
