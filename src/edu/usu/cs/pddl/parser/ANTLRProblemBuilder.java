/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ANTLRProblemBuilder.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.parser;

import static edu.usu.cs.pddl.antlr.PddlParser.GOAL;
import static edu.usu.cs.pddl.antlr.PddlParser.INIT;
import static edu.usu.cs.pddl.antlr.PddlParser.INIT_AT;
import static edu.usu.cs.pddl.antlr.PddlParser.INIT_EQ;
import static edu.usu.cs.pddl.antlr.PddlParser.NOT_PRED_INIT;
import static edu.usu.cs.pddl.antlr.PddlParser.OBJECTS;
import static edu.usu.cs.pddl.antlr.PddlParser.PRED_INST;
import static edu.usu.cs.pddl.antlr.PddlParser.PROBLEM;
import static edu.usu.cs.pddl.antlr.PddlParser.PROBLEM_CONSTRAINT;
import static edu.usu.cs.pddl.antlr.PddlParser.PROBLEM_DOMAIN;
import static edu.usu.cs.pddl.antlr.PddlParser.PROBLEM_METRIC;
import static edu.usu.cs.pddl.antlr.PddlParser.PROBLEM_NAME;
import static edu.usu.cs.pddl.antlr.PddlParser.REQUIREMENTS;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.logging.Logger;

import org.antlr.runtime.tree.Tree;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.DefaultProblem;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.FunctionDef;
import edu.usu.cs.pddl.domain.FunctionInstance;
import edu.usu.cs.pddl.domain.FunctionLiteral;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PDDLType;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.PredicateInstance;
import edu.usu.cs.pddl.domain.PredicateLiteral;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteProblem;
import edu.usu.cs.planner.ffrisky.util.PddlImporter;

/**
 * Builds a {@link edu.usu.cs.pddl.domain.Domain Domain} object by parsing a
 * PDDL file using ANTLR, and then walking the ANTLR syntax tree to create the
 * appropriate strongly-typed objects.
 */
public class ANTLRProblemBuilder extends ANTLRBuilder
{
    private static final Logger logger = Logger.getLogger(ANTLRProblemBuilder.class.getName());
    
    private Domain domain;
    private Problem problem;
    
    private Map<String, PDDLObject> objects = new HashMap<String, PDDLObject>();
    private ConsistentLiteralSet startState = new ConsistentLiteralSet();
    private GoalDesc goal;
    
    private ExpressionContext objectLookup = new ExpressionContext() 
    {
        public boolean expectObjects() 
        {
            return true;
        }
        public PDDLObject lookupObject(String objName, String context) throws InvalidPDDLElementException
        {
            final String lookupName = Domain.CASE_SENSITIVE ? objName : objName.toLowerCase();
            final PDDLObject object = objects.get(lookupName);
            if (object == null) {
                throw new InvalidPDDLElementException("Object " + objName 
                          + " (used by " + context + ") is not declared");
            }
            return object;
        }
        public FormalArgument lookupParameter(String name, String context) throws InvalidPDDLElementException
        {
            throw new IllegalStateException("Attempt to lookup a parameter in a PDDL Problem file");
        }
		@Override
		public void popQuantifiedParam(FormalArgument arg, String context) {
			// TODO Auto-generated method stub
			
		}
		@Override
		public void pushQuantifiedParam(FormalArgument arg, String context) {
			// TODO Auto-generated method stub
			
		}
    };
    

    public ANTLRProblemBuilder(Domain domain, File pddlFile) throws IOException, PDDLSyntaxException
    {
        super(pddlFile);
        this.domain = domain;
        
        parseDocument();
        
        // Create map of (type name)->(type object) for easy lookup
        for (PDDLType type : domain.getTypes()) {
            types.put(type.getName(), type);
        }
    }
    
    protected FunctionDef findFunction(final String funcName, final String context) 
        throws InvalidPDDLElementException
    {
        FunctionDef func = domain.getFunctionByName(funcName);
        if (func == null) {
            throw new InvalidPDDLElementException("Function " + funcName 
                      + " (used by " + context + ") is not declared");
        }
        return func;
    }

    protected PredicateDef findPredicate(final String predName, final String context) 
        throws InvalidPDDLElementException
    {
        final PredicateDef pred = domain.getPredicateByName(predName);
        if (pred == null) {
            throw new InvalidPDDLElementException("Predicate " + predName 
                      + " (used by " + context + ") is not declared");
        }
        return pred;
    }
    
    public Problem buildProblem() throws InvalidPDDLElementException
    {
        if (problem == null) {
            int type = docRoot.getType();
            if (type == PROBLEM) {
                problem = buildPDDLProblem(docRoot);
            } else {
                throw new InvalidPDDLElementException("The file " + pddlFile + " does not contain a PDDL domain");
            }
            problem.setGoalAction(PddlImporter.createGoal(problem.getGoal()));
        }
        return problem;
    }

    private Problem buildPDDLProblem(Tree problemNode) throws InvalidPDDLElementException
    {
        logger.fine("Building a PDDL Problem");        
        
        // Iterate over all the immediate children of the DOMAIN node
        for (int i=0; i < problemNode.getChildCount(); i++) {
            final Tree child = problemNode.getChild(i);
            final int type = child.getType();
            switch (type) {
                case PROBLEM_NAME:
                    name = child.getChild(0).getText();
                    logger.fine("Problem name=" + name);
                    break;
                case PROBLEM_DOMAIN:
                    String domainName = child.getChild(0).getText();
                    if ((Domain.CASE_SENSITIVE && !domain.getName().equals(domainName))
                            || !domain.getName().equalsIgnoreCase(domainName)) {
                        throw new InvalidPDDLElementException("Domain name for problem (" + domainName 
                                                              + ") does not match specified Domain object ("
                                                              + domain.getName() + ")");
                    }
                    logger.fine("Problem's domain=" + domainName);
                    break;
                case REQUIREMENTS:
                    addRequirements(child);
                    break;
                case OBJECTS:
                    addObjects(child);
                    break;
                case INIT:
                    addInitialState(child);
                    break;
                case GOAL:
                    goal = buildGoalDesc(child.getChild(0), objectLookup, "problem goal");
                    logger.fine("Problem goal=" + goal);
                    break;
                case PROBLEM_CONSTRAINT:
                    throw new UnsupportedOperationException("Constraints not supported yet");
                case PROBLEM_METRIC:
                    // TODO: Deal with metrics
                    // Ignore this silently for now
                    break;
                default:
                    throw new UnsupportedOperationException("Unsupported :problem child element - " + child.getText());
            }
        }
        return new IncompleteProblem(name, domain, new HashSet<PDDLObject>(objects.values()), startState, goal);
    }

    private void addObjects(Tree objectsNode) throws InvalidPDDLElementException
    {
        for (int i=0; i < objectsNode.getChildCount(); i++) {
            final Tree object = objectsNode.getChild(i);
            final String objectName = object.getText();
            final String lookupName = Domain.CASE_SENSITIVE ? objectName : objectName.toLowerCase();
            
            if (object.getChildCount() == 0) {
                // No type
                objects.put(lookupName, new PDDLObject(objectName));
            } else {
                final String typeName = object.getChild(0).getText();
                final PDDLType type = findType(typeName, "object " + objectName);
                objects.put(lookupName, new PDDLObject(objectName, type));
            }
        }
        logger.fine("Objects=" + objects.values());
    }

    private void addInitialState(Tree initNode) throws InvalidPDDLElementException
    {
        for (int i=0; i < initNode.getChildCount(); i++) {
            final Tree child = initNode.getChild(i);
            final int type = child.getType();
            switch (type) {
                case INIT_EQ:
                    addFuncLiteral(child);
                    break;
                case PRED_INST:
                    addPredLiteral(child, true);
                    break;
                case NOT_PRED_INIT:
                    addPredLiteral(child.getChild(0), false);
                    break;
                case INIT_AT:
                    throw new UnsupportedOperationException("'at' init elements not supported yet");
                default:
                    throw new InvalidPDDLElementException("Unknown init element: " + child.getText());
            }
        }
        logger.fine("Literals=" + startState.getLiterals());
    }

    private void addFuncLiteral(Tree initNode) throws InvalidPDDLElementException
    {
        Tree funcNode = initNode.getChild(0);
        FunctionInstance func = (FunctionInstance) buildFunctionExpr(funcNode, objectLookup, ":init section");
        Tree numberNode = initNode.getChild(1);
        int value = Integer.parseInt(numberNode.getText());
        startState.addOrReplaceFunction(new FunctionLiteral(func, value));
    }

    private void addPredLiteral(Tree predNode, boolean value) throws InvalidPDDLElementException
    {
        PredicateInstance pred = (PredicateInstance) buildPredicateGoal(predNode, objectLookup, ":init section");
        startState.addOrReplacePredicate(new PredicateLiteral(pred, value));
    }
}
