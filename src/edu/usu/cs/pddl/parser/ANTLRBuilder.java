/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ANTLRBuilder.java 117 2008-09-03 14:18:17Z zas $
 */
package edu.usu.cs.pddl.parser;

import java.io.*;
import java.util.*;
import java.util.logging.*;
import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import edu.usu.cs.pddl.antlr.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.goalseffects.*;

import static edu.usu.cs.pddl.antlr.PddlParser.*;

/**
 * 
 */
public abstract class ANTLRBuilder
{
    private static final Logger logger = Logger.getLogger(ANTLRBuilder.class.getName());
    
    protected File pddlFile;
    protected CommonTree docRoot;
    
    protected String name;
    protected List<String> requirements = new ArrayList<String>();
    protected Map<String, PDDLType> types = new HashMap<String, PDDLType>();
    
    public ANTLRBuilder(File pddlFile)
    {
        this.pddlFile = pddlFile;
    }
    
    protected void parseDocument() throws IOException, PDDLSyntaxException
    {
        logger.info("Parsing PDDL file '" + pddlFile + "'");
        
        CharStream input = new ANTLRFileStream(pddlFile.getPath());
        PddlLexer lex = new PddlLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lex);

        PddlParser parser = new PddlParser(tokens);
        
        try {
            PddlParser.pddlDoc_return t = parser.pddlDoc();
            docRoot = (CommonTree) t.getTree();
            
            if (parser.invalidGrammar()) {
                throw new PDDLSyntaxException();
            }
            
        } catch (RecognitionException e) {
            // This won't generally happen, as @rulecatch {} is not defined in the grammar file,
            // so the default ANTLR exception handler will be used and exceptions quashed.
            throw new PDDLSyntaxException(e);
        }
    }

    protected void addRequirements(Tree reqs)
    {
        for (int i=0; i < reqs.getChildCount(); i++) {
            final Tree req = reqs.getChild(i);
            requirements.add(req.getText());
        }
        logger.fine("Requirements=" + requirements);
    }

    protected PDDLType findType(final String typeName, final String context) throws InvalidPDDLElementException
    {
        final PDDLType type = Domain.CASE_SENSITIVE ? types.get(typeName) : types.get(typeName.toLowerCase());
        if (type == null) {
            throw new InvalidPDDLElementException("Type " + typeName 
                      + " (used by " + context + ") is not declared");
        }
        return type;
    }

    protected abstract PredicateDef findPredicate(final String predName, final String context) 
        throws InvalidPDDLElementException;

    protected abstract FunctionDef findFunction(final String funcName, final String context) 
        throws InvalidPDDLElementException;

    /** 
     * Inteface used to provide the expression builder with access to the objects/parameters that
     * are available to be used as arguments to functions/predicates in the current context (which
     * may be an action defn, or a problem PDDL file).
     */
    protected interface ExpressionContext
    {
        /*** Whether objects or variables should be provided as arguments to funcs/preds */
        public boolean expectObjects();
        public PDDLObject lookupObject(String name, String context) throws InvalidPDDLElementException;
        public FormalArgument lookupParameter(String name, String context) throws InvalidPDDLElementException;
    }

    protected GoalDesc buildGoalDesc(Tree gdNode, ExpressionContext lookup, String context) throws InvalidPDDLElementException
    {
        final int type = gdNode.getType();
        switch (type) {
            case PRED_HEAD:
                return buildPredicateGoal(gdNode, lookup, context);
            case COMPARISON_GD:
                return buildComparisonGoalDesc(gdNode, lookup, context);
            case AND_GD:
                return buildConjuctionGoalDesc(gdNode, lookup, context);
            case OR_GD:
                throw new UnsupportedOperationException("OR goalDescs not supported yet");
            case NOT_GD:
                return buildNegatedGoalDesc(gdNode, lookup, context);
            case IMPLY_GD:
                throw new UnsupportedOperationException("IMPLY goalDescs not supported yet");
            case EXISTS_GD:
                throw new UnsupportedOperationException("EXISTS goalDescs not supported yet");
            case FORALL_GD:
                throw new UnsupportedOperationException("FORALL goalDescs not supported yet");
            default:
                throw new InvalidPDDLElementException("Unknown GoalDesc node: " + gdNode.getText());
        }
    }

    protected GoalDesc buildPredicateGoal(Tree gdNode, ExpressionContext lookup, String context) throws InvalidPDDLElementException
    {
        String name = gdNode.getChild(0).getText();
        PredicateDef predicate = findPredicate(name, context);
        List<FormalArgument> formalArgs = predicate.getArguments();
        if ((gdNode.getChildCount() - 1) != formalArgs.size()) {
            throw new InvalidPDDLElementException("Wrong number of arguments used for predicate " 
                                                  + name + " by " + context);
        }

        if (lookup.expectObjects()) {
            // Create a function instance, with real PDDL objects
            List<PDDLObject> actualArgs = buildObjectList(gdNode, name, lookup, context, formalArgs);
            return new PredicateInstance(predicate, actualArgs);
        } else {
            // Create a function header, with FormalArguments as placeholders
            List<FormalArgument> actualArgs = buildParamList(gdNode, name, lookup, context, formalArgs);
            return new PredicateHeader(predicate, actualArgs);
        }
    }

    protected NumericExpr buildFunctionExpr(Tree gdNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        String name = gdNode.getChild(0).getText();
        FunctionDef function = findFunction(name, context);
        List<FormalArgument> formalArgs = function.getArguments();
        if ((gdNode.getChildCount() - 1) != formalArgs.size()) {
            throw new InvalidPDDLElementException("Wrong number of arguments used for function " 
                                                  + name + " by " + context);
        }

        if (lookup.expectObjects()) {
            // Create a function instance, with real PDDL objects
            List<PDDLObject> actualArgs = buildObjectList(gdNode, name, lookup, context, formalArgs);
            return new FunctionInstance(function, actualArgs);
        } else {
            // Create a function header, with FormalArguments as placeholders
            List<FormalArgument> actualArgs = buildParamList(gdNode, name, lookup, context, formalArgs);
            return new FunctionHeader(function, actualArgs);
        }
    }

    private List<PDDLObject> buildObjectList(Tree methodNode, String methodName, 
                                             ExpressionContext lookup, String context, 
                                             List<FormalArgument> formalArgs) throws InvalidPDDLElementException
    {
        List<PDDLObject> actualArgs = new ArrayList<PDDLObject>(formalArgs.size());
        for (int i = 0; i < formalArgs.size(); i++) {
            Tree varNode = methodNode.getChild(i + 1);
            if (varNode.getType() != NAME) {
                throw new InvalidPDDLElementException("Parameter " + varNode.getText() + " of function/predicate "
                                                      + methodName + " should be an object (in " + context + ")");
            }
            PDDLObject obj = lookup.lookupObject(varNode.getText(), context);
            FormalArgument formalArg = formalArgs.get(i);
            if (!formalArg.typeMatches(obj)) {
                throw new InvalidPDDLElementException("Variable " + varNode.getText() 
                                                      + " is not of a valid type for argument " + formalArg.getName()
                                                      + " of function/predicate " + methodName + " used in " + context);
            }
            actualArgs.add(obj);
        }
        return actualArgs;
    }

    private List<FormalArgument> buildParamList(Tree methodNode, String methodName, 
                                                ExpressionContext lookup, String context, 
                                                List<FormalArgument> formalArgs) throws InvalidPDDLElementException
    {
        List<FormalArgument> actualArgs = new ArrayList<FormalArgument>(formalArgs.size());
        for (int i = 0; i < formalArgs.size(); i++) {
            Tree varNode = methodNode.getChild(i + 1);
            if (varNode.getType() != VARIABLE) {
                throw new InvalidPDDLElementException("Parameter " + varNode.getText() + " of function/predicate "
                                                      + methodName + " should be a variable (in " + context + ")");
            }
            FormalArgument param = lookup.lookupParameter(varNode.getText(), context);
            FormalArgument formalArg = formalArgs.get(i);
            if (!formalArg.typeMatches(param)) {
                throw new InvalidPDDLElementException("Variable " + varNode.getText() 
                                                      + " is not of a valid type for argument " + formalArg.getName()
                                                      + " of function/predicate " + methodName + " used in " + context);
            }
            actualArgs.add(param);
        }
        return actualArgs;
    }

    private GoalDesc buildComparisonGoalDesc(Tree node, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        String operator = node.getChild(0).getText();
        NumericExpr firstOperand = buildNumericExpr(node.getChild(1), lookup, context);
        NumericExpr secondOperand = buildNumericExpr(node.getChild(2), lookup, context);
        return new ComparisonGoalDesc(operator, firstOperand, secondOperand);
    }

    private GoalDesc buildConjuctionGoalDesc(Tree gdNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        List<GoalDesc> subGoals = new ArrayList<GoalDesc>(gdNode.getChildCount());
        for (int i = 0; i < gdNode.getChildCount(); i++) {
            final Tree subNode = gdNode.getChild(i);
            subGoals.add(buildGoalDesc(subNode, lookup, context));
        }
        return new ConjunctionGoalDesc(subGoals);
    }
    
    private GoalDesc buildNegatedGoalDesc(Tree node, ExpressionContext lookup, String context) throws InvalidPDDLElementException{
    	GoalDesc subGoal = buildGoalDesc(node.getChild(0), lookup, context);
    	return new NotGoalDesc(subGoal);
    }

    protected NumericExpr buildNumericExpr(Tree exprNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        final int type = exprNode.getType();
        switch (type) {
            case NUMBER:
                return new PDDLNumber(Integer.parseInt(exprNode.getText()));
            case BINARY_OP:
                return buildBinaryOpExpr(exprNode, lookup, context);
            case UNARY_MINUS:
                return buildUnaryMinusExpr(exprNode, lookup, context);
            case FUNC_HEAD:
                return buildFunctionExpr(exprNode, lookup, context);
            default:
                throw new InvalidPDDLElementException("Unknown fExp type: " + exprNode.getText());
        }
    }

    private NumericExpr buildBinaryOpExpr(Tree exprNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        String operator = exprNode.getChild(0).getText();
        NumericExpr firstOperand = buildNumericExpr(exprNode.getChild(1), lookup, context);
        NumericExpr secondOperand = buildNumericExpr(exprNode.getChild(2), lookup, context);
        return new BinaryArithmeticExpr(operator, firstOperand, secondOperand);
    }
    
    private NumericExpr buildUnaryMinusExpr(Tree exprNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        return new UnaryMinusExpr(buildNumericExpr(exprNode.getChild(0), lookup, context));
    }
}
