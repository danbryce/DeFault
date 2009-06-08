package edu.usu.cs.heuristic;

import java.util.List;

import edu.usu.cs.heuristic.relaxedplangraph.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class RelaxedPlanGraphHeuristic implements IHeuristic {
	
	private final Domain domain;
	private Problem problem;
	private static final double MAX_H_VALUE = Double.MAX_VALUE;

	
	public RelaxedPlanGraphHeuristic(Domain domain, Problem problem){
		this.domain = domain;
		this.problem = problem;
	}

	
	public double getValue(StateNode node) {
		ConsistentLiteralSet state = node.getState();
		problem = new Problem(problem.getName(), problem.getDomain(), problem.getObjects(), state, problem.getGoal());
		
		try {
			GraphSolver solver = new GraphSolver(domain, problem);
			List<GraphAction> plan = solver.solve();
	        if(plan == null) {
	        	System.out.println("No plan found");
	        	return MAX_H_VALUE;
	        }
//	        else {
//	            System.out.println("Plan found in " + solver.getNumLevels() + " levels:");
//	        }
	        
	        return solver.getNumLevels();
	        
        } catch (IllDefinedProblemException e) {
            System.err.println("Badly defined problem: " + e);
            e.printStackTrace();
        }
        
        return -1;
	}

}
