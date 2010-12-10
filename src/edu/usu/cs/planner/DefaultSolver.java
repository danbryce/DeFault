package edu.usu.cs.planner;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.DefaultActionInstance;
import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class DefaultSolver implements Solver {

	private static  Logger logger = Logger.getLogger(DefaultSolver.class
			.getName());

	protected Domain domain = null;
	protected Problem problem = null;
	protected List<ActionInstance> actionInstances = null;
	protected List<ActionInstance> plan = null;
	protected Heuristic heuristic = null;
	protected Search search = null;
	protected SearchStatistics searchStatistics = null;
	protected long maxHeapUsageSize = 0;
	protected long maxRunTime = 0;
	private static final long DEFAULT_MAX_HEAP_USAGE = 1024 * 1024 * 200;
	private static final long DEFAULT_MAX_RUNTIME = 1000 * 60 * 1;
	protected SolverOptions solverOptions = null;
	protected int metricDimension = 1;

	protected Set<ActionInstance> relevantActions = null;
	protected Set<Integer> relevantFacts = null;
	
	public Set<Integer> getRelevantFacts() {
		return relevantFacts;
	}

	public void setRelevantFacts(Set<Integer> relevantFacts) {
		this.relevantFacts = relevantFacts;
	}

	public DefaultSolver(Domain domain, Problem problem,
			SearchStatistics searchStatistics, SolverOptions solverOptions)
			throws IllDefinedProblemException {
		if (domain == null || problem == null) {
			throw new IllegalArgumentException("null domain/problem");
		}

		long availableMemory = Runtime.getRuntime().maxMemory() - Runtime.getRuntime().freeMemory();

		setMaxHeapUsage(Math.min(DEFAULT_MAX_HEAP_USAGE, availableMemory));
		setMaxRunTime(DEFAULT_MAX_RUNTIME);

		this.domain = domain;
		this.problem = problem;
		this.solverOptions = solverOptions;
		this.searchStatistics = searchStatistics;
		if(this.problem.getActions() == null)//This is a change created by CW during 8.10
		{
			System.out.println("IN CASE: this.problem.getActions() == null");
			this.actionInstances = PddlImporter.createActionInstances(domain,problem);// createActionInstances(domain, problem);
			this.problem.setActionInstances(this.actionInstances);
		}
		else
		{
			this.actionInstances = problem.getActions();
		}

		logger.info("All action instances in problem:");
		for (ActionInstance ai : actionInstances) {
			logger.info(ai.toString());
		}

	}

	public int getMetricDimension() {
		return metricDimension;
	}

	public void setMaxRunTime(long defaultMaxRuntime) {
		this.maxRunTime = defaultMaxRuntime;
	}

	public void setMaxHeapUsage(long defaultMaxHeapUsage) {
		this.maxHeapUsageSize = defaultMaxHeapUsage;
	}

	public DefaultSolver() {

	}

	private List<DefaultActionInstance> createActionInstances(Domain domain,
			Problem problem) throws IllDefinedProblemException {
		List<DefaultActionInstance> instances = new ArrayList<DefaultActionInstance>();
		Set<PDDLObject> allObjects = problem.getObjects();

		// Iterate over all actions, creating multiple instances for each
		// (probably)
		List<ActionDef> actionDefs = domain.getActions();
		int actIndex = 1;
		for (ActionDef action : actionDefs) {
			List<List<PDDLObject>> allowedActualArgs = getPossibleArguments(
					action, allObjects, problem.getStartState());
			for (List<PDDLObject> actualArgs : allowedActualArgs) {
				DefaultActionInstance instance = new DefaultActionInstance(
						action, actualArgs, allObjects, actIndex++);
				instances.add(instance);
			}
		}
		return instances;
	}

	private List<List<PDDLObject>> getPossibleArguments(ActionDef action,
			Set<PDDLObject> allObjects, ConsistentLiteralSet startState)
			throws IllDefinedProblemException {
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
									startState, allObjects)) {
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

	public Search getSearch() {
		return search;
	}

	@Override
	public List<ActionInstance> run() {
		return search.getPath();
	}

	@Override
	public SolverOptions getSolverOptions() {	
		return solverOptions;
	}

	@Override
	public Heuristic getHeuristic() {
		// TODO Auto-generated method stub
		return heuristic;
	}

	@Override
	public Set<ActionInstance> getRelevantActions() {
		// TODO Auto-generated method stub
		return relevantActions;
	}

	@Override
	public void setRelevantActions(Set<ActionInstance> mRelevantActions) {
		relevantActions = mRelevantActions;
	}

	@Override
	public Set<ActionInstance> getActionInstances() {
		// TODO Auto-generated method stub
		return new HashSet<ActionInstance>(actionInstances);
	}

	

}
