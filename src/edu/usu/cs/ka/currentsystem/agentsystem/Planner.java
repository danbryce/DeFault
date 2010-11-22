package edu.usu.cs.ka.currentsystem.agentsystem;

import java.math.BigInteger;
import java.util.*;

import edu.usu.cs.ka.currentsystem.utilities.*;

import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.domain.incomplete.*;
import edu.usu.cs.planner.*;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class Planner 
{	
	//Domain and Problem stuff
	String domainFile;
	String problemFile;
	
    Domain domain;
    public Problem problem;
    BigInteger initialModelCount;
    
    static public Solver solver;

	//Results stuff
	Long startTime;
	Long finishTime;
	
	int numTimesPlannerCalled;
	
	public Planner(String dFile, String pFile)
	{
		domainFile = dFile;
		problemFile = pFile;
		
		Proposition.clearAll();//Or below setDomainAndProblem?
				
		setDomainAndProblem();

		RiskCounter.resetIsInitialized();
		RiskCounter.initialize(domain, problem);
		
		initialModelCount = RiskCounter.getModelCount(1);
		
		numTimesPlannerCalled = 0;
	}
	
	private void setDomainAndProblem()
	{
		DomainAndProblemMaker_Utility domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	/**
	 * If one wished to use this constructor, one would have to set the domain and problem manually,
	 *  as well as the preservedInitialState. 
	 */
	public Planner() { numTimesPlannerCalled = 0; }
	public void setDomainAndProblem(Domain d, Problem p) { domain = d; problem = p; }
	public BigInteger getInitialModelCount(){return initialModelCount;}
		
	public int getNumTimesPlannerCalled(){return numTimesPlannerCalled;}
	public void resetNumTimesPlannerCalledCount() { numTimesPlannerCalled = 0;}
	
	/**
	 * This allows for the actionInstances of problem to be set to Agent's (current) problem instance.
	 * the Agent's actions becomes the planner's actions, and the initial state of the problem
	 * can be reset using the Agent.
	 * 
	 * @param p
	 */
	public void setProblem(Problem p){problem = p;}
	
	public List<ActionInstance> getPlan(String plannerType)
	{
		if(plannerType.equals("jdd")) return runJDDplanner();
		if(plannerType.equals("pode1")) return runPODE1planner();
		if(plannerType.equals("amir"))  return runAMIRplanner();
		
		return null;
	}
	
	/**
	 * Setting up and running the Amir/Length solver.
	 * 
	 * Note that it does NOT reset the Fault class's StaticHashMaps or RiskCounter's datamembers.
	 * This is done by the Agent constructor. 
	 * This Agent will use those same elements many times in simulating execution
	 * through a problem that involves many calls to the planner for new plans...
	 * 
	 * @return List<ActionInstance> plan
	 */
	private List<ActionInstance> runAMIRplanner()
	{
		numTimesPlannerCalled++;
		
		solver = null;
		//System.gc();
		
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
	 * Note that it does NOT reset the Fault class's StaticHashMaps or RiskCounter's datamembers.
	 * This is done by the Agent constructor. 
	 * This Agent will use those same elements many times in simulating execution
	 * through a problem that involves many calls to the planner for new plans...
	 * 
	 * @return List<ActionInstance> plan
	 */
	private List<ActionInstance> runPODE1planner()
	{
		numTimesPlannerCalled++;
		
		solver = null;
		//System.gc();
		
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
	
	/**
	 * Setting up and running the Bryce/DeFault solver.
	 * 
	 * Note that it does NOT reset the Fault class's StaticHashMaps or RiskCounter's datamembers.
	 * This is done by the Agent constructor. 
	 * This Agent will use those same elements many times in simulating execution
	 * through a problem that involves many calls to the planner for new plans...
	 * 
	 *Could use: Agent.getBDD().printSet(Agent.get_bddRef_KB()); To see BDD for debugging.

	 * @return List<ActionInstance> plan
	 */
	private List<ActionInstance> runJDDplanner()
	{
		numTimesPlannerCalled++;
		
		solver = null;
		//System.gc();
		
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		solverOptions.setUseMultipleSupportersInPlanningGraph(true);
		solverOptions.setFaultType(SolverOptions.FAULT_TYPE.BDD_FAULTS);
		
		try{
			solver = new PODEBDDSolver(domain, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {System.out.print("Error: "); e.printStackTrace(); return null;}
		
		startStopwatch();
	
		List<ActionInstance> plan = solver.run();
		
		stopStopwatch();

		return plan;	
	}
	
	/**
	 * This method uses the RiskCounter class method to obtain the # of models of the domain.
	 *  That model uses the # of risks existing in the problem's actions list.
	 *  As the Agent learns about the risks, that number is reduced.
	 *  The RiskCounter must be reset & re-initted to obtain the problem's final/current # of risks.
	 *  
	 * @return BigInteger - # of models
	 */
	public BigInteger getFinalModelCount()
	{
		RiskCounter.resetIsInitialized();
		RiskCounter.initialize(domain, problem);
		
		return RiskCounter.getModelCount(1);
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
