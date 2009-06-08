/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Level.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.heuristic.relaxedplangraph;

import java.util.*;
import java.util.logging.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

/**
 * One level in a plan graph, consisting of a set of actions, and a set of literals (which may
 * not be consistent with each other) which could be obtained after executing the actions. The 
 * precondition literals of the actions are provided by the preceeding level - a single level 
 * only stores actions and end-literals.
 */
public class Level
{
    private static final Logger logger = Logger.getLogger(Level.class.getName());

    private final int levelNum;
    private Level previousLevel; // May be null
    private Set<Literal> endLiterals;
    private List<GraphAction> actions;
    private Set<Pair<GraphAction>> actionMutexes;
    private Set<Pair<Literal>> literalMutexes;
    
    // Generated fields
    private Map<LiteralInstance, List<Literal>> endLiteralLookup;

    /**
     * Create the first level (level 0) in a plan graph. This level has no actions,
     * only the literals comprising the starting state.
     * @param problem the problem.
     * @throws IllDefinedProblemException 
     */
    public static Level createStartLevel(List<ActionInstance> instances, Problem problem) 
        throws IllDefinedProblemException
    {
        return new Level(instances, problem);
    }
    
    public Level(){
    	levelNum = 0;
    	previousLevel = null;
    	endLiterals = null;
    	actions = null;
    	actionMutexes= null;
    	literalMutexes = null;
    }
    
    /**
     * Create the first level (level 0) in a plan graph. This level has no actions,
     * only the literals comprising the starting state.
     * @param problem the problem.
     * @throws IllDefinedProblemException 
     */
    private Level(List<ActionInstance> instances, Problem problem) throws IllDefinedProblemException
    {
        levelNum = 0;
        actions = Collections.emptyList();
        actionMutexes = Collections.emptySet();
        literalMutexes = Collections.emptySet();

        endLiterals = new HashSet<Literal>(problem.getStartState().getLiterals());
        //createPredicateNegations(instances);
    }

    public Level(Level previousLevel, List<ActionInstance> instances,
                 Domain domain, Problem problem)
    {
        if (previousLevel == null) {
            throw new IllegalArgumentException("null previous level");
        }
        levelNum = previousLevel.getLevelNum() + 1;
        this.previousLevel = previousLevel;

//        logger.info("Creating level " + levelNum);
        try {
            Set<Literal> startLiterals = previousLevel.getEndLiterals();

            actions = createGraphActions(instances, previousLevel.getEndLiteralLookup());

            // Now remove all the graph actions whose preconditions are not met
            removeUnsatisfiedPreconds(actions);

            // Also remove all graph actions with preconditions that are mutex
//            removeMutexPreconds(previousLevel, actions);

            // Add in the maintenance actions that just copy existing literals to the new level
            actions.addAll(createMaintentanceActions(startLiterals));

            // Create the new set of literals
            endLiterals = createLiterals(startLiterals, actions);

//            actionMutexes = findActionMutexes(actions);

//            literalMutexes = findLiteralMutexes(actions, actionMutexes, endLiterals);

//            logLevelDetails();
        } catch (Exception e) {
            // Shouldn't get this - really a programming bug
            logger.log(java.util.logging.Level.INFO, "error in level creation", e);
            throw new RuntimeException(e);
        }
    }

//    private void logLevelDetails()
//    {
//        if (logger.isLoggable(java.util.logging.Level.FINER)) {
//            logger.finer("Actions in this level:");
//            for (GraphAction ga : actions) {
//                logger.finer(ga.toString());
//            }
//            logger.finer("Actions mutexes:");
//            for (Pair<GraphAction> mutex : actionMutexes) {
//                logger.finer(mutex.getFirst().getActionHeader() + " / " 
//                             + mutex.getSecond().getActionHeader());
//            }
//            logger.finer("Literal mutexes:");
//            for (Pair<Literal> mutex : literalMutexes) {
//                logger.finer(mutex.getFirst() + " / " + mutex.getSecond());
//            }
//        }
//        logger.info("Num actions: " + actions.size());
//        logger.info("Num action mutexes: " + actionMutexes.size());
//        logger.info("Num literal mutexes: " + literalMutexes.size());
//        logger.info("Num end literals: " + endLiterals.size());
//        logger.info("------------- End of level " + levelNum + " creation -----------");
//    }
    
    public boolean goalLiteralsArePresent(GoalDesc goal)
    {
        try {
            Set<LiteralInstance> litInstances = new HashSet<LiteralInstance>();
            goal.getLiteralsUsed(litInstances);
            List<Set<Literal>> possibleLiteralCombinations = getConsistentLitCombinations(litInstances);           
            
            // Now check if the goal is satisfied in any of the combinations
            for (Set<Literal> inputLiterals : possibleLiteralCombinations) {
                ConsistentLiteralSet literals = new ConsistentLiteralSet(inputLiterals);
                if (goal.evaluate(literals)) {
                    return true;
                }
            }
            
            return false;
        } catch (InconsistentLiteralException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Set<Literal>> getConsistentLitCombinations(Set<LiteralInstance> litInstances)
    {
        Map<LiteralInstance, List<Literal>> literalLookup = getEndLiteralLookup();        
        List<Set<Literal>> possibleLiteralCombinations = new ArrayList<Set<Literal>>();
        // One empty list to start with
        possibleLiteralCombinations.add(new HashSet<Literal>());
        
        // Now find all possible sets of consistent literals  
        for (LiteralInstance litInstance : litInstances) {
            List<Literal> litValues = literalLookup.get(litInstance);

            if (litValues == null || litValues.isEmpty()) {
                // No values available for this literal instance => no satisfying combinations 
                return Collections.emptyList(); 
            } else {
                final List<Set<Literal>> newCombinations = new ArrayList<Set<Literal>>();

                for (Literal lit : litValues) {
                    for (Set<Literal> partialCombination : possibleLiteralCombinations) {
//                        if (noneMutex(partialCombination, lit)) {
                            final Set<Literal> newCombination = new HashSet<Literal>(partialCombination);
                            newCombination.add(lit);
                            newCombinations.add(newCombination);
//                        }
                    }
                }
                possibleLiteralCombinations = newCombinations;            
            }
        }
        return possibleLiteralCombinations;
    }

//    private boolean noneMutex(Collection<Literal> literalList, Literal lit)
//    {
//        for (Literal testLit : literalList) {
//            if (literalsAreMutex(testLit, lit)) {
//                return false;
//            }
//        }
//        return true;
//    }

    /**
     * All predicates that are not defined as true in the PDDL :init section are assumed
     * to be false. This method adds 'false' literals for all predicates that are used
     * by an action and are not present in the :init section.
     * @param instances the action instances for the problem.
     * @throws IllDefinedProblemException 
     */
//    private void createPredicateNegations(List<ActionInstance> instances) throws IllDefinedProblemException
//    {
//        endLiteralLookup = buildLiteralLookup(endLiterals);
//        for (ActionInstance action : instances) {
//            Set<LiteralInstance> inputLitIntances = action.getInputLitInstances(); // ~= preconditions
//            for (LiteralInstance litInstance : inputLitIntances) {
//                // For each type of literal, check if there are any values present for it
//                List<Literal> litValues = endLiteralLookup.get(litInstance);
//                if (litValues == null || litValues.isEmpty()) {
//                    // No values found for this literal instance                    
//                    if (litInstance instanceof PredicateInstance) {
//                        // Can only create 'default' values for predicates
//                        final PredicateInstance pred = (PredicateInstance) litInstance;
//                        final PredicateLiteral negationLit = new PredicateLiteral(pred, false);
//                        endLiterals.add(negationLit);
//                        // Also add the new literal to our lookup list
//                        litValues = new ArrayList<Literal>();
//                        litValues.add(negationLit);
//                        endLiteralLookup.put(litInstance, litValues);
//                    } else {
//                        throw new IllDefinedProblemException("No initial value for function " + litInstance);
//                    }
//                }
//            }
//        }
//    }

    private List<GraphAction> createGraphActions(List<ActionInstance> instances,
                                                 Map<LiteralInstance, List<Literal>> literalLookup)
        throws InconsistentLiteralException, IllDefinedProblemException
	{
		List<GraphAction> actions = new ArrayList<GraphAction>();

		// Need every possible combination of every literal-value for
		// the literal-instances needed for each action
		for (ActionInstance action : instances) {
			List<List<Literal>> possibleLiteralCombinations = new ArrayList<List<Literal>>();
			// One empty list to start with
			possibleLiteralCombinations.add(new ArrayList<Literal>());

			Set<LiteralInstance> inputLitIntances = action.getInputLitInstances(); // ~= preconditions
			for (LiteralInstance litInstance : inputLitIntances) {
				// For each type of literal, find the values present for that literal, and
				// for each value, create a copy of every existing combination with the value appended
				List<Literal> litValues = literalLookup.get(litInstance);

                if (litValues == null || litValues.isEmpty()) {
                    throw new IllDefinedProblemException("No value for literal " + litInstance);
                } else if (litValues.size() == 1) {
					// Only one value present for this literal - can re-use the same lists
					final Literal l = litValues.get(0);
					for (List<Literal> partialCombination : possibleLiteralCombinations) {
						partialCombination.add(l);
					}
				} else {
					final List<List<Literal>> newCombinations = new ArrayList<List<Literal>>();

					for (Literal l : litValues) {
						for (List<Literal> partialCombination : possibleLiteralCombinations) {
							final List<Literal> newCombination = new ArrayList<Literal>(partialCombination);
							newCombination.add(l);
							newCombinations.add(newCombination);
						}
					}
					possibleLiteralCombinations = newCombinations;
				 }
			}

			// Now create the graph actions for each combination
			for (List<Literal> inputLiterals : possibleLiteralCombinations) {
				ConsistentLiteralSet actionPreconds = new ConsistentLiteralSet(inputLiterals);
				GraphAction gAction = new GraphAction(action, actionPreconds);
				actions.add(gAction);
			}
		}
		return actions;
	}

	private void removeUnsatisfiedPreconds(List<GraphAction> actions)
	{
		Iterator<GraphAction> iter = actions.iterator();
		while (iter.hasNext()) {
			if (!iter.next().isValid()) {
				iter.remove();
			}
		}
	}

//	private void removeMutexPreconds(Level previousLevel, List<GraphAction> actions)
//	{
//		Iterator<GraphAction>  aIter = actions.iterator();
//mainLoop:
//		while (aIter.hasNext()) {
//			GraphAction gAction = aIter.next();
//			List<Literal> preconds = new ArrayList<Literal>(gAction.getPreconditions().getLiterals());
//            
//			// Loop over all pairs of precondition literals
//			while (preconds.size() > 1) {
//				Literal firstLit = preconds.remove(0);
//				for (Literal secondLit : preconds) {
//					if (previousLevel.literalsAreMutex(firstLit, secondLit)) {
//						aIter.remove();
//						continue mainLoop;
//					}
//				}
//			}
//		}
//	}
        
//    public boolean literalsAreMutex(Literal one, Literal two) 
//    {
//        Pair<Literal> testPair = new Pair<Literal>(one, two);
//        return literalMutexes.contains(testPair);
//    }

	private List<GraphAction> createMaintentanceActions(Set<Literal> startLiterals)
		throws InconsistentLiteralException
	{
		List<GraphAction> actions = new ArrayList<GraphAction>();

		// Create maintenance actions for all literals from the old level
		for (Literal l : startLiterals) {
			final ConsistentLiteralSet s = new ConsistentLiteralSet();
			s.addLiteral(l);
			actions.add(GraphAction.createMaintenanceAction(s));
		}
		return actions;
	}

//	private Set<Pair<GraphAction>> findActionMutexes(List<GraphAction> actions)
//	{
//		Set<Pair<GraphAction>> result = new HashSet<Pair<GraphAction>>();
//		List<GraphAction> remainingActions = new ArrayList<GraphAction>(actions); // Modified during method
//
//		while (remainingActions.size() > 1) {
//			final GraphAction firstAction = remainingActions.remove(0); // pop first element from list
//
//			final ConsistentLiteralSet firstPreconds = firstAction.getPreconditions();
//			final ConsistentLiteralSet firstEffects = firstAction.getEffects();
//
//			Iterator<GraphAction> innerActions = remainingActions.iterator();
//			while (innerActions.hasNext()) {
//				GraphAction secondAction = innerActions.next();
//				if (firstPreconds.inconsistentWith(secondAction.getPreconditions())
//						|| firstPreconds.inconsistentWith(secondAction.getEffects())
//						|| firstEffects.inconsistentWith(secondAction.getPreconditions())
//						|| firstEffects.inconsistentWith(secondAction.getEffects())) {
//					// Actions are mutex
//					result.add(new Pair<GraphAction>(firstAction, secondAction));
//				}
//			}
//		}
//		return result;
//	}
        
    public boolean actionsAreMutex(GraphAction one, GraphAction two) 
    {
    	return false;
//        Pair<GraphAction> testPair = new Pair<GraphAction>(one, two);
//        return actionMutexes.contains(testPair);
    }

	private Set<Literal> createLiterals(Set<Literal> startLiterals, List<GraphAction> actions)
	{
		Set<Literal> literals = new HashSet<Literal>(startLiterals);
		for (GraphAction action : actions) {
			literals.addAll(action.getEffects().getLiterals());
		}
		return literals;
	}

//	private Set<Pair<Literal>> findLiteralMutexes(List<GraphAction> actions,
//	                                              Set<Pair<GraphAction>> actionMutexes,
//	                                              Set<Literal> endLiterals)
//	{
//		Set<Pair<Literal>> result = new HashSet<Pair<Literal>>();
//		Map<Literal, List<GraphAction>> literalCreatorMap = buildLiteralCreatorMap(actions);
//		Map<GraphAction, Set<GraphAction>> actionMutexMap = buildMutexMap(actionMutexes);
//
//		List<Literal> remainingLiterals = new ArrayList<Literal>(endLiterals);
//		while (remainingLiterals.size() > 1) {
//			final Literal firstLiteral = remainingLiterals.remove(0);
//
//			Iterator<Literal> innerLiterals = remainingLiterals.iterator();
//			while (innerLiterals.hasNext()) {
//				final Literal secondLiteral = innerLiterals.next();
//
//				if (firstLiteral.getInstance().equals(secondLiteral.getInstance())
//						   // Mutex as can't be the same value, as endLiterals is a set
//						||
//					creatingActionsAreMutex(firstLiteral, secondLiteral,
//											literalCreatorMap, actionMutexMap))
//				{
//					result.add(new Pair<Literal>(firstLiteral, secondLiteral));
//				}
//			}
//		}
//		return result;
//	}

//	private <E> Map<E, Set<E>> buildMutexMap(Set<Pair<E>> actionMutexes)
//	{
//		Map<E, Set<E>> result = new HashMap<E, Set<E>>();
//		for (Pair<E> mutex : actionMutexes) {
//			final E first = mutex.getFirst();
//			final E second = mutex.getSecond();
//
//			addMutexToMap(first, second, result);
//			addMutexToMap(second, first, result);
//		}
//		return result;
//	}

//	private <E> void addMutexToMap(final E first, final E second,
//										  Map<E, Set<E>> result)
//	{
//		Set<E> mutexActions = result.get(first);
//		if (mutexActions == null) {
//			mutexActions = new HashSet<E>();
//			result.put(first, mutexActions);
//		}
//		mutexActions.add(second);
//	}

	private Map<Literal, List<GraphAction>> buildLiteralCreatorMap(List<GraphAction> actions)
	{
		Map<Literal, List<GraphAction>> result = new HashMap<Literal, List<GraphAction>>();
		for (GraphAction action : actions) {
			ConsistentLiteralSet effects = action.getEffects();
			for (Literal lit : effects.getLiterals()) {
				List<GraphAction> creators = result.get(lit);
				if (creators == null) {
					creators = new ArrayList<GraphAction>();
					result.put(lit, creators);
				}
				creators.add(action);
			}
		}
		return result;
	}

//	private boolean creatingActionsAreMutex(final Literal firstLiteral,
//												   final Literal secondLiteral,
//												   Map<Literal, List<GraphAction>> literalCreatorMap,
//												   Map<GraphAction, Set<GraphAction>> actionMutexMap)
//	{
//		List<GraphAction> firstLitActions = literalCreatorMap.get(firstLiteral);
//		List<GraphAction> secondLitActions = literalCreatorMap.get(secondLiteral);
//
//		for (GraphAction firstAction : firstLitActions) {
//			Set<GraphAction> firstMutexes = actionMutexMap.get(firstAction);
//			
//            if (firstMutexes == null) {
//                // no actions are mutex with firstAction => literals certainly not mutex
//                return false;
//            } else {
//    			for (GraphAction secondAction : secondLitActions) {
//    				if (!firstMutexes.contains(secondAction)) {
//    					// Found two actions that are not mutex => literals are not mutex
//    					return false;
//    				}
//    			}
//            }
//		}
//		return true;
//	}

	private Map<LiteralInstance, List<Literal>> buildLiteralLookup(Set<Literal> allLiterals)
	{
		Map<LiteralInstance, List<Literal>> result = new HashMap<LiteralInstance, List<Literal>>();
		for (Literal l : allLiterals) {
			List<Literal> values = result.get(l.getInstance());
			if (values == null) {
				values = new ArrayList<Literal>();
				result.put(l.getInstance(), values);
			}
			values.add(l);
		}
		return result;
	}

    public Set<Pair<GraphAction>> getActionMutexes() {
        return actionMutexes;
    }

    public List<GraphAction> getActions() {
        return actions;
    }

    public Set<Literal> getEndLiterals() {
        return endLiterals;
    }
    
    public Map<LiteralInstance, List<Literal>> getEndLiteralLookup() {
        if (endLiteralLookup == null) {
            endLiteralLookup = buildLiteralLookup(endLiterals);
        }
        return endLiteralLookup;
    }
    
    public Map<Literal, List<GraphAction>> getLiteralCreatorMap() {
        return buildLiteralCreatorMap(actions);
    }

//    public Set<Pair<Literal>> getLiteralMutexes() {
//        return literalMutexes;
//    }

    public Level getPreviousLevel() {
        return previousLevel;
    }

    public int getLevelNum() {
        return levelNum;
    }
}
