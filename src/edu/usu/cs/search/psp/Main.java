package edu.usu.cs.search.psp;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.pspvanilla.PSPSolver;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class Main {
	private static Logger logger  = Logger.getLogger(Main.class.getName());
	
	public static void main(String[] args) {
	    if (args.length != 2) {
	        usage();
	    }
	    File domainFile = new File(args[0]);
	    if (!domainFile.exists()) {
	        System.err.println("Unable to find PDDL domain file " + args[0]);
	        usage();
	    }
	    File problemFile = new File(args[1]);
	    if (!problemFile.exists()) {
	        System.err.println("Unable to find PDDL problem file " + args[1]);
	        usage();
	    }
	            
	    try {
	        ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFile);
	        Domain domain = domBuilder.buildDomain();
	        ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain, problemFile);
	        Problem problem = probBuilder.buildProblem();
	        
	        SearchStatistics searchStatistics = new SearchStatistics();
	        SolverOptions solverOptions = new SolverOptions();
	        PSPSolver solver = new PSPSolver(domain, problem, searchStatistics, solverOptions);
	        List<ActionInstance> plan = solver.solve();
	        if (plan == null) {
	            logger.debug("No plan found");
	        } else {
	        	logger.debug(solver.getNodesExpandedCount() + " nodes expanded");
	           	logger.debug("Total time taken: " + solver.getTotalTimeTaken() + " milliseconds");
            	logger.debug("Time taken computing heuristic: " + solver.getHeuristicTimeTaken() + " milliseconds");
	            logger.debug("Plan found in " + solver.getNumLevels() + " levels:");
	            for (ActionInstance action : plan) {
	                logger.debug(action.toString());
	            }
	        }
	    } catch (IOException e) {
	        System.err.println("Error reading PDDL file(s): " + e);
	        e.printStackTrace();
	    } catch (PDDLSyntaxException e) {
	        System.err.println("Syntax errors found in the PDDL file(s).");
	    } catch (InvalidPDDLElementException e) {
	        System.err.println("Invalid semantics in the PDDL file(s): " + e);
	        e.printStackTrace();
	    } catch (IllDefinedProblemException e) {
	        System.err.println("Badly defined problem: " + e);
	        e.printStackTrace();
		}
	}
	
	private static void usage() 
	{
	    System.err.println("usage: java GraphSolver <domain-pddl-file> <problem-pddl-file>");
	    System.exit(1);
	}
}
