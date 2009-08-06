/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ANTLRDomainBuilder.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.parser;

import static edu.usu.cs.pddl.antlr.PddlParser.*;
import java.io.*;
import java.util.*;
import java.util.logging.*;
import org.antlr.runtime.tree.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.goalseffects.*;

/**
 * Builds a {@link edu.usu.cs.pddl.domain.Domain Domain} object by parsing a
 * PDDL file using ANTLR, and then walking the ANTLR syntax tree to create the
 * appropriate strongly-typed objects.
 */
public class ANTLRDomainBuilder extends ANTLRBuilder
{
    private static final Logger logger = Logger.getLogger(ANTLRDomainBuilder.class.getName());
    
    private Domain domain;

    private Map<String, FunctionDef> functions = new HashMap<String, FunctionDef>();
    private Map<String, PredicateDef> predicates = new HashMap<String, PredicateDef>();
    private List<ActionDef> actions = new ArrayList<ActionDef>();
    
    private class ActionLookup implements ExpressionContext
    {
        private List<FormalArgument> params;

        public ActionLookup(List<FormalArgument> params)
        {
            this.params = params;
        }
        public boolean expectObjects() 
        {
            return false;
        }
        public PDDLObject lookupObject(String name, String context) throws InvalidPDDLElementException
        {
            throw new IllegalStateException("Attempt to lookup a parameter in a PDDL Problem file");
        }
        public FormalArgument lookupParameter(String name, String context) throws InvalidPDDLElementException
        {
            for (FormalArgument arg : params) {
                if (Domain.CASE_SENSITIVE) {
                    if (arg.getName().equals(name)) {
                        return arg;
                    }
                } else if (arg.getName().equalsIgnoreCase(name)) {
                    return arg;
                }
            }
            throw new InvalidPDDLElementException("Parameter " + name 
                                                  + " (used by " + context + ") is not declared");
        }
    }

    public ANTLRDomainBuilder(File pddlFile) throws IOException, PDDLSyntaxException
    {
        super(pddlFile);
        
        parseDocument();
    }
    
    public Domain buildDomain() throws InvalidPDDLElementException
    {
        if (domain == null) {
            int type = docRoot.getType();
            if (type == DOMAIN) {
                domain = buildPDDLDomain(docRoot);
            } else {
                throw new InvalidPDDLElementException("The file " + pddlFile + " does not contain a PDDL domain");
            }
        }
        return domain;
    }

    private Domain buildPDDLDomain(Tree domainNode) throws InvalidPDDLElementException
    {
        logger.fine("Building a PDDL Domain");
        
        // First create the default "object" type
        types.put("object", new PDDLType("object"));
        
        // Iterate over all the immediate children of the DOMAIN node
        for (int i=0; i < domainNode.getChildCount(); i++) {
            final Tree child = domainNode.getChild(i);
            final int type = child.getType();
            switch (type) {
                case DOMAIN_NAME:
                    name = child.getChild(0).getText();
                    logger.fine("Domain name=" + name);
                    break;
                case REQUIREMENTS:
                    addRequirements(child);
                    break;
                case TYPES:
                    addTypes(child);
                    break;
                case CONSTANTS:
                    throw new UnsupportedOperationException("Constants not supported yet");
                case PREDICATES:
                    addPredicates(child);
                    break;
                case FUNCTIONS:
                    addFunctions(child);
                    break;
                case ACTION:
                    addAction(child);
                    break;
                default:
                    // DURATIVE_ACTION, ':derived', ':constraints'
                    throw new UnsupportedOperationException("Unsupported :domain child element - " + child.getText());
            }
        }
        return new Domain(name, 
                          requirements, 
                          new ArrayList<PDDLType>(types.values()), 
                          new ArrayList<FunctionDef>(functions.values()),
                          new ArrayList<PredicateDef>(predicates.values()),
                          actions);
    }

    private void addTypes(Tree typeNodes) throws InvalidPDDLElementException
    {
        for (int i=0; i < typeNodes.getChildCount(); i++) {
            final Tree type = typeNodes.getChild(i);
            final String typeName = type.getText();
            final String lookupName = Domain.CASE_SENSITIVE ? typeName : typeName.toLowerCase();
            if (type.getChildCount() == 0) {
                // No parent type
                types.put(lookupName, new PDDLType(typeName));
            } else {
                final String parentTypeName = type.getChild(0).getText();
                final PDDLType parentType = findType(parentTypeName, "type " + typeName);
                types.put(lookupName, new PDDLType(typeName, parentType));
            }
        }
        logger.fine("Types=" + types.values());
    }

    protected PredicateDef findPredicate(final String predName, final String context) throws InvalidPDDLElementException
    {
        final String lookupName = Domain.CASE_SENSITIVE ? predName : predName.toLowerCase();
        final PredicateDef pred = predicates.get(lookupName);
        if (pred == null) {
            throw new InvalidPDDLElementException("Predicate " + predName 
                      + " (used by " + context + ") is not declared");
        }
        return pred;
    }

    protected FunctionDef findFunction(final String funcName, final String context) throws InvalidPDDLElementException
    {
        final String lookupName = Domain.CASE_SENSITIVE ? funcName : funcName.toLowerCase();
        final FunctionDef func = functions.get(lookupName);
        if (func == null) {
            throw new InvalidPDDLElementException("Function " + funcName 
                      + " (used by " + context + ") is not declared");
        }
        return func;
    }

    private void addPredicates(Tree preds) throws InvalidPDDLElementException
    {
        for (int i=0; i < preds.getChildCount(); i++) {
            final Tree pred = preds.getChild(i);
            final String predName = pred.getText();
            final String lookupName = Domain.CASE_SENSITIVE ? predName : predName.toLowerCase();
            
            List<FormalArgument> args = new ArrayList<FormalArgument>(pred.getChildCount());
            for (int j=0; j < pred.getChildCount(); j++) {
                final Tree arg = pred.getChild(j);
                addArgument(arg, args, "predicate " + predName);
            }
            predicates.put(lookupName, new PredicateDef(predName, args));
        }
        logger.fine("Predicates=" + predicates.values());
    }

    private void addFunctions(Tree funcs) throws InvalidPDDLElementException
    {
        for (int i=0; i < funcs.getChildCount(); i++) {
            final Tree func = funcs.getChild(i);
            final String funcName = func.getText();
            final String lookupName = Domain.CASE_SENSITIVE ? funcName : funcName.toLowerCase();
            
            List<FormalArgument> args = new ArrayList<FormalArgument>(func.getChildCount());
            for (int j=0; j < func.getChildCount(); j++) {
                final Tree arg = func.getChild(j);
                addArgument(arg, args, "function " + funcName);
            }
            functions.put(lookupName, new FunctionDef(funcName, args));
        }
        logger.fine("Functions=" + functions.values());
    }

    private void addAction(Tree actionNode) throws InvalidPDDLElementException
    {        
        DefaultGoalDesc precond = null;
        DefaultGoalDesc possPrecond = null;
        Effect effect = null;
        Effect possEffect = null;
        List<FormalArgument> params = new ArrayList<FormalArgument>();
        ActionLookup lookup = new ActionLookup(params);
        
        String name = actionNode.getChild(0).getText();

        for (int i = 1; i < actionNode.getChildCount(); i++) {
            final Tree child = actionNode.getChild(i);
            final int type = child.getType();
            switch (type) {
                case VARIABLE:
                    addArgument(child, params, "action " + name);
                    break;
                case PRECONDITION:
                    precond = buildGoalDesc(child.getChild(0), lookup, "action " + name);
                    break;
                case POSSPRECONDITION:
                	if(!requirements.contains("incomplete-domain")){
                		logger.fine("Implicit requirement: incomplete-domain");
                	}
                	if(child.getChildCount() > 0)
                    possPrecond = buildGoalDesc(child.getChild(0), lookup, "action " + name);
                    break;
                case EFFECT:
                    effect = buildEffect(child.getChild(0), lookup, "action " + name);
                    break;
                case POSSEFFECT:
                	if(!requirements.contains("incomplete-domain")){
                		logger.fine("Implicit requirement: incomplete-domain");
                	}
                	if(child.getChildCount() > 0)
                	possEffect = buildEffect(child.getChild(0), lookup, "action " + name);
                    break;
                default:
                    throw new InvalidPDDLElementException("Invalid action child node: " + child.getText());
            }
        }
        ActionDef action = new ActionDef(name, params, precond, possPrecond, effect, possEffect);
        actions.add(action);
        logger.fine("Action=" + action);
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

    private Effect buildEffect(Tree effectNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        final int type = effectNode.getType();
        switch (type) {
            case PRED_HEAD:
                return new PredicateEffect(buildPredicateGoal(effectNode, lookup, context), true);
            case NOT_EFFECT:
                final Tree negationPred = effectNode.getChild(0);
                return new PredicateEffect(buildPredicateGoal(negationPred, lookup, context), false);
            case ASSIGN_EFFECT:
                return buildAssignEffect(effectNode, lookup, context);
            case AND_EFFECT:
                return buildConjunctionEffect(effectNode, lookup, context);
            case WHEN_EFFECT:
                return buildWhenEffect(effectNode, lookup, context);
            case FORALL_EFFECT:
                throw new UnsupportedOperationException("FORALL effects not supported yet");
            default:
                throw new InvalidPDDLElementException("Unknown type of effect: " + effectNode.getText());
        }
    }

    private Effect buildAssignEffect(Tree effectNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        String operator = effectNode.getChild(0).getText();
        NumericExpr target = buildFunctionExpr(effectNode.getChild(1), lookup, context);
        NumericExpr value = buildNumericExpr(effectNode.getChild(2), lookup, context);
        return new AssignEffect(operator, target, value);
    }
    
    private Effect buildConjunctionEffect(Tree effectNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        List<Effect> subEffects = new ArrayList<Effect>(effectNode.getChildCount());
        for (int i = 0; i < effectNode.getChildCount(); i++) {
            final Tree subNode = effectNode.getChild(i);
            subEffects.add(buildEffect(subNode, lookup, context));
        }
        return new ConjunctionEffect(subEffects);
    }
    
    private Effect buildWhenEffect(Tree effectNode, ExpressionContext lookup, String context) 
        throws InvalidPDDLElementException
    {
        DefaultGoalDesc condition = buildGoalDesc(effectNode.getChild(0), lookup, context);
        Effect condEffect = buildEffect(effectNode.getChild(1), lookup, context);
        return new WhenEffect(condition, condEffect);
    }
}
