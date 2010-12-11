package edu.usu.cs.ka.currentsystem.utilities;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;

//Makes domains and problem from pddl files
public class DomainAndProblemMaker_Utility 
{
	Domain domain;
	Problem problem;
		
	public DomainAndProblemMaker_Utility(String domainFileString, String problemFileString) 
	{		
		File domainFile = new File(domainFileString);
		if (!domainFile.exists()) 
		{
			System.err.println("Unable to find PDDL domain file " + domainFileString);
			System.exit(1);
		}
		File problemFile = new File(problemFileString);
		if (!problemFile.exists())
		{
			System.err.println("Unable to find PDDL problem file " + problemFileString);
			System.exit(1);
		}
		
		domain = null;
		problem = null;
		try {
			ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFile);
			domain = domBuilder.buildDomain();
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain, problemFile);
			problem = probBuilder.buildProblem();

		} catch (IOException e) 
		{
			System.err.println("Error reading PDDL file(s): " + e);
			e.printStackTrace();
		} catch (PDDLSyntaxException e) 
		{
			System.err.println("Syntax errors found in the PDDL file(s).");
			e.printStackTrace();
		} catch (InvalidPDDLElementException e) 
		{
			System.err.println("Invalid semantics in the PDDL file(s): " + e);
			e.printStackTrace();
		}
	}
	
	public Domain getOriginalIncompleteDomain() {return domain;}
	public Problem getProblem() 				{return problem;}
	
	public static void printDomain(Domain d)
	{
		System.out.println("\n----------------------------------------------");
		System.out.println("PRINTING A DOMAIN: \n");
		
		System.out.print("domain.getName(): ");
		System.out.println(d.getName());
		
		System.out.print("domain.getRequirements(): ");
		System.out.println(d.getRequirements());
		System.out.println();
				
		System.out.print("domain.getConstants(): ");
		System.out.println(d.getConstants());
		
		System.out.print("domain.getTypes(): ");
		System.out.println(d.getTypes());
		
		System.out.print("domain.getFunctions(): ");
		System.out.println(d.getFunctions());
		System.out.println();
		
		System.out.println("domain.getPredicates(): ");
		System.out.println(d.getPredicates());
		
		System.out.println("domain.getDynamicPredicates(): ");
		System.out.println(d.getDynamicPredicates());
				
		System.out.println("\n----------------------------------------------");
		System.out.println("BEGIN - ACTIONS");
		
		List<ActionDef> actions = d.getActions();
		for(ActionDef a : actions)
		{
			System.out.println();
			System.out.print("a.getName(): ");
			System.out.println(a.getName());
			System.out.print("a.getArguments(): ");
			System.out.println(a.getArguments());
	
			System.out.print("a.getPreCondition(): ");
			System.out.println(a.getPreCondition());
			System.out.print("a.getPossPreCondition(): ");
			System.out.println(a.getPossPreCondition());
					
			System.out.print("a.getEffect(): ");
			System.out.println(a.getEffect());
			System.out.print("a.getPossEffect(): ");
			System.out.println(a.getPossEffect());

			System.out.print("a.getPreconditionMethods(): ");
			System.out.println(a.getPreconditionMethods());
			
			System.out.print("a.getQuantifiedVariablesMap(): ");
			System.out.println(a.getQuantifiedVariablesMap());
		}
			
		System.out.println("\nEND - ACTIONS");
		System.out.println("----------------------------------------------");
		
		System.out.println("\nEND - PRINTING A DOMAIN");
		System.out.println("----------------------------------------------\n");
	}

	//Might be helpful in showing how the problem's actionList changes when ka is performed.
	//This is under the assumption that the planners use the problems version of the actionList,
	// NOT the domains version.
	//Still has to be completed (follow the style of method printDomain)
	public static void printProblem(Problem p)
	{
		System.out.println("\n----------------------------------------------");
		System.out.println("PRINTING A PROBLEM: \n");
		
		p.getActions();
		p.getGoal();
		p.getGoalAction();
		p.getGoals();
		p.getInitialState();
		p.getName();
		p.getStartState();
		
		System.out.println("\nEND - PRINTING A PROBLEM");
		System.out.println("----------------------------------------------\n");
	}
	
	public static void printProblemInitialStateAndGoalAction(Problem p)
	{	
		System.out.println("problem: " + p);
		
		System.out.println("problem.getObjects(): " + p.getObjects());
		System.out.println("problem.getStartState(): "  + p.getStartState());
		System.out.println("problem.getStartState().getFunctionLiterals(): "  + p.getStartState().getFunctionLiterals());
		System.out.println("problem.getStartState().getLiterals(): "  + p.getStartState().getLiterals());
		System.out.println("problem.getStartState().getPredicateLiterals(): "  + p.getStartState().getPredicateLiterals());
		
		Set<Proposition> currentState = p.getInitialState();
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INITIAL STATE:\n");
		for (Proposition prop : currentState)
			System.out.print(prop + " ");
		System.out.println("\n\nEND - INITIAL STATE");
		System.out.println("************************************************************************\n");
		
		System.out.println("************************************************************************");
		System.out.println("BEGIN - INCOMPLETEACTION INSTANCE - GOAL ACTION:\n");
		Actions_Utility.printIncompleteVersionOfActionInstance(p.getGoalAction());
		System.out.println("\nTHUS, GOAL STATE INCLUDES: " + p.getGoalAction().getPreconditions());
		System.out.println("\nEND - INCOMPLETEACTION INSTANCE - GOAL ACTION:\n");
		System.out.println("************************************************************************\n");	
	}
}


