package edu.usu.cs.conformant;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FunctionDef;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.PredicateLiteral;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.SearchTest;

public class TranslationToCPP {
	private static Logger logger = Logger.getLogger(TranslationToCPP.class);
	
	public enum TranslationType {
		pond,
		pff,
	}
	
	private enum RiskType{PossPre, PossDel, PossAdd};
	
	// Converts a domain and problem ffrisky pddl file to conformant 
	// probabilistic planning files.
	public static void ConvertToCPP(
			Domain domain, 
			Problem problem, 
			String outputDomainFile,
			String outputProblemFile,
			TranslationType type) {
		
		convertDomain(problem, outputDomainFile, type);
		convertProblem(problem, outputProblemFile, type);
	}
	
	// Translates domain and writes it to a file
	protected static void convertDomain(Problem problem, String outputFile, TranslationType type) {
		Domain domain = problem.getDomain();
		StringBuilder output = new StringBuilder();
		output.append("(define (domain " + domain.getName() + ")\n");
		if(type == TranslationType.pond) {
			output.append(" (:requirements :probabilistic-effects)\n");
		}
		
		// Predicates
		output.append(" (:predicates");
		for(PredicateDef predicate : domain.getPredicates()) {
			output.append(" (" + predicate.getName() + ")");
		}
		for(ActionInstance actionInstance : problem.getActions()) {
			if(actionInstance instanceof IncompleteActionInstance) {
				IncompleteActionInstance action = (IncompleteActionInstance)actionInstance;
				for(Proposition pre : action.getPossiblePreconditions()) {
					output.append(" " + getRiskName(RiskType.PossPre, action, pre));
				}
				for(Proposition add : action.getPossibleAddEffects()) {
					output.append(" " + getRiskName(RiskType.PossAdd, action, add));
				}
				for(Proposition del : action.getPossibleDeleteEffects()) {
					output.append(" " + getRiskName(RiskType.PossDel, action, del));
				}
			}
		}
		output.append(getValid());
		output.append(" (done)");
		output.append(")\n");
		
		// Actions
		for(ActionInstance a : problem.getActions()) {
			if(!(a instanceof IncompleteActionInstance)) {
				continue;
			}
			output.append("\n");
			IncompleteActionInstance action = (IncompleteActionInstance)a;
			output.append(" (:action " + action.getName() + "\n");
			
			// Preconditions
//			output.append("  :precondition (and");
//			for(Proposition prop : action.getPreconditions()) {
//				output.append(" (" + prop.getName() + ")");
//			}
//			output.append(")\n");
			
			// Effects
			output.append("  :effect (and\n");
			// Add effects
			for(Proposition add : action.getAddEffects()) {
				output.append("    (when (and");
				output.append(getOP(action));
				output.append(") (" + add.getName() + ")");
				output.append(")\n");
			}
			// Delete effects
			for(Proposition del : action.getDeleteEffects()) {
				output.append("    (when (and");
				output.append(getOP(action));
				output.append(") (not (" + del.getName() + "))");
				output.append(")\n");
			}
			// Possible add effects
			for(Proposition possadd : action.getPossibleAddEffects()) {
				output.append("    (when (and");
				output.append(getOP(action));
				output.append(" " + getRiskName(RiskType.PossAdd, action, possadd));
				output.append(") (" + possadd.getName() + ")");
				output.append(")\n");
			}
			// Possible delete effects
			for(Proposition possdel : action.getPossibleDeleteEffects()) {
				output.append("    (when (and");
				output.append(getOP(action));
				output.append(" " + getRiskName(RiskType.PossDel, action, possdel));
				output.append(") (not (" + possdel.getName() + "))");
				output.append(")\n");
			}
			output.append(getNotOPImpliesNotPossibleSuccess(action));
			
			output.append("  )\n");
			output.append(" )\n");
		}
		
		// Add the goal action
		output.append("\n (:action cpp_goal\n  :precondition (and )");
		output.append("\n  :effect (when ");
		output.append(problem.getGoal());
		int lastParen = output.lastIndexOf(")");
		output.insert(lastParen, getValid());
		output.append(" (done))\n )\n");
		
		// Close
		output.append(")\n");
		
		// Create the file
		try {
			FileWriter fstream = new FileWriter(outputFile, false);
			BufferedWriter out = new BufferedWriter(fstream);
			out.write(output.toString());
			out.close();
			logger.debug("\nDomain file created at " + outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static StringBuilder getRiskName(RiskType riskType, IncompleteActionInstance action, Proposition prop) {
		StringBuilder risk = new StringBuilder("(");
		if(riskType == RiskType.PossPre) {
			risk.append("openprec_");
		}
		else if(riskType == RiskType.PossDel) {
			risk.append("possclob_");
		}
		else if(riskType == RiskType.PossAdd) {
			risk.append("unlistedeffect_");
		} else {
			return null;
		}
		
		risk.append(action.getName() + "_" + prop.getName() + ")");
		
		return risk;
	}
	
	private static StringBuilder getOP(IncompleteActionInstance action) {
		// when ((possprec OR !possprecrisk) AND)
		StringBuilder output = new StringBuilder();
		for(Proposition prec : action.getPreconditions()) {
			output.append(" (" + prec.getName() + ")");
		}
		for(Proposition possprec : action.getPossiblePreconditions()) {
			output.append(" (or (" + possprec.getName() + ") (not " + getRiskName(RiskType.PossPre, action, possprec) + "))");
		}
		output.append(getValid());
		return output;
	}
	
	private static StringBuilder getNotOPImpliesNotPossibleSuccess(IncompleteActionInstance action) {
		StringBuilder output = new StringBuilder("    (when (not (and");
		
		output.append(getOP(action));
		output.append(")) (not" + getValid() + "))\n");
		
		return output;
	}
	
	private static StringBuilder getValid() {
		return new StringBuilder(" (valid)");
	}
	
	// Translates problem and writes it to a file
	protected static void convertProblem(Problem problem, String outputFile, TranslationType type) {
		StringBuilder output = new StringBuilder();
		output.append("(define (problem " + problem.getName() + ")\n");
		output.append(" (:domain " + problem.getDomain().getName() + ")\n");
		
		// Initial state
		Collection<PredicateLiteral> literals = problem.getStartState().getPredicateLiterals();
		Set<Proposition> initialState = new HashSet<Proposition>();
		for (PredicateLiteral literal : literals) {
			if (literal.getValue()) {
				Proposition p = Proposition.getPropositionFromIndex(literal.getInstance());			
				initialState.add(p);
			}
		}
		output.append(" (:init\n");
		for(Proposition prop : initialState) {
			output.append("  (" + prop.getName() + ")\n");
		}
		
		output.append(" " + getValid() + "\n");
		for(ActionInstance actionInstance : problem.getActions()) {
			if(actionInstance instanceof IncompleteActionInstance) {
				IncompleteActionInstance action = (IncompleteActionInstance)actionInstance;
				for(Proposition pre : action.getPossiblePreconditions()) {
					if(type == TranslationType.pond) {
						output.append("  (probabilistic 0.5 " + 
								getRiskName(RiskType.PossPre, action, pre) + 
								")\n");
					}
					else if(type == TranslationType.pff) {
						output.append("  (cpt " + 
								getRiskName(RiskType.PossPre, action, pre) + 
								" 0.5)\n");
					}
				}
				for(Proposition add : action.getPossibleAddEffects()) {
					if(type == TranslationType.pond) {
						output.append("  (probabilistic 0.5 " + 
								getRiskName(RiskType.PossAdd, action, add) + 
								")\n");
					}
					else if(type == TranslationType.pff) {
						output.append("  (cpt " +
								getRiskName(RiskType.PossAdd, action, add) +
								" 0.5)\n");
					}
				}
				for(Proposition del : action.getPossibleDeleteEffects()) {
					if(type == TranslationType.pond) {
						output.append("  (probabilistic 0.5 " + 
								getRiskName(RiskType.PossDel, action, del) + 
								")\n");
					}
					else if(type == TranslationType.pff) {
						output.append("  (cpt " +
								getRiskName(RiskType.PossDel, action, del) +
								" 0.5)\n");
					}
				}
			}
		}
		output.append(" )\n");
		
		// Goal state
		if(type == TranslationType.pond) {
			output.append(" (:goal (and (done)))\n");
		}
		else if(type == TranslationType.pff) {
			output.append(" (:goal 0.000001\n (and (done)))\n");
		}
//		output.append(" (:goal " + problem.getGoal());
//		// Remove the last ")"
//		int lastParen = output.lastIndexOf(")");
//		output.insert(lastParen, getValid());
//		output.append("\n )\n");
		
		// Close
		output.append(")\n");
		
//		logger.debug(output);
		
		// Create the file
		try {
			FileWriter fstream = new FileWriter(outputFile, false);
			BufferedWriter out = new BufferedWriter(fstream);
			out.write(output.toString());
			out.close();
			logger.debug("\nProblem file written at " + outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// Just for testing
	protected static void outputDomain(Domain domain) {
		// Now the domain
		logger.debug("Domain");
		logger.debug("Name: " + domain.getName() + "\n");
		
		// Print requirements
		logger.debug("Requirements:");
		for(String requirement : domain.getRequirements()) {
			logger.debug("\t" + requirement);
		}
		logger.debug("\n");
		
		// Print Predicates
		logger.debug("Predicates:");
		for(PredicateDef predicate : domain.getPredicates()) {
			logger.debug("\t" + predicate.getName());
		}
		logger.debug("\n");

		// Print Actions
		logger.debug("Actions:");
		for(ActionDef action : domain.getActions()) {
			logger.debug("\t" + action.getName());
		}
		logger.debug("\n");
		
		// Print Functions
		logger.debug("Functions:");
		for(FunctionDef function : domain.getFunctions()) {
			logger.debug("\t" + function.getName());
		}
		logger.debug("\n");
	}
	
	// Just for testing
	protected static void outputProblem(Problem problem) {
		logger.debug("Problem");
		logger.debug("Name: " + problem.getName() + "\n");
		
		// Print Actions, Goals, InitState,  
		logger.debug("Initial State:");
		for(Proposition proposition : problem.getInitialState()) {
			logger.debug("\t" + proposition.getName());
		}
		logger.debug("\n");
		
		// Print Goals
		logger.debug("Goals:");
		logger.debug("\t" + problem.getGoalAction());
		for(GoalDesc goal : problem.getGoals()) {
			logger.debug("\t" + goal);
		}
		logger.debug("\n");
		
		// Print Actions
		logger.debug("Actions:");
		for(ActionInstance action : problem.getActions()) {
			logger.debug(action.getName());
		}
		logger.debug("\n");
	}
}
