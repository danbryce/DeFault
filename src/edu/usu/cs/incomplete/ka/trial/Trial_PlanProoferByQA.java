package edu.usu.cs.incomplete.ka.trial;

import edu.usu.cs.incomplete.ka.agentsim.*;


import java.util.List;
import javax.print.DocFlavor.STRING;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.ffrisky.GreedyBestFirstFFriskySolver;
import edu.usu.cs.search.GreedyBestFirstLengthSolver;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;



//Output to screen:
//bridges_v3_4_0.5_1.pddl 1 isSolvableCheck 51:18 length 29:40 12:98 0:18 3:0.967 pode1 4:16 1:16 0:16 3:2.057
//bridges_v3_4_0.5_1.pddl 	<the domain>
//1 						<simSeed>
//isSolvableCheck 			<planner on sims action v - checks for solvability>
//51:18 					<#actions existing in domain:#actions in plan>
//length 					<Amir planner - creates plans without assessing risks>
//29:40 12:98 0:18 			<QA on this # of actions:#actions in plan - til no questions were asked in deriving plan>
//3:0.967 					<#times planner called:Total time taken>
//pode1						<Bryce planner - creates plans while assessing risks>
//4:16 1:16 0:16 			<QA on this # of actions:#actions in plan - til no questions were asked in deriving plan>
//3:2.057					<#times planner called:Total time taken>

//A better output?: <planner> <Total # of QA>:<#actions in final plan>:<Total # times planner called>:<Total time taken>


//This class should be accessed by running the Tester_PlanProoferByQA class
public class Trial_PlanProoferByQA 
{
	Domain incompleteDomain_agent;
	Problem problem;
	
	Solver solver;
	SearchStatistics searchStatistics;
	SolverOptions solverOptions;
	
	public static int numSuccesses = 0;
		
	Trial_PlanProoferByQA(String[] args)
	{				
		if (args.length !=3)
			usage(args);
		
		String pathToDomains = "testfiles/incomplete/bridges/";
		String[] args2 = new String[2];
		args2[0] = pathToDomains + args[0];
		args2[1] = pathToDomains + args[1];
			
		DomainAndProblemMaker domainMaker = new DomainAndProblemMaker(args2);	
		incompleteDomain_agent = domainMaker.getOriginalIncompleteDomain();
		problem = domainMaker.getProblem();
				
		solver = null;
		searchStatistics = new SearchStatistics();
		solverOptions = new SolverOptions();
	}
	
	public static void main(String[] args) 
	{
		Trial_PlanProoferByQA unfailingPlan = new Trial_PlanProoferByQA(args);
		
		//Should only run on solvable seeds
		boolean isSolvable = unfailingPlan.runIsPlanSolvableCheck(args);
		if(isSolvable)
		{
			unfailingPlan.runPlanProoferByQA_lengthPlanner(args);
			unfailingPlan.runPlanProoferByQA_defaultPlanner(args);
			
			System.out.println();
		}

	}
	
	boolean runIsPlanSolvableCheck(String[] args)
	{
		//System.out.print(args[0] + " " + args[2] + " isSolvableCheck");
		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		Simulator sim = new Simulator(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
		problem.setActionInstances(sim.getActionInstances());
		
		List<ActionInstance> plan = initSolverGetPlan("solvableCheck");
		if(plan != null)
		{
			System.out.print(args[0] + " " + args[2] + " isSolvableCheck");
			System.out.print(" " + sim.getActionInstances().size() + ":" + plan.size());
			
			numSuccesses++;
			
			return true;
		}
		else
		{
			//System.out.println(" " + sim.getActionInstances().size() + ":-1");
			return false;
		}
	}
	
	void runPlanProoferByQA_lengthPlanner(String[] args)
	{
		System.out.print(" length");
		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		Simulator sim = new Simulator(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
		
		List<ActionInstance> plan;
		int num_incompleteActions;
		int count = 0;
		int qa_total = 0;
		agent.startStopwatch();
		do
		{
			problem.setActionInstances(agent.getIncompleteActionInstancesAsActionInstances());
			plan = initSolverGetPlan("length");
			
			num_incompleteActions = 0;
			IncompleteActionInstance completeVersionByQA;
			for (ActionInstance a : plan)
			{			
				IncompleteActionInstance ia = (IncompleteActionInstance) a;
				if (!Agent.isActionComplete(ia))
				{
					completeVersionByQA = sim.getSimVersionOfIncompleteActionInstanceByID(ia.getIndex());
					agent.replaceIncompleteActionInstanceWithNewVersion(completeVersionByQA);
					num_incompleteActions++;
				}		
			}
			//# of incomplete actions: # actions
			//System.out.print(" " + num_incompleteActions + ":" + plan.size());
			qa_total += num_incompleteActions;
			count++;
		}while(num_incompleteActions > 0);
		agent.stopStopwatch();
		
		//System.out.print(" " + count + ":" + agent.getTimeToSolve());
		//A better output?: <planner> <Total # of QA>:<#actions in final plan>:<Total # times planner called>:<Total time taken>
		System.out.print(" " + qa_total + ":" + plan.size() + ":" + count + ":" + agent.getTimeToSolve());
	}
	
	void runPlanProoferByQA_defaultPlanner(String[] args)
	{
		System.out.print(" pode1");
		
		Agent agent = new Agent(incompleteDomain_agent, problem);
		Simulator sim = new Simulator(agent.getOriginalIncompleteActionInstancesList(), Integer.valueOf(args[2]));
		
		List<ActionInstance> plan;
		int num_incompleteActions;
		int count = 0;
		int qa_total = 0;
		agent.startStopwatch();
		do
		{
			problem.setActionInstances(agent.getIncompleteActionInstancesAsActionInstances());
		
			plan = initSolverGetPlan("pode1");
			num_incompleteActions = 0;
			
			IncompleteActionInstance completeVersionByQA;
			for (ActionInstance a : plan)
			{			
				IncompleteActionInstance ia = (IncompleteActionInstance) a;
				if (!Agent.isActionComplete(ia))
				{
					completeVersionByQA = sim.getSimVersionOfIncompleteActionInstanceByID(ia.getIndex());
					agent.replaceIncompleteActionInstanceWithNewVersion(completeVersionByQA);
					num_incompleteActions++;
				}		
			}
			//# of incomplete actions: # actions
			//System.out.print(" " + num_incompleteActions + ":" + plan.size());
			qa_total += num_incompleteActions;
			count++;
		}while(num_incompleteActions > 0);
		agent.stopStopwatch();
	
		//A better output?: <planner> <Total # of QA>:<#actions in final plan>:<Total # times planner called>:<Total time taken>
		//System.out.print(" " + count + ":" + agent.getTimeToSolve());
		System.out.print(" " + qa_total + ":" + plan.size() + ":" + count + ":" + agent.getTimeToSolve());
	}
	
	private List<ActionInstance> initSolverGetPlan(String type)
	{			
		solver = null;
		System.gc();
		
		//Init appropriate planner (a CLA)
		try{
			if (type.equals("length") || type.equals("solvableCheck"))
			{
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);
				solver = new GreedyBestFirstLengthSolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			}
			else if (type.equals("pode1"))
			{
				solverOptions.setUsePreferredOperators(true);
				solverOptions.setUseDeferredEvaluation(true);
				solverOptions.setUseMultipleSupportersInPlanningGraph(true);
				solverOptions.setRiskArity(Integer.valueOf(1));//arity 1 only
				solver = new GreedyBestFirstFFriskySolver(incompleteDomain_agent, problem, searchStatistics, solverOptions);
			}
		}catch (IllDefinedProblemException e) {e.printStackTrace();}
				
		List<ActionInstance> plan = solver.run();					
		return plan;
	}
	
	private void usage(String[] args) 
	{
		System.err.println("args: " + args.toString());
		System.err.println("Plan Proofer by QA args:");
		System.err.println("\t[0]<domain-pddl-file> [1]<problem-pddl-file>");
		System.err.println("\t[2] <seed for sim>");
		System.exit(1);
	}

}
