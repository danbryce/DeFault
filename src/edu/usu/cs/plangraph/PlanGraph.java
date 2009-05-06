/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: PlanGraph.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.plangraph;

import java.util.*;
import java.util.logging.*;
import edu.usu.cs.pddl.domain.*;

/**
 * Manages a planning graph, consisting of a sequence of {@link Level} objects.
 */
/*
 * TODO: Potential performance improvements & other misc tasks
 * - Have ConsistentLiteralSet store a Map<LiteralInstance, Literal> natively
 *   (& maybe the Set also for performance reasons...)
 * - Implement HEURISTICS for graph solving (literal with highest level-cost first)
 * - Make Pair non-immutable, to avoid object creation overhead in areMutex() methods
 */
public class PlanGraph
{
    private static Logger logger = Logger.getLogger(PlanGraph.class.getName());

    private final List<Level> levels = new ArrayList<Level>();
    private final Domain domain;
    private final Problem problem;
    private final List<ActionInstance> actionInstances;

    public PlanGraph(){
    	domain = null;
    	problem = null;
    	actionInstances = null;
    }
    
    public PlanGraph(Domain domain, Problem problem) throws IllDefinedProblemException
    {
        if (domain == null || problem == null) {
            throw new IllegalArgumentException("null domain/problem");
        }
        this.domain = domain;
        this.problem = problem;

        // Create all the ActionInstance objects needed in the problem
        actionInstances = createActionInstances(domain, problem);

        logger.info("All action instances in problem:");
        for (ActionInstance ai : actionInstances) {
            logger.info(ai.toString());
        }

        // Construct "dummy" first level containing initial state
        Level startLevel = Level.createStartLevel(actionInstances, problem);
        levels.add(startLevel);
    }

    /** @numLevels number of levels, including the start state */
    public PlanGraph(Domain domain, Problem problem, int numLevels) throws IllDefinedProblemException
    {
        this(domain, problem);
        if (numLevels < 2) {
            throw new IllegalArgumentException("At least two levels are needed in a plan graph");
        }

        for (int l = 1; l < numLevels; l++) {
            final Level newLevel = new Level(levels.get(l-1), actionInstances, domain, problem);
            levels.add(newLevel);
        }
    }

    public Level addLevel()
    {
        final Level previousLevel = levels.get(levels.size() - 1);
        final Level newLevel = new Level(previousLevel, actionInstances, domain, problem);
        levels.add(newLevel);
        return newLevel;
    }
    
    public Level getLastLevel()
    {
        return levels.get(levels.size() - 1);
    }
    
    public boolean hasConverged() 
    {
        if (levels.size() < 3) {
            return false;
        } else {
            Level currentLevel = getLastLevel();
            Level previousLevel = currentLevel.getPreviousLevel();
            
            // TODO: Not completely sure that this guarantees convergence...
            return (currentLevel.getActions().size() == previousLevel.getActions().size())
                     && (currentLevel.getEndLiterals().equals(previousLevel.getEndLiterals()));
        }
    }

    private List<ActionInstance> createActionInstances(Domain domain, Problem problem)
                            throws IllDefinedProblemException
    {
        List<ActionInstance> instances = new ArrayList<ActionInstance>();
        Set<PDDLObject> allObjects = problem.getObjects();

        // Iterate over all actions, creating multiple instances for each (probably)
        List<ActionDef> actionDefs = domain.getActions();
        for (ActionDef action : actionDefs) {
            List<List<PDDLObject>> allowedActualArgs = getPossibleArguments(action, allObjects);
            for (List<PDDLObject> actualArgs : allowedActualArgs) {
                ActionInstance instance = new ActionInstance(action, actualArgs, allObjects);
                instances.add(instance);
            }
        }
        return instances;
    }

    private List<List<PDDLObject>> getPossibleArguments(ActionDef action,
                                                        Set<PDDLObject> allObjects)
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
                            newSolns.add(newArgList);
                        }
                    }
                }
                result = newSolns;
            }
        }
        return result;
    }
}
