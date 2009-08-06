/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: BlocksTest.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.plangraph;

import java.util.*;
import java.util.logging.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.goalseffects.*;
import edu.usu.cs.search.plangraph.*;

/**
 * Test class to set up the PDDL Blocks domain and problem programatically, rather than
 * using a PDDL parser.
 */
public class BlocksTest
{
    private static final Logger logger = Logger.getLogger(BlocksTest.class.getName());
    
    public static void main(String[] args) throws Exception {
        logger.info("Starting the Blocks test");
        
        Domain blocks = createBlocksDomain();
        DefaultProblem blocksProblem = createBlocks1Problem(blocks);
        
        //new PlanGraph(blocks, blocksProblem, 3); 
        
        GraphSolver solver = new GraphSolver(blocks, blocksProblem);
        List<GraphAction> plan = solver.solve();
        if (plan == null) {
            logger.warning("No plan found");
        } else {
            logger.warning("Plan found in " + solver.getNumLevels() + " levels:");
            for (GraphAction action : plan) {
                logger.warning(action.toString());
            }
        }
    }

    public static Domain createBlocksDomain() {
        List<String> reqs = Arrays.asList("fluents");        
        List<FormalArgument> noArgs = Collections.emptyList(); // TODO: Should allow null?

        FormalArgument aArg = new FormalArgument("?a");
        FormalArgument bArg = new FormalArgument("?b");
        FormalArgument xArg = new FormalArgument("?x");
        FormalArgument yArg = new FormalArgument("?y");
        
        PredicateDef handempty = new PredicateDef("handempty", null);
        PredicateDef clear = new PredicateDef("clear", Arrays.asList(bArg));
        PredicateDef on = new PredicateDef("on", Arrays.asList(aArg, bArg));
        PredicateDef ontable = new PredicateDef("ontable", Arrays.asList(bArg));
        PredicateDef holding = new PredicateDef("holding", Arrays.asList(bArg));
        
        List<FunctionDef> functions = new ArrayList<FunctionDef>(); // No functions
        
        List<PredicateDef> predicates = Arrays.asList(handempty, clear, on, ontable, holding); 

        // Pickup action
        DefaultGoalDesc precond = new ConjunctionGoalDesc(Arrays.asList(
                                    new PredicateHeader(handempty, noArgs),
                                    new PredicateHeader(ontable, Arrays.asList(bArg)),
                                    new PredicateHeader(clear, Arrays.asList(bArg))));
        Effect effect = new ConjunctionEffect(Arrays.asList(
                    new PredicateEffect(new PredicateHeader(holding, Arrays.asList(bArg)), true),
                    new PredicateEffect(new PredicateHeader(handempty, noArgs), false),
                    new PredicateEffect(new PredicateHeader(ontable, Arrays.asList(bArg)), false),
                    new PredicateEffect(new PredicateHeader(clear, Arrays.asList(bArg)), false)));
        ActionDef pickup = new ActionDef("pickup", Arrays.asList(bArg), precond, effect);
        
        // Putdown action
        precond = new PredicateHeader(holding, Arrays.asList(bArg)); 
        effect = new ConjunctionEffect(Arrays.asList(
                    new PredicateEffect(new PredicateHeader(handempty, noArgs), true),
                    new PredicateEffect(new PredicateHeader(ontable, Arrays.asList(bArg)), true),
                    new PredicateEffect(new PredicateHeader(clear, Arrays.asList(bArg)), true),
                    new PredicateEffect(new PredicateHeader(holding, Arrays.asList(bArg)), false)));
        ActionDef putdown = new ActionDef("putdown", Arrays.asList(bArg), precond, effect);

        // Stack action
        precond = new ConjunctionGoalDesc(Arrays.asList(
                                    new PredicateHeader(holding, Arrays.asList(xArg)),
                                    new PredicateHeader(clear, Arrays.asList(yArg))));
        effect = new ConjunctionEffect(Arrays.asList(
                    new PredicateEffect(new PredicateHeader(on, Arrays.asList(xArg, yArg)), true),
                    new PredicateEffect(new PredicateHeader(handempty, noArgs), true),
                    new PredicateEffect(new PredicateHeader(clear, Arrays.asList(xArg)), true),
                    new PredicateEffect(new PredicateHeader(holding, Arrays.asList(xArg)), false),
                    new PredicateEffect(new PredicateHeader(clear, Arrays.asList(yArg)), false)));
        ActionDef stack = new ActionDef("stack", Arrays.asList(xArg, yArg), precond, effect);

        // Unstack action
        precond = new ConjunctionGoalDesc(Arrays.asList(
                                    new PredicateHeader(clear, Arrays.asList(xArg)),
                                    new PredicateHeader(on, Arrays.asList(xArg, yArg)),
                                    new PredicateHeader(handempty, noArgs)));
        effect = new ConjunctionEffect(Arrays.asList(
                    new PredicateEffect(new PredicateHeader(clear, Arrays.asList(yArg)), true),
                    new PredicateEffect(new PredicateHeader(holding, Arrays.asList(xArg)), true),
                    new PredicateEffect(new PredicateHeader(clear, Arrays.asList(xArg)), false),
                    new PredicateEffect(new PredicateHeader(on, Arrays.asList(xArg, yArg)), false),
                    new PredicateEffect(new PredicateHeader(handempty, noArgs), false)));
        ActionDef unstack = new ActionDef("unstack", Arrays.asList(xArg, yArg), precond, effect);
        

        List<ActionDef> actions = Arrays.asList(pickup, putdown, stack, unstack);
        
        return new Domain("Blocks", reqs, (List<PDDLType>) null, functions, predicates, actions);
    }

    public static DefaultProblem createBlocks1Problem(Domain blocks) throws InconsistentLiteralException {
        PDDLObject blockA = new PDDLObject("a");
        PDDLObject blockB = new PDDLObject("b");
        PDDLObject blockC = new PDDLObject("c");
        
        Set<PDDLObject> objects = new HashSet<PDDLObject>(); 
        objects.add(blockA);
        objects.add(blockB);
        objects.add(blockC);

        PredicateDef handempty = blocks.getPredicateByName("handempty");
        PredicateDef clear = blocks.getPredicateByName("clear");
        PredicateDef on = blocks.getPredicateByName("on");
        PredicateDef ontable = blocks.getPredicateByName("ontable");
        //PredicateDef holding = blocks.getPredicateByName("holding");
        
        ConsistentLiteralSet startState = new ConsistentLiteralSet();
        startState.addPredicate(new PredicateLiteral(new PredicateInstance(ontable, Arrays.asList(blockA)), true));
        startState.addPredicate(new PredicateLiteral(new PredicateInstance(on, Arrays.asList(blockB, blockA)), true));
        startState.addPredicate(new PredicateLiteral(new PredicateInstance(on, Arrays.asList(blockC, blockB)), true));
        startState.addPredicate(new PredicateLiteral(new PredicateInstance(clear, Arrays.asList(blockC)), true));
        startState.addPredicate(new PredicateLiteral(new PredicateInstance(handempty, new ArrayList<PDDLObject>()), true));

        DefaultGoalDesc goal = new ConjunctionGoalDesc(Arrays.asList(
            new PredicateInstance(ontable, Arrays.asList(blockB)),
            new PredicateInstance(on, Arrays.asList(blockA, blockB)),
            new PredicateInstance(on, Arrays.asList(blockC, blockA))));
        
        return new DefaultProblem("blocks1", blocks, objects, startState, goal);
    }
}
