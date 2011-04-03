package edu.usu.cs.ka.qa.currentsystem.agentsystem;

import java.math.BigInteger;
import java.util.*;

import edu.usu.cs.ka.qa.currentsystem.simulator.SimulationPLQA;
import edu.usu.cs.ka.qa.currentsystem.utilities.*;

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
	
	public static enum PlannerTypes {AMIR, PODE1, JDD};
	
    Domain domain;
    Problem problem;
    BigInteger initialModelCount;
    int initialNumRisks;
    
    static public Solver solver;
    static public PlannerTypes currPType;

	//Results stuff
	Long startTime;
	Long finishTime;
	
	int numTimesPlannerCalled;
	
	static public Planner instance;
	
	DomainAndProblemMaker_Utility domainMaker;
	
	static boolean debug = false;
	
	public Planner(String dFile, String pFile)
	{
		domainFile = dFile;
		problemFile = pFile;
		
		//This is predicated on the notion that only one DomainExpert and one Planner
		// are created for a Simulation instance, and that the expert is usually created first
		if(DomainExpert.getInstance() == null)
		{
			setDomainAndProblem();
			RiskCounter.resetIsInitialized();//assumes one bdd for all tests
			RiskCounter.initialize(domain, problem);
		}
		else
		{
			problem = DomainExpert.getInstance().getProblem();
			domain = DomainExpert.getInstance().getDomain();
		}
		
		initialModelCount = RiskCounter.getModelCount(1);
		initialNumRisks = RiskCounter.getNumRisks();
		
		numTimesPlannerCalled = 0;
		
		instance = this;
	}
	
//	protected void finalize() throws Throwable {
//	    try {
//	        instance = null;
//	        solver = null;// close open files
//	    } finally {
//	        super.finalize();
//	    }
//	}
	
	public static Planner getInstance() {return instance;}

	public void setDomainAndProblem()
	{
		domainMaker = new DomainAndProblemMaker_Utility(domainFile, problemFile);	
		domain = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	public BigInteger getInitialModelCount()				{ return initialModelCount; }
	public int getInitialNumRisks() 						{ return initialNumRisks; }
	public int getNumTimesPlannerCalled()					{ return numTimesPlannerCalled; }
	public void setNumTimesPlannerCalled(int setNumCalls)	{ numTimesPlannerCalled = setNumCalls; }
	public void resetNumTimesPlannerCalledCount()			{ numTimesPlannerCalled = 0; }
	
	/**
	 * This allows for the actionInstances of problem to be set to Agent's (current) problem instance.
	 * the Agent's actions becomes the planner's actions, and the initial state of the problem
	 * can be reset using the Agent.
	 * 
	 * @param p
	 */
	public void setProblem(Problem p){problem = p;}
	public Problem getProblem(){return problem;}
	
	/**
	 * This master planner call method calls the designated planner to get a plan.
	 * Because the planners remove props that are not active in the plan's formulation
	 *  for parcprinter and pathways domains, this method preserves the original actions,
	 *  and restores the problem's actions list after the planner call. 
	 * It is up to the agent and expert to restore their action lists via the 
	 *  appropriate method restoreActionsToStateBeforePlannerCall().
	 * Note here that both the agent and expert set the planner's problem to their problem
	 *  before they call the planner getPlan method.
	 * The plan's actions are also restored to their original state.
	 * Because when the QTree is used, the problem's initial state disappears, it is reloaded here.  
	 * 
	 * @param plannerType
	 * @return List<ActionInstance> plan - with the actions that have no removed props
	 */
	public List<ActionInstance> getPlan(PlannerTypes plannerType)
	{
		if(numTimesPlannerCalled >= SimulationPLQA.maxPlannerCalls) return null;
		
		currPType = plannerType;
		
		Set<Proposition> currState = new HashSet<Proposition>(problem.getInitialState());
		List<ActionInstance> preservedActionsList = Actions_Utility.makeActionsListDeepCopy(problem.getActions());
		
		List<ActionInstance> plan = null;
		if(plannerType.equals(PlannerTypes.JDD)) 	plan = runJDDplanner();
		if(plannerType.equals(PlannerTypes.PODE1)) 	plan = runPODE1planner();
		if(plannerType.equals(PlannerTypes.AMIR))  	plan = runAMIRplanner();
		
		problem.setInitialState(currState);
		problem.setActionInstances(preservedActionsList);
		
		ArrayList<ActionInstance> planWithPreservedActions = null;
		if(plan != null)
		{
			planWithPreservedActions = new ArrayList<ActionInstance>();
			for(ActionInstance a: plan)
			{
				ActionInstance goodVersion = Actions_Utility.getActionInListOfActions(a.getName(), preservedActionsList);
				planWithPreservedActions.add(goodVersion);
			}
		}
		
		return planWithPreservedActions;
	}
	
	public static List<ActionInstance> makePlansDeepActionsSameAsAgents(List<ActionInstance> plan)
	{
		ArrayList<ActionInstance> planWithUpdatedActions = new ArrayList<ActionInstance>();
		for(ActionInstance a : plan)
		{	
			IncompleteActionInstance updatedAct = Agent.instance.actionsHT.get(a.getName());
			planWithUpdatedActions.add(updatedAct);
		}
		
		return planWithUpdatedActions;
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
		solverOptions.setBiasRelaxedPlanWithFaults(false);
					
		try{
			solver = new PODEFFSolver(domain, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) 
		{
			if(debug)
			{
				System.out.print("Error in runAmirPlanner - IDPE: "); 
				e.printStackTrace(); 
			}
			return null;
		}
				
		startStopwatch();
		List<ActionInstance> plan = null;
		try{ plan = solver.run(); }
		catch (Exception e)
		{
			if(debug)
			{
				System.out.println("At runAmirPlanner...");  
				e.printStackTrace();
			}
		}
			
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
		}catch (IllDefinedProblemException e) 
		{
			System.out.print("Error in runPode1Planner - IDPE: "); 
			e.printStackTrace(); 
			return null;
		}
				
		startStopwatch();
		List<ActionInstance> plan = null;
		try{ plan = solver.run(); }
		catch (Exception e)
		{
			if(debug)
			{
				System.out.println("At Pode1Planner..."); 
				e.printStackTrace(); 
			}
		}
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
		}catch (IllDefinedProblemException e)
		{
			if(debug)
			{
				System.out.print("Error in runJddPlanner - IDPE: "); 
				e.printStackTrace(); 
			}
			return null;
		}
		
		startStopwatch();
		List<ActionInstance> plan = null;
		try{ plan = solver.run(); }
		catch (Exception e)
		{
			if(debug)
			{
				System.out.println("At jddPlanner..."); 
				e.printStackTrace(); 
			}
		}
		
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
	
	public int getFinalNumRisks() { return RiskCounter.getNumRisks(); }
	
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

	public static boolean duplicateActionCheck(List<ActionInstance> plan)
	{
		for(int i = 0; i < plan.size() - 1; i++)
		{
			if(plan.get(i).getName().equals(plan.get(i+1).getName()))
				return true;
		}
		return false;
	}
}
