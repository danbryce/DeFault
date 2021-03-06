package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.incomplete.PIFaultSet;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;

public class IncompletePINode 
extends FaultStateNode 
implements PreferredOperatorDeferredEvaluationNode{



	public IncompletePINode(Set<Proposition> state, ActionInstance action, StateNode parent,
			Solver solver) {
		super(state, action, parent, solver);

		//gvalue[0] = new PIMetric(criticalRisks);

	}

	public IncompletePINode(IncompletePINode incompletePINode) {
		super(incompletePINode);
		if(solver.getSolverOptions().isStrictSemantics()){ //copy over previous action failures			
			criticalRisks =  DefaultFaultSet.makeNew(incompletePINode.criticalRisks, solver.getSolverOptions());
			if(solver.getSolverOptions().isStrictExponentCount()){
				criticalRisksStrictUnknown = DefaultFaultSet.makeNew(incompletePINode.criticalRisksStrictUnknown, solver.getSolverOptions());
			}
		}
		else{ //flexible semantics ignores previous failures
			criticalRisks = DefaultFaultSet.makeNew(solver.getSolverOptions());
		}
		//		gvalue[0] = new PIMetric((PIRiskSet)this.criticalRisks);
		//		gvalue[1] = new NumericMetric(((NumericMetric)incompletePINode.getGValue()[1]).getValue());
		//subsequentNodes = new ArrayList<StateNode>();
	}




	protected FaultStateNode copy() {
		return new IncompletePINode(this);
	}



	//	@Override
	//	public boolean equals(StateNode o){
	//		return super.equals(o);
	//	}

	//
	//	
	//	public boolean equals(IncompletePINode o){
	//		return super.equals(o);
	//	}


	@Override
	public PlanMetric[] getHeuristicValue() {
		if(!heuristicComputed){
			heuristicComputed = true;
			hvalue = solver.getHeuristic().getValue(this);
			preferredOperators = solver.getHeuristic().getPreferredOperators( );
			if(false && parent == null){

				Set[] relevant = solver.getHeuristic().getRelevant();
				if(relevant[0] != null){
					solver.setRelevantActions(
							//this.solver.getActionInstances());
							(Set<ActionInstance>)relevant[0]);
				}
				if(relevant[1] != null ){
					solver.setRelevantFacts((Set<Integer>)relevant[1]);

					List<Proposition> toRemove = new ArrayList<Proposition>();
					for(Iterator<Proposition> i = state.keySet().iterator(); i.hasNext(); ){
						Proposition p = i.next();
						if(!solver.getRelevantFacts().contains(p.getIndex()))
							toRemove.add(p);
					}
					for(Proposition p : toRemove){
						state.remove(p);
					}						
					for(ActionInstance a : (Set<ActionInstance>)relevant[0]){
						((IncompleteActionInstance)a).removeIrrelevant((Set<Integer>)relevant[1]);
					}
					solver.getHeuristic().removeIrrelevant(relevant);

				}
			}
		}
		return hvalue;
	}


	public String toString(){
		return getPlanString();
	}


}
