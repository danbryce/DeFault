package edu.usu.cs.planner.ffvanilla;

import java.util.List;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.DefaultSolver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.Search;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.astar.ClassicalSolutionEvaluator;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class AStarSolver extends DefaultSolver
{
//	private final Domain domain;
//	private final DefaultProblem problem;
	protected Search search;
//	
//	private final List<ActionInstance> actionInstances;
//	
//	private List<ActionInstance> plan;
	
	public AStarSolver(Domain domain, Problem problem, SearchStatistics searchStatistics, SolverOptions solverOptions) throws IllDefinedProblemException
	{
		super(domain, problem, searchStatistics, solverOptions);

//		if(domain == null || problem == null)
//		{
//			throw new IllegalArgumentException("null domain/problem");
//		}
//		this.domain = domain;
//		this.problem = problem;
//		
//		// Create all the ActionInstance objects needed in the problem
//		actionInstances = createActionInstances(domain, problem);
//		
//		logger.info("All action instances in problem:");
//		for(ActionInstance ai : actionInstances)
//		{
//			logger.info(ai.toString());
//		}
		
		search = new AStarSearch(domain, problem, actionInstances, new ClassicalSolutionEvaluator(), searchStatistics, solverOptions);
		search.initialize();
	}

//	public String getHeuristicTimeTaken() {
//		// TODO Auto-generated method stub
//		return null;
//	}


	
public AStarSolver() {
	search = null;
	}

	//	public int getNodesExpandedCount() {
//		if(plan == null){
//			return 0;
//		}
//		return astar.getNodesExpandedCount();
//	}
//
//	public int getNumLevels()
//	{
//		if(plan == null){
//			return 0;
//		}
//		return plan.size();
//	}
//	
//	public long getTotalTimeTaken() {
//		return astar.getTotalTimeTaken();
//	}
//
	public List<ActionInstance> run()
	{
			// Do the solving here
		plan = search.getPath();
		
		return plan;
	}

//    private List<ActionInstance> createActionInstances(Domain domain, DefaultProblem problem) throws IllDefinedProblemException
//	{
//		List<ActionInstance> instances = new ArrayList<ActionInstance>();
//		Set<PDDLObject> allObjects = problem.getObjects();
//		
//		// Iterate over all actions, creating multiple instances for each (probably)
//		List<ActionDef> actionDefs = domain.getActions();
//		for (ActionDef action : actionDefs) 
//		{
//			List<List<PDDLObject>> allowedActualArgs = getPossibleArguments(action, allObjects, problem.getStartState());
//			for (List<PDDLObject> actualArgs : allowedActualArgs) 
//			{
//				ActionInstance instance = new ActionInstance(action, actualArgs, allObjects);
//				instances.add(instance);
//			}
//		}
//		return instances;
//	}

//    private List<List<PDDLObject>> getPossibleArguments(ActionDef action,
//											            Set<PDDLObject> allObjects, 
//											            ConsistentLiteralSet startState)
//			throws IllDefinedProblemException
//	{
//		final List<PDDLObject> noObjects = Collections.emptyList();
//		List<List<PDDLObject>> result = new ArrayList<List<PDDLObject>>();
//		List<FormalArgument> arguments = action.getArguments();
//		
//		if (arguments.size() > allObjects.size()) {
//			throw new IllDefinedProblemException("Not enough objects for arguments of action " + action.getName());
//		} else if (arguments.size() == 0) {
//			result.add(noObjects);
//		} else {
//			// General case of 1 or more arguments
//		
//			// Keep the results as a list of partial solutions, where each solution is a list of arguments
//			// First stage is one solution, with no arguments-so-far
//			result.add(noObjects);
//			final Set<PDDLObject> remainingObjs = new HashSet<PDDLObject>();
//		
//			for (FormalArgument arg : arguments) {
//				// After dealing with argument one, newSolns will be a list of arrays of length one, etc
//				List<List<PDDLObject>> newSolns = new ArrayList<List<PDDLObject>>();
//		
//				for (List<PDDLObject> argsSoFar : result) {
//					// Get correct set of all objects not used in the argument list so far
//					remainingObjs.clear();
//					remainingObjs.addAll(allObjects);
//					remainingObjs.removeAll(argsSoFar);
//		
//					for (PDDLObject obj : remainingObjs) {
//						if (arg.typeMatches(obj)) {
//							final List<PDDLObject> newArgList = new ArrayList<PDDLObject>(argsSoFar);
//							newArgList.add(obj);
//							if(action.isLegalPartialInstantiation(newArgList, startState)){
//								newSolns.add(newArgList);
//							}
//						}
//					}
//				}
//				result = newSolns;
//			}
//		}
//		return result;
//	}

//	public long getHeuristicTimeTaken() {
//		return astar.getHeuristicTimeTaken();
//	}
}
