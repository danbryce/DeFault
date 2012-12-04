/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: GraphSolver.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.heuristic.graphplanner.relaxedplangraph;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.InconsistentLiteralException;
import edu.usu.cs.pddl.domain.Literal;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

/**
 * Class to create and use a plan graph (using {@link PlanGraph}) to produce
 * a plan to solve the given problem. This requires the use of a backtracking
 * search. Currently, no heuristics are used to guide the search.
 */
public class GraphSolver
{
    private static final Logger logger = Logger.getLogger(GraphSolver.class.getName());

    private final Domain domain;
    private final Problem problem;
    private final PreProcessingPlanGraph graph;
    
	private static final int MAX_NUM_LEVELS = 100;
	
    public GraphSolver(Domain dom, Problem problem2) throws IllDefinedProblemException
    {
        if (dom == null || problem2 == null) {
            throw new IllegalArgumentException("null domain/problem");
        }
        this.domain = dom;
        this.problem = problem2;
        
        //graph = new PlanGraph(domain, problem);
        graph = new PreProcessingPlanGraph(domain, problem);
    }
    
    public static void main(String[] args) 
    {
        if (args.length != 2) {
            usage();
        }
        File domainFile = new File(args[0]);
        if (!domainFile.exists()) {
            System.err.println("Unable to find PDDL domain file " + args[0]);
            usage();
        }
        File problemFile = new File(args[1]);
        if (!problemFile.exists()) {
            System.err.println("Unable to find PDDL problem file " + args[1]);
            usage();
        }
                
        try {
            ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFile);
            Domain domain = domBuilder.buildDomain(0);
            ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain, problemFile);
            Problem problem = probBuilder.buildProblem();
            
            GraphSolver solver = new GraphSolver(domain, problem);
            List<GraphAction> plan = solver.solve();
            if (plan == null) {
                logger.debug("No plan found");
            } else {
                logger.debug("Plan found in " + solver.getNumLevels() + " levels:");
                for (GraphAction action : plan) {
                    logger.debug(action.toString());
                }
            }
        } catch (IOException e) {
            System.err.println("Error reading PDDL file(s): " + e);
            e.printStackTrace();
        } catch (PDDLSyntaxException e) {
            System.err.println("Syntax errors found in the PDDL file(s).");
        } catch (InvalidPDDLElementException e) {
            System.err.println("Invalid semantics in the PDDL file(s): " + e);
            e.printStackTrace();
        } catch (IllDefinedProblemException e) {
            System.err.println("Badly defined problem: " + e);
            e.printStackTrace();
        }
    }

    private static void usage() 
    {
        System.err.println("usage: java GraphSolver <domain-pddl-file> <problem-pddl-file>");
        System.exit(1);
    }
    
    /** 
     * @return <code>null</code> if the problem cannot be solved 
     */
    public List<GraphAction> solve()
    {
        List<GraphAction> realPlan = null;
        GoalDesc goal = problem.getGoal();
        Level currentLevel = graph.getLastLevel();
        
        while (!currentLevel.goalLiteralsArePresent(goal) &&
        		currentLevel.getLevelNum() < MAX_NUM_LEVELS) {
            currentLevel = graph.addLevel();
        }        
        
        if(currentLevel.getLevelNum() == MAX_NUM_LEVELS){
        	return null;
        }
        
        List<Set<GraphAction>> fullPlan = generatePlan();
        
        // Continue adding levels if plan not found, AND graph not converged yet
        while (fullPlan == null && !graph.hasConverged()) {
            graph.addLevel();
            fullPlan = generatePlan();
        }
        
        // Now remove the maintenance actions, and impose an arbitrary order TODO: also return POPs
        if (fullPlan != null) {
            realPlan = new ArrayList<GraphAction>(fullPlan.size());
            for (Set<GraphAction> actionsAtLevel : fullPlan) {
                for (GraphAction action : actionsAtLevel) {
                    if (!action.isMaintenanceAction()) {
                        realPlan.add(action);
                    }
                }
            }
        }
        return realPlan;
    }

    private List<Set<GraphAction>> generatePlan()
    {
        try {
            Level finalLevel = graph.getLastLevel();
            List<Set<GraphAction>> plan = new ArrayList<Set<GraphAction>>();
            
            GoalDesc mgoal = problem.getGoal();
            DefaultGoalDesc goal = (DefaultGoalDesc)mgoal;
            Set<LiteralInstance> litInstances = new HashSet<LiteralInstance>();
            goal.getLiteralsUsed(litInstances);
            List<Set<Literal>> possibleLitCombinations = finalLevel.getConsistentLitCombinations(litInstances);           
            
            // Now check if the goal is satisfied in any of the combinations
            for (Set<Literal> inputLiterals : possibleLitCombinations) {
                ConsistentLiteralSet literals = new ConsistentLiteralSet(inputLiterals);
                if (goal.evaluate(literals)) {
                    // This set of literals is a possible
//                    logger.info("Trying to find solution with end literal set:\n" + inputLiterals);
                    
                    plan.clear();
                    
                    if (recursiveSolve(finalLevel, inputLiterals, plan)) {
                        Collections.reverse(plan);
                        return plan; /***/
                    }
                }
            }
            // No solution possible
            return null; /***/
            
            // TODO: how to make non-maintenance actions preferred...
        } catch (InconsistentLiteralException e) {
            throw new RuntimeException(e);
        }
    }

    private boolean recursiveSolve(Level level, Set<Literal> goals, List<Set<GraphAction>> plan)
    {
        if (level.getLevelNum() == 0) {
            return solveStartState(level, goals, plan);
        } else {
            return solveLevel(level, goals, plan);
        }
    }
    
    /**
     * In this case, just need all the goals to be present in the start state of the 
     * problem.
     */
    private boolean solveStartState(Level level, Set<Literal> goals, List<Set<GraphAction>> plan)
    {
        Set<Literal> startState = level.getEndLiterals();
        for (Literal goal : goals) {
            if (!startState.contains(goal)) {
//                logger.fine("Failing search at start state for plan with first action " 
//                            + plan.get(0).iterator().next());
                return false; /***/
            }
        }
        return true;
    }
    
    /*
     * This builds the plan BACKWARDS, so actions that should be executed first are added
     * at the end of the list.
     * @plan the list that will contain a plan on successful completion. May not be null.
     */
    private boolean solveLevel(Level level, Set<Literal> goals, List<Set<GraphAction>> plan)
    {        
        // TODO: should we check if any of the goal literals are themselves mutex??        
        Map<Literal, List<GraphAction>> creatorMap = level.getLiteralCreatorMap();        
        // Get list of possible action combinations
        List<Set<GraphAction>> possibleCombinations = new ArrayList<Set<GraphAction>>();
        // Start with a single empty set
        possibleCombinations.add(new HashSet<GraphAction>());

        possibleCombinations = getPossibleCombinations(level, goals, creatorMap,
				possibleCombinations);
        
        // Now iterate over each candidate set of actions to take at this level
        final int levelNum = plan.size();
        plan.add(null); // Add an extra entry for this level
        Set<Literal> newGoals = new HashSet<Literal>();
        
        for (Set<GraphAction> trialSolution : possibleCombinations) {
            newGoals.clear();
            for (GraphAction action : trialSolution) {
                newGoals.addAll(action.getPreconditions().getLiterals());
            }
            plan.set(levelNum, trialSolution);
            
            // Try to build the rest of the plan from this partial solution
            if (recursiveSolve(level.getPreviousLevel(), newGoals, plan)) {
                return true; /***/
            }
        }
        
        plan.remove(levelNum);
        return false;
    }

    /*
     * Currently returns first possible combination
     */
	private List<Set<GraphAction>> getPossibleCombinations(Level level, Set<Literal> goals,
			Map<Literal, List<GraphAction>> creatorMap,
			List<Set<GraphAction>> possibleCombinations) {
		
//		int count = 0;
//		List<Set<GraphAction>> newCombinations = new ArrayList<Set<GraphAction>>();
//		while (newCombinations.size() < 5 || count < 20) {
//			int goalIndex = random.nextInt(goals.size());
//			int partialSolnIndex = random.nextInt(possibleCombinations.size());
//			int actionIndex = random.nextInt(creatorMap.get((Literal)(goals.toArray()[goalIndex])).size());
//			GraphAction action = creatorMap.get((Literal)(goals.toArray()[goalIndex])).get(actionIndex);
//			Set<GraphAction> partialSoln = possibleCombinations.get(partialSolnIndex);
//			if(noneMutex(level, action, possibleCombinations.get(partialSolnIndex))) {
//                Set<GraphAction> newSoln = new HashSet<GraphAction>(partialSoln);
//                newSoln.add(action);
//                newCombinations.add(newSoln);				
//			}
//		}
//		possibleCombinations = newCombinations;
		
		// Iterate over literals
        for (Literal goal : goals) {
            List<Set<GraphAction>> newCombinations = new ArrayList<Set<GraphAction>>();
            List<GraphAction> possibleActions = creatorMap.get(goal);
            
            for (Set<GraphAction> partialSoln : possibleCombinations) {
                Set<GraphAction> newSoln = new HashSet<GraphAction>(partialSoln);
                for (GraphAction action : possibleActions) {
                    // Create a new set for each existing set, if action is allowed
                    if (noneMutex(level, action, partialSoln)) {
                        newSoln = new HashSet<GraphAction>(partialSoln);
                        newSoln.add(action);
                        newCombinations.add(newSoln);
                        //// The added part
//                        logger.debug("Solution found");
//                        if(action.isMaintenanceAction()) {
//                        	newCombinations = new ArrayList<Set<GraphAction>>();
//                        	newCombinations.add(newSoln);
	                        possibleCombinations = newCombinations;
	                        return possibleCombinations;
//                        }
                        //// End added part
                    }
                }
                newCombinations = new ArrayList<Set<GraphAction>>();
                newCombinations.add(newSoln);
                possibleCombinations = newCombinations;
                return possibleCombinations;
            }
            possibleCombinations = newCombinations;
        }
        
		return possibleCombinations;
	}

    private boolean noneMutex(Level level, GraphAction action, Set<GraphAction> partialSoln)
    {
        for (GraphAction testAction : partialSoln) {
            if (level.actionsAreMutex(testAction, action)) {
                return false;
            }
        }
        return true;
    }

    public int getNumLevels()
    {
        return graph.getLastLevel().getLevelNum();
    }
}
