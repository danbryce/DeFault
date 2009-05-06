/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: JugsTest.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.plangraph.test;

import java.util.*;
import java.util.logging.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.goalseffects.*;
import edu.usu.cs.plangraph.*;

/**
 * Test class to set up the PDDL Jugs domain and problem programatically, rather than
 * using a PDDL parser.
 */
public class JugsTest
{
    private static Logger logger = Logger.getLogger(JugsTest.class.getName());
    
    public static void main(String[] args) throws Exception {
        logger.info("Starting the Jugs test");
        
        Domain jugs = createJugsDomain();
        Problem jugsProblem = createJugsProblem(jugs);
        
        //new PlanGraph(jugs, jugsProblem, 4);
        
        GraphSolver solver = new GraphSolver(jugs, jugsProblem);
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

    public static Domain createJugsDomain() {
        List<String> reqs = Arrays.asList(":requirements", ":typging", "fluents", ":conditional-effects");
        
        PDDLType jugType = new PDDLType("jug");
        List<PDDLType> types = Arrays.asList(jugType, new PDDLType("nonjug"));

        FormalArgument jArg = new FormalArgument("?j", jugType);
        FunctionDef capacity = new FunctionDef("capacity", Arrays.asList(jArg));
        FunctionDef contents = new FunctionDef("contents", Arrays.asList(jArg));
        List<FunctionDef> functions = Arrays.asList(capacity, contents);
        
        List<PredicateDef> predicates = new ArrayList<PredicateDef>(); // No predicates

        // Fill action
        GoalDesc precond = new ComparisonGoalDesc("<", 
                                                  new FunctionHeader(contents, Arrays.asList(jArg)),
                                                  new FunctionHeader(capacity, Arrays.asList(jArg)));
        Effect effect = new ConjunctionEffect(Arrays.asList(
                    new AssignEffect("assign",
                                     new FunctionHeader(contents, Arrays.asList(jArg)),
                                     new FunctionHeader(capacity, Arrays.asList(jArg)))));
        ActionDef fill = new ActionDef("fill", Arrays.asList(jArg), precond, effect);
        
        // Empty action
        precond = new ComparisonGoalDesc(">", 
                                         new FunctionHeader(contents, Arrays.asList(jArg)),
                                         new PDDLNumber(0));
        effect = new ConjunctionEffect(Arrays.asList(
           new AssignEffect("assign",
                            new FunctionHeader(contents, Arrays.asList(jArg)),
                            new PDDLNumber(0))));
        ActionDef empty = new ActionDef("empty", Arrays.asList(jArg), precond, effect);
        
        // Pour action
        FormalArgument j1Arg = new FormalArgument("?j1", jugType);
        FormalArgument j2Arg = new FormalArgument("?j2", jugType);
        precond = new ComparisonGoalDesc(">", 
                                         new FunctionHeader(contents, Arrays.asList(j1Arg)),
                                         new PDDLNumber(0));
        GoalDesc when1cond = new ComparisonGoalDesc("<=", 
             new BinaryArithmeticExpr("+", new FunctionHeader(contents, Arrays.asList(j1Arg)),
                                      new FunctionHeader(contents, Arrays.asList(j2Arg))),
             new FunctionHeader(capacity, Arrays.asList(j2Arg)));
        Effect when1subEffect = new ConjunctionEffect(Arrays.asList(
             new AssignEffect("assign",
                 new FunctionHeader(contents, Arrays.asList(j1Arg)),
                 new PDDLNumber(0)),
             new AssignEffect("increase",
                  new FunctionHeader(contents, Arrays.asList(j2Arg)),
                  new FunctionHeader(contents, Arrays.asList(j1Arg)))));
        Effect when1effect = new WhenEffect(when1cond, when1subEffect);
        GoalDesc when2cond = new ComparisonGoalDesc(">", 
            new BinaryArithmeticExpr("+", new FunctionHeader(contents, Arrays.asList(j1Arg)), 
                                     new FunctionHeader(contents, Arrays.asList(j2Arg))),
            new FunctionHeader(capacity, Arrays.asList(j2Arg)));
        Effect when2subEffect = new ConjunctionEffect(Arrays.asList(
             new AssignEffect("assign",
                 new FunctionHeader(contents, Arrays.asList(j2Arg)),
                 new FunctionHeader(capacity, Arrays.asList(j2Arg))),
             new AssignEffect("decrease",
                  new FunctionHeader(contents, Arrays.asList(j1Arg)),
                  new BinaryArithmeticExpr("-", new FunctionHeader(capacity, Arrays.asList(j2Arg)), 
                                           new FunctionHeader(contents, Arrays.asList(j2Arg))))));
        Effect when2effect = new WhenEffect(when2cond, when2subEffect);
        effect = new ConjunctionEffect(Arrays.asList(when1effect, when2effect));
        ActionDef pour = new ActionDef("pour", Arrays.asList(j1Arg, j2Arg), precond, effect);
        
        List<ActionDef> actions = Arrays.asList(fill, empty, pour);
        
        return new Domain("Jugs", reqs, types, functions, predicates, actions);
    }

    public static Problem createJugsProblem(Domain jugs) throws InconsistentLiteralException {
        PDDLType jugType = new PDDLType("jug");
        PDDLObject jug1 = new PDDLObject("jug1", jugType);
        PDDLObject jug2 = new PDDLObject("jug2", jugType);
        
        Set<PDDLObject> objects = new HashSet<PDDLObject>(); 
        objects.add(jug1);
        objects.add(jug2);
        
        FunctionDef capacity = jugs.getFunctionByName("capacity");
        FunctionDef contents = jugs.getFunctionByName("contents");
        
        ConsistentLiteralSet startState = new ConsistentLiteralSet();
        startState.addFunction(new FunctionLiteral(new FunctionInstance(capacity, Arrays.asList(jug1)), 5));
        startState.addFunction(new FunctionLiteral(new FunctionInstance(capacity, Arrays.asList(jug2)), 3));
        startState.addFunction(new FunctionLiteral(new FunctionInstance(contents, Arrays.asList(jug1)), 0));
        startState.addFunction(new FunctionLiteral(new FunctionInstance(contents, Arrays.asList(jug2)), 0));
        
        GoalDesc goal = new ConjunctionGoalDesc(Arrays.asList(
            new ComparisonGoalDesc("=",
                                   new FunctionInstance(contents, Arrays.asList(jug1)),
                                   new PDDLNumber(1))));
        
        return new Problem("jugs1", jugs, objects, startState, goal);
    }
}
