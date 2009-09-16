package edu.usu.cs.search.incomplete;

import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

import edu.usu.cs.heuristic.stanplangraph.classic.StanHeuristic;
import edu.usu.cs.heuristic.stanplangraph.incomplete.FFRiskyHeuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.SolutionEvaluator;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.astar.AStarSearch;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FriskySearch extends AStarSearch{
//	private final PriorityQueue<FFRiskyNode> open;
//	private final Set<FFRiskyNode> closed = new HashSet<FFRiskyNode>();
	private FFRiskyHeuristic riskHeuristic;
	private StanHeuristic lengthHeuristic;

	public FriskySearch(Domain domain, Problem problem,
			List<ActionInstance> actionInstances,
			SolutionEvaluator riskySolutionEvaluator,
			SearchStatistics searchStatistics,
			SolverOptions solverOptions
			) throws IllDefinedProblemException {
		super(domain,problem, actionInstances, riskySolutionEvaluator, searchStatistics, solverOptions);
		//this.searchStatistics = searchStatistics;
		open = new PriorityQueue<StateNode>(20, new Comparator<StateNode>() {
			public int compare(StateNode first, StateNode second) {
				boolean alphaCombo = false;
				if(!alphaCombo){
					Double[] diffs = new Double[2];
					for(int i = 0; i < 2; i++){
						diffs[i] = first.getFValue()[i] - second.getFValue()[i];
					}
					if(diffs[1] != 0) {
						return diffs[1].intValue();
					}
					else{
						return diffs[0].intValue(); //same num risks, so compare length
					}
				}
				else{
					double alpha = 0.6;
					Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
					(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
					return value.intValue();
				}



			}
		});

		this.riskHeuristic = new FFRiskyHeuristic(problem, domain, solverOptions);
		//this.lengthHeuristic = new StanHeuristic(problem);
	}




	@Override
	public void initialize() {
		open.add(new FFRiskyNode(problem.getInitialState(), new FFRiskyHeuristic(problem, domain, solverOptions), solverOptions));
	}




}
