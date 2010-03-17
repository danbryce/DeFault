package edu.usu.cs.conformant;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FunctionDef;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class TranslationToCPP {
	
	public enum TranslationType {
		pond,
		pff,
	}
	
	private enum RiskType{OpenPrec, PossClob, UnlistedEffect};
	
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
					output.append(" " + getRiskName(RiskType.OpenPrec, action, pre));
				}
				for(Proposition add : action.getPossibleAddEffects()) {
					output.append(" " + getRiskName(RiskType.UnlistedEffect, action, add));
				}
				for(Proposition del : action.getPossibleDeleteEffects()) {
					output.append(" " + getRiskName(RiskType.PossClob, action, del));
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
				output.append(" " + getRiskName(RiskType.UnlistedEffect, action, possadd));
				output.append(") (" + possadd.getName() + ")");
				output.append(")\n");
			}
			// Possible delete effects
			for(Proposition possdel : action.getPossibleDeleteEffects()) {
				output.append("    (when (and");
				output.append(getOP(action));
				output.append(" " + getRiskName(RiskType.PossClob, action, possdel));
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
			System.out.println("\nDomain file created at " + outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static StringBuilder getRiskName(RiskType riskType, IncompleteActionInstance action, Proposition prop) {
		StringBuilder risk = new StringBuilder("(");
		if(riskType == RiskType.OpenPrec) {
			risk.append("openprec_");
		}
		else if(riskType == RiskType.PossClob) {
			risk.append("possclob_");
		}
		else if(riskType == RiskType.UnlistedEffect) {
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
			output.append(" (or (" + possprec.getName() + ") (not " + getRiskName(RiskType.OpenPrec, action, possprec) + "))");
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
		output.append(" (:init\n");
		for(Proposition prop : problem.getInitialState()) {
			output.append("  (" + prop.getName() + ")\n");
		}
		output.append(" " + getValid() + "\n");
		for(ActionInstance actionInstance : problem.getActions()) {
			if(actionInstance instanceof IncompleteActionInstance) {
				IncompleteActionInstance action = (IncompleteActionInstance)actionInstance;
				for(Proposition pre : action.getPossiblePreconditions()) {
					if(type == TranslationType.pond) {
						output.append("  (probabilistic 0.5 " + 
								getRiskName(RiskType.OpenPrec, action, pre) + 
								")\n");
					}
					else if(type == TranslationType.pff) {
						output.append("  (cpt " + 
								getRiskName(RiskType.OpenPrec, action, pre) + 
								" 0.5)\n");
					}
				}
				for(Proposition add : action.getPossibleAddEffects()) {
					if(type == TranslationType.pond) {
						output.append("  (probabilistic 0.5 " + 
								getRiskName(RiskType.UnlistedEffect, action, add) + 
								")\n");
					}
					else if(type == TranslationType.pff) {
						output.append("  (cpt " +
								getRiskName(RiskType.UnlistedEffect, action, add) +
								" 0.5)\n");
					}
				}
				for(Proposition del : action.getPossibleDeleteEffects()) {
					if(type == TranslationType.pond) {
						output.append("  (probabilistic 0.5 " + 
								getRiskName(RiskType.PossClob, action, del) + 
								")\n");
					}
					else if(type == TranslationType.pff) {
						output.append("  (cpt " +
								getRiskName(RiskType.PossClob, action, del) +
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
		
//		System.out.println(output);
		
		// Create the file
		try {
			FileWriter fstream = new FileWriter(outputFile, false);
			BufferedWriter out = new BufferedWriter(fstream);
			out.write(output.toString());
			out.close();
			System.out.println("\nProblem file written at " + outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// Just for testing
	protected static void outputDomain(Domain domain) {
		// Now the domain
		System.out.println("Domain");
		System.out.println("Name: " + domain.getName() + "\n");
		
		// Print requirements
		System.out.println("Requirements:");
		for(String requirement : domain.getRequirements()) {
			System.out.println("\t" + requirement);
		}
		System.out.println();
		
		// Print Predicates
		System.out.println("Predicates:");
		for(PredicateDef predicate : domain.getPredicates()) {
			System.out.println("\t" + predicate.getName());
		}
		System.out.println();

		// Print Actions
		System.out.println("Actions:");
		for(ActionDef action : domain.getActions()) {
			System.out.println("\t" + action.getName());
		}
		System.out.println();
		
		// Print Functions
		System.out.println("Functions:");
		for(FunctionDef function : domain.getFunctions()) {
			System.out.println("\t" + function.getName());
		}
		System.out.println();
	}
	
	// Just for testing
	protected static void outputProblem(Problem problem) {
		System.out.println("Problem");
		System.out.println("Name: " + problem.getName() + "\n");
		
		// Print Actions, Goals, InitState,  
		System.out.println("Initial State:");
		for(Proposition proposition : problem.getInitialState()) {
			System.out.println("\t" + proposition.getName());
		}
		System.out.println();
		
		// Print Goals
		System.out.println("Goals:");
		System.out.println("\t" + problem.getGoalAction());
		for(GoalDesc goal : problem.getGoals()) {
			System.out.println("\t" + goal);
		}
		System.out.println();
		
		// Print Actions
		System.out.println("Actions:");
		for(ActionInstance action : problem.getActions()) {
			System.out.println(action.getName());
		}
		System.out.println("\n");
	}
}
