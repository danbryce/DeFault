package edu.usu.cs.ka.currentsystem.agentsystem;

import java.util.List;

import edu.usu.cs.ka.currentsystem.utilities.Actions_Utility;
import edu.usu.cs.ka.currentsystem.utilities.DomainAndProblemMaker_Utility;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.PODEFFSolver;
import edu.usu.cs.planner.PODEPISolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class Planner 
{	
	//Domain and Problem stuff
	String domainFile;
	String problemFile;
	
    Domain domain;
    Problem problem;

	//Results stuff
	Long startTime;
	Long finishTime;
	
	int numTimesAmirPlannerCalled;
	int numTimesBrycePlannerCalled;
	
	public Planner(String dFile, String pFile)
	{
		domainFile = dFile;
		problemFile = pFile;
		
		setDomainAndProblem();
		
		numTimesAmirPlannerCalled = 0;
		numTimesBrycePlannerCalled = 0;
	}
	
	public int getNumTimesAmirPlannerCalled() { return numTimesAmirPlannerCalled; }
	public int getNumTimesBrycePlannerCalled() { return numTimesBrycePlannerCalled; }
	
	public void decrementNumTimesAmirPlannerCalled() { numTimesAmirPlannerCalled--; }
	
	private void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	//This allows for the actionInstances of problem to be manipulated
	public void setProblem(Problem p){problem = p;}
	
	/**
	 * Setting up and running the Amir/Length solver.
	 * 
	 * @return List<ActionInstance> plan
	 */
	public List<ActionInstance> runAmirPlanner()
	{
		numTimesAmirPlannerCalled++;
		
		Solver solver = null;
		RiskCounter.resetIsInitialized();
		Fault.resetStaticHashMaps(); //This might now be accounted for in RiskCounter...
		System.gc();
		
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		solverOptions.setUseMultipleSupportersInPlanningGraph(false);
		
		try{
			solver = new PODEFFSolver(domain, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {System.out.print("Error: "); e.printStackTrace(); return null;}
		
		startStopwatch();
		List<ActionInstance> plan = solver.run();
		stopStopwatch();
		
		return plan;
	}
	
	/**
	 * Setting up and running the Bryce/DeFault solver.
	 * 
	 * @return List<ActionInstance> plan
	 */
	public List<ActionInstance> runBrycePlanner()
	{
		numTimesBrycePlannerCalled++;
		
		Solver solver = null;
		RiskCounter.resetIsInitialized();
		Fault.resetStaticHashMaps(); //This might now be accounted for in RiskCounter...
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
		}catch (IllDefinedProblemException e) {System.out.print("Error: "); e.printStackTrace(); return null;}
		
		startStopwatch();
		List<ActionInstance> plan = solver.run();
		stopStopwatch();

		return plan;	
	}
			
	private void startStopwatch(){startTime = System.currentTimeMillis();}
	
	private void stopStopwatch(){finishTime = System.currentTimeMillis();}
	
	public Double getTimeToSolve()
	{
		if(startTime == null || finishTime == null) return -1.0;
		else return (finishTime - startTime)/1000.0;
	}
	
	public static void printPlanLong(List<ActionInstance> plan)
	{
		for(ActionInstance a : plan)
		{
			IncompleteActionInstance ia = (IncompleteActionInstance) a;
			Actions_Utility.printIncompleteVersionOfActionInstance(ia);
		}
	}
	
	public static void printPlanShort(List<ActionInstance> plan)
	{
		for(ActionInstance a : plan)
			System.out.println("   " + a.getName());
	}
}
