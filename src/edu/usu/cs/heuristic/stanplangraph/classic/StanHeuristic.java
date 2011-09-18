package edu.usu.cs.heuristic.stanplangraph.classic;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.heuristic.stanplangraph.ActionHeader;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.StateNode;

public class StanHeuristic implements Heuristic {
	Problem problem;
	ClassicalRelaxedPlanningGraph heuristicSolver;
	Solver solver;
	
	public StanHeuristic(Problem problem, Domain domain, Solver solver) {
		this.problem = problem;
		this.solver = solver;
		heuristicSolver = new ClassicalRelaxedPlanningGraph(this.problem, domain, this.solver);
		
	}
	
//	public StanHeuristic(IncompleteProblem problem) {
//		this.problem = problem;
//		solver = new StanClassicalRelaxedPlanningGraph((IncompleteProblem)this.problem);
//
//	}
	
	
	public PlanMetric[] getValue(StateNode node) {
		PlanMetric[] values = new PlanMetric[1];

		heuristicSolver.reachFixedPoint(node);
		double relaxedPlanLength = heuristicSolver.getRelaxedPlanLength();
		values[0]= new NumericMetric(relaxedPlanLength);
		
		return values;
	}
	
//	public double[] getValue(StateNode node) {
//		double[] values = new double[2];
//
//		solver.reachFixedPoint(node);
//		double relaxedPlanLength = solver.getRelaxedPlanLength();
//		values[1]= relaxedPlanLength;
//		
//		return values;
//	}

	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return heuristicSolver.getHelpfulActions();
	}

//	@Override
//	public Set<ActionInstance> getRelevantActions() {
//		return heuristicSolver.getRelevantActions();
////		List<ActionHeader> headers = heuristicSolver.getActionSpike().getActionsByRank(heuristicSolver.getActionSpike().getCurrentRank()-1);
////		List<ActionInstance> returnActions = new ArrayList<ActionInstance>();
////		for(ActionHeader header: headers){
////			returnActions.add(header.getAction());
////		}
////		return returnActions;
//	}

	@Override
	public Set<ActionInstance> getPreferredOperators() {
		// TODO Auto-generated method stub
		return heuristicSolver.getPreferredActions();
	}
	@Override
	public Set[] getRelevant() {
		// TODO Auto-generated method stub
		return heuristicSolver.getRelevant();
	}

	public void unsetSolver(){
		heuristicSolver = null;
	}

//	@Override
//	public Set<ActionInstance> getRelevantActions() {
//		return heuristicSolver.getRelevantActions();
////		List<ActionHeader> headers = heuristicSolver.getActionSpike().getActionsByRank(heuristicSolver.getActionSpike().getCurrentRank()-1);
////		List<ActionInstance> returnActions = new ArrayList<ActionInstance>();
////		for(ActionHeader header: headers){
////			returnActions.add(header.getAction());
////		}
////		return returnActions;
//	}



	@Override
	public FaultSet getExplanation(StateNode node) {
		return null;
	}
	@Override
	public void removeIrrelevant(Set[] relevant) {
	heuristicSolver.removeIrrelevant(relevant);	
	}
	
}
