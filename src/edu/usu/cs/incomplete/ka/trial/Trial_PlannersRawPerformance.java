package edu.usu.cs.incomplete.ka.trial;

import edu.usu.cs.incomplete.ka.agentsystem.mainsystem.Agent;
import edu.usu.cs.incomplete.ka.agentsystem.mainsystem.DomainExpert;
import edu.usu.cs.incomplete.ka.agentsystem.utilities.DomainAndProblemMaker;

import java.util.List;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.PODEFFSolver;
import edu.usu.cs.planner.PODEPISolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

/*Input args
 	args[0] = "bridges_v" + v + "_" + gridSize + "_" + bridgeDensity + "_" + k + extension; 
 	args[1] = "bridges_problem" + extension;												
	args[2] = String.valueOf(simSeed); 
	
	//args[0] 	== domain name
	//extension == .pddl
	//args[2] -> by this seed, the DomainExpert makes random/different complete domain versions 
	 				using the incomplete domain's incomplete features.
 */

/*Output to screen (on one line)
	<domain name>_ 				//args[0] -> looks something like: bridges_v3_4_0.5_1.pddl
	<simSeed> 	  				//args[2] -> looks something like: 1
	
	Complete
	<# of actions in domain>
	<# of features>


	Amir <?> <?> pode1 <?> <?>
	//checks the planners performance using the DomainExpert's complete version of the actions by these metrics:
		//# of actions in (complete) plan
		//time to solve

	Incomplete
	<# of incomplete actions>  	//for that simSeed and domain
	<# of features>				//known and possible
	<# of possible features> 	//for that simSeed and domain 
	
	Amir <?> <?> <?> <?> pode1 <?> <?> <?> <?>
	//checks the planners performance using the Agent's incomplete version of the actions by these metrics:
		//# of actions in (possible) plan, 
		//# of incomplete actions in (possible) plan
		//# of possible features/propositions in (possible) plan
		//time to solve
*/

//This class should be accessed by running the BatchTester_PlannersRawPerformance class main method.
public class Trial_PlannersRawPerformance 
{
	Domain 	domain_incomplete;
	Problem problem;
		
	public static int numSuccesses = 0;
		
	String[] args2;
	public Trial_PlannersRawPerformance(String[] args)
	{				
		if (args.length !=3)
		{
			usage(args);
			System.exit(1);
		}
		
		//Initting args to send to DomainAndProblemMaker
		String pathToDomains = "testfiles/incomplete/bridges/";
		args2 = new String[2];
		args2[0] = pathToDomains + args[0];
		args2[1] = pathToDomains + args[1];
		
		DomainAndProblemMaker domainMaker = new DomainAndProblemMaker(args2);	
		domain_incomplete = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
	}
	
	public static void main(String[] args) 
	{
		Trial_PlannersRawPerformance trial1 = new Trial_PlannersRawPerformance(args);
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//Should only run on solvable seeds - use the complete action version of domain as randomly created by sim
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		Agent agent1 = new Agent(trial1.domain_incomplete, trial1.problem);
		DomainExpert sim1 = new DomainExpert(agent1.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
		trial1.problem.setActionInstances(sim1.getActionInstances());
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//Run Amir/length solver on domain's complete action versions
		List<ActionInstance> plan1 = trial1.runAmirPlanner(trial1.problem, agent1);
		
		if(plan1 == null) //This simSeed is not solvable. Return to BatchTester driver to test a different seed.
			return;
		else
		{
			System.out.print(args[0] + "_" + args[2] + " Complete ");
			System.out.print(agent1.getOriginalIncompleteActionInstancesList().size() + " ");
			System.out.print(sim1.getCountOfFeaturesInSimVersionOfActions() + " ");
						
			System.out.print("Amir ");
			System.out.print(plan1.size() + " " + agent1.getTimeToSolve() + " ");
			
			numSuccesses++;
		}
		
		trial1 = null;
		agent1 = null;
		sim1   = null;
		plan1  = null;
		
		//Setup again
		Trial_PlannersRawPerformance trial2 = new Trial_PlannersRawPerformance(args);
		Agent agent2 = new Agent(trial2.domain_incomplete, trial2.problem);
		DomainExpert sim2 = new DomainExpert(agent2.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
		trial2.problem.setActionInstances(sim2.getActionInstances());

		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//Run Bryce/DeFault solver on domain's complete action versions
		System.out.print("pode1 ");
		
		List<ActionInstance> plan2 = trial2.runBrycePlanner(trial2.problem, agent2);
		if(plan2 != null) //Should never be null, unless Bryce planner can't solve (transformed) domains that Amir's can solve
			System.out.print(plan2.size() + " " + agent2.getTimeToSolve() +  " ");
		else 
			System.out.print("? ? ");
		
		trial2 = null;
		agent2 = null;
		sim2   = null;
		plan2  = null;
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//Now that solvability of the domain and simSeed has been established
		// and performance of the planners for the complete domain version has been tested,
		// see how the planners do against the original incomplete domain.
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		Trial_PlannersRawPerformance trial3 = new Trial_PlannersRawPerformance(args);
		Agent agent3 = new Agent(trial3.domain_incomplete, trial3.problem);
//		DomainExpert sim3 = new DomainExpert(agent3.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
//		trial3.problem.setActionInstances(agent3.getIncompleteActionInstancesAsActionInstances());
		
		/*
		 * Creating a simulator here causes the default planner to go crazy, offering a 120 step plan for a domain with 51 actions.
		 * DEBUG.
		 */
		
		System.out.print("Incomplete ");
		System.out.print(agent3.totalOriginalIncompleteActions + " ");
		System.out.print(agent3.getTotalInitialNumberOfFeatures() + " ");
		System.out.print(agent3.totalOriginalNumPossiblePresAddsDeletes + " ");
	
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//Run Amir/length solver on domain's incomplete action versions
		System.out.print("Amir ");
		
		List<ActionInstance> plan3 = trial3.runAmirPlanner(trial3.problem, agent3);
		if(plan3 != null)
		{
			System.out.print(plan3.size() + " ");
			
//			for(ActionInstance a : plan3)
//			{
//				System.out.println(a.toString());
//			}
//			System.out.println();
			
			System.out.print(trial3.getNumberOfIncompleteActionsInPlan(plan3) + " ");
			System.out.print(trial3.getNumberOfPossibleFeaturesInPlan(plan3) + " ");
			System.out.print(agent3.getTimeToSolve() + " ");
		}
		else
			System.out.print("? ? ? ? ");
		
		trial3 = null;
		agent3 = null;
//		sim3   = null;
		plan3  = null;
		
		//Setup again
		Trial_PlannersRawPerformance trial4 = new Trial_PlannersRawPerformance(args);
		Agent agent4 = new Agent(trial4.domain_incomplete, trial4.problem);
		//DomainExpert sim4 = new DomainExpert(agent4.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
		//trial4.problem.setActionInstances(agent4.getIncompleteActionInstancesAsActionInstances());
			
		////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//Run Bryce/DeFault solver on domain's incomplete action versions
		System.out.print("pode1 ");
		
		List<ActionInstance> plan4 = trial4.runBrycePlanner(trial4.problem, agent4);
		if(plan4 != null)
		{
			System.out.print(plan4.size() + " ");
			System.out.print(trial4.getNumberOfIncompleteActionsInPlan(plan4) + " ");
			System.out.print(trial4.getNumberOfPossibleFeaturesInPlan(plan4) + " ");
			System.out.print(agent4.getTimeToSolve() + " ");
		}
		else
			System.out.print("? ? ? ? ");
		
		trial4 = null;
		agent4 = null;
//		sim4   = null;
		plan4  = null;
		
		System.out.println();
	}
	
	private List<ActionInstance> runAmirPlanner(Problem problem, Agent agent)
	{
		//Setting up the Amir/length solver
		Solver solver = null;
		System.gc();
		
		SearchStatistics searchStatistics = new SearchStatistics();
		SolverOptions solverOptions = new SolverOptions();
		solverOptions.setUsePreferredOperators(true);
		solverOptions.setUseDeferredEvaluation(true);
		try{
			solver = new PODEFFSolver(domain_incomplete, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {e.printStackTrace();}
		
		//Run Amir/length solver
		agent.startStopwatch();
		List<ActionInstance> plan = solver.run();
		agent.stopStopwatch();
		
		return plan;
	}
	
	private List<ActionInstance> runBrycePlanner(Problem problem, Agent agent)
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
		try{
			solver = solver = new PODEPISolver(domain_incomplete, problem, searchStatistics, solverOptions);
		}catch (IllDefinedProblemException e) {e.printStackTrace();}
		
		//Run Bryce/DeFault solver
		agent.startStopwatch();
		List<ActionInstance> plan = solver.run();
		agent.stopStopwatch();

		return plan;	
	}
	
	
	public Integer getNumberOfIncompleteActionsInPlan(List<ActionInstance> p)
	{
		int count = 0;
		for(ActionInstance a : p)
		{
			IncompleteActionInstance act = (IncompleteActionInstance) a;	
			if(!Agent.isActionComplete(act))
				count++;
		}
		return count;
	}
	
	public Integer getNumberOfPossibleFeaturesInPlan(List<ActionInstance> p)
	{
		int count = 0;
		for(ActionInstance a : p)
		{
			IncompleteActionInstance act = (IncompleteActionInstance) a;	
			if(!Agent.isActionComplete(act))
			{
				if(act.getPossibleAddEffects() != null) 	count += act.getPossibleAddEffects().size();
				if(act.getPossibleDeleteEffects() != null) 	count += act.getPossibleDeleteEffects().size();
				if(act.getPossiblePreconditions() != null) 	count += act.getPossiblePreconditions().size();
			}
		}
		return count;
	}
	
		
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Trial_PlannersRawPerformance args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file> [2]<simSeed>");
	}
	
}//end class

