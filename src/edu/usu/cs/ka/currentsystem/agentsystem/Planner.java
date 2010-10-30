package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.List;

import edu.usu.cs.ka.currentsystem.utilities.Actions_Utility;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.PODEFFSolver;
import edu.usu.cs.planner.PODEPISolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class Planner 
{
	Long startTime;
	Long finishTime;
	
	Domain domain;
	Problem problem;
	
	public Planner(Domain d, Problem p)
	{
		domain = d;
		problem = p;
	}
	
	
	public List<ActionInstance> runAmirPlanner()
	{
		//Setting up the Amir/length solver
		Solver solver = null;
		System.gc();
		
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		solverOptions.setUseMultipleSupportersInPlanningGraph(false);
		try{
			solver = new PODEFFSolver(domain, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {e.printStackTrace(); return null;}
		
		//Run Amir/length solver
		startStopwatch();
		List<ActionInstance> plan = solver.run();
		stopStopwatch();
		
		return plan;
	}
	
	public List<ActionInstance> runBrycePlanner()
	{
		//Setting up the Bryce/DeFault solver
		Solver solver = null;
		System.gc();
		
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		solverOptions.setUseMultipleSupportersInPlanningGraph(true);
		solverOptions.setRiskArity(Integer.valueOf(1));//arity 1 only
		solverOptions.setFaultType(SolverOptions.FAULT_TYPE.PI_FAULTS);
		
		try{
			solver = new PODEPISolver(domain, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {e.printStackTrace(); return null;}
		
		//Run Bryce/DeFault solver
		startStopwatch();
		List<ActionInstance> plan = solver.run();
		stopStopwatch();

		return plan;	
	}
	
	//This allows for the actionInstances of problem to be manipulated
	public void setProblem(Problem p){problem = p;}
	
	public static void printPlan(List<ActionInstance> plan)
	{
		for(ActionInstance a : plan)
		{
			IncompleteActionInstance ia = (IncompleteActionInstance) a;
			Actions_Utility.printIncompleteVersionOfActionInstance(ia);
		}
	}

	
	public void startStopwatch(){startTime = System.currentTimeMillis();}
	
	public void stopStopwatch(){finishTime = System.currentTimeMillis();}
	
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}

}
