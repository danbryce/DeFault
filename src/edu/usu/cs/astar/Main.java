package edu.usu.cs.astar;

import java.io.File;
import java.io.IOException;
import java.util.List;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.plangraph.IllDefinedProblemException;

public class Main {
    public static void main(String[] args) 
    {
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
            
            AStarSolver solver = new AStarSolver(domain, problem);
            List<ActionInstance> plan = solver.solve();
            if (plan == null) {
                System.out.println("No plan found");
            } else {
            	System.out.println(solver.getNodesExpandedCount() + " nodes expanded");
            	System.out.println("Total time taken: " + solver.getTotalTimeTaken() + " milliseconds");
            	System.out.println("Time taken computing heuristic: " + solver.getHeuristicTimeTaken() + " milliseconds");
                System.out.println("Plan found in " + solver.getNumLevels() + " levels:");
                for (ActionInstance action : plan) {
                    System.out.println(action.toString());
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
