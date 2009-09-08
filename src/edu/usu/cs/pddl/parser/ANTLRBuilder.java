/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ANTLRBuilder.java 117 2008-09-03 14:18:17Z zas $
 */
package edu.usu.cs.pddl.parser;

import static edu.usu.cs.pddl.antlr.PddlParser.AND_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.BINARY_OP;
import static edu.usu.cs.pddl.antlr.PddlParser.COMPARISON_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.EXISTS_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.FORALL_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.FUNC_HEAD;
import static edu.usu.cs.pddl.antlr.PddlParser.IMPLY_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.NAME;
import static edu.usu.cs.pddl.antlr.PddlParser.NOT_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.NUMBER;
import static edu.usu.cs.pddl.antlr.PddlParser.OR_GD;
import static edu.usu.cs.pddl.antlr.PddlParser.PRED_HEAD;
import static edu.usu.cs.pddl.antlr.PddlParser.UNARY_MINUS;
import static edu.usu.cs.pddl.antlr.PddlParser.VARIABLE;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CharStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;
import org.antlr.runtime.tree.CommonTree;
import org.antlr.runtime.tree.Tree;

import edu.usu.cs.pddl.antlr.PddlLexer;
import edu.usu.cs.pddl.antlr.PddlParser;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.FunctionDef;
import edu.usu.cs.pddl.domain.FunctionHeader;
import edu.usu.cs.pddl.domain.FunctionInstance;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.ImplyGoalDesc;
import edu.usu.cs.pddl.domain.NumericExpr;
import edu.usu.cs.pddl.domain.PDDLNumber;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PDDLType;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.PredicateHeader;
import edu.usu.cs.pddl.domain.PredicateInstance;
import edu.usu.cs.pddl.goalseffects.BinaryArithmeticExpr;
import edu.usu.cs.pddl.goalseffects.ComparisonGoalDesc;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;
import edu.usu.cs.pddl.goalseffects.NotGoalDesc;
import edu.usu.cs.pddl.goalseffects.UnaryMinusExpr;

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
		public void pushQuantifiedParam(FormalArgument arg, String context);
		public void popQuantifiedParam(FormalArgument arg, String context);
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
			return buildOrGoalDesc(gdNode, lookup, context);
		case NOT_GD:
			return buildNegatedGoalDesc(gdNode, lookup, context);
		case IMPLY_GD:
			return buildImplyGoalDesc(gdNode, lookup, context);
		case EXISTS_GD:
			return buildThereExistsGoalDesc(gdNode, lookup, context);
		case FORALL_GD:
			return buildForAllGoalDesc(gdNode, lookup, context);
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

	private GoalDesc buildImplyGoalDesc(Tree gdNode, ExpressionContext lookup, String context) 
	throws InvalidPDDLElementException
	{
		GoalDesc antecedent = buildGoalDesc(gdNode.getChild(0), lookup, context);
		GoalDesc consequent = buildGoalDesc(gdNode.getChild(1), lookup, context);

		return new ImplyGoalDesc(antecedent, consequent);
	}

	private GoalDesc buildForAllGoalDesc(Tree gdNode, ExpressionContext lookup, String context) 
	throws InvalidPDDLElementException
	{

		List<FormalArgument> variables =  new ArrayList<FormalArgument>();
		//Tree child  = gdNode.getChild(0);
		for(int i = 0; i < gdNode.getChildCount()-1; i++){
			Tree tree = gdNode.getChild(i);
			addArgument(tree, variables, context);
			lookup.pushQuantifiedParam(variables.get(variables.size()-1), context);
		}
		GoalDesc goal = buildGoalDesc(gdNode.getChild(gdNode.getChildCount()-1), lookup, context);
		GoalDesc rGoal = new ForAllGoalDesc(variables, goal);

		for(FormalArgument var : variables){
			lookup.popQuantifiedParam(var, context);
		}
		
		return rGoal;
	}

	private void addArgument(final Tree tree, List<FormalArgument> params, String context) throws InvalidPDDLElementException
	{
		final String paramName = tree.getText();
		if (tree.getChildCount() == 0) {
			// No type
			params.add(new FormalArgument(paramName));
		} else {
			final String typeName = tree.getChild(0).getText();
			final PDDLType paramType = findType(typeName, context);
			params.add(new FormalArgument(paramName, paramType));
		}
	}


	private GoalDesc buildThereExistsGoalDesc(Tree gdNode, ExpressionContext lookup, String context) 
	throws InvalidPDDLElementException
	{
		List<FormalArgument> variables =  new ArrayList<FormalArgument>();
		//Tree child  = gdNode.getChild(0);
		for(int i = 0; i < gdNode.getChildCount()-1; i++){
			Tree tree = gdNode.getChild(i);
			addArgument(tree, variables, context);
			lookup.pushQuantifiedParam(variables.get(variables.size()-1), context);
		}
		GoalDesc goal = buildGoalDesc(gdNode.getChild(gdNode.getChildCount()-1), lookup, context);
		GoalDesc rGoal = new ThereExistsGoalDesc(variables, goal);

		for(FormalArgument var : variables){
			lookup.popQuantifiedParam(var, context);
		}
		
		return rGoal;
	}
	private GoalDesc buildOrGoalDesc(Tree gdNode, ExpressionContext lookup, String context) 
	throws InvalidPDDLElementException
	{
		List<GoalDesc> subGoals = new ArrayList<GoalDesc>(gdNode.getChildCount());
		for (int i = 0; i < gdNode.getChildCount(); i++) {
			final Tree subNode = gdNode.getChild(i);
			subGoals.add(buildGoalDesc(subNode, lookup, context));
		}
		return new DisjunctionGoalDesc(subGoals);
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
