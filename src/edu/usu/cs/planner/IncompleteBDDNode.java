package edu.usu.cs.planner;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.FaultStateNode;
import edu.usu.cs.search.IncompletePINode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.PIRiskSet;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;

public class IncompleteBDDNode extends FaultStateNode implements
		PreferredOperatorDeferredEvaluationNode {

	public IncompleteBDDNode(Set<Proposition> state, ActionInstance action, StateNode parent,
			Solver solver) {
		super(action, parent, solver);
		for(Proposition p : state)
			this.state.put(p, new BDDRiskSet());
		criticalRisks = new BDDRiskSet();
		//gvalue[0] = new NumericMetric(faultSet);
	}

	public PlanMetric[] getHeuristicValue() {
		if(!heuristicComputed){
			heuristicComputed = true;
			hvalue = solver.getHeuristic().getValue(this);
			preferredOperators = solver.getHeuristic().getPreferredOperators( );
			if(parent == null){

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
	
	protected FaultStateNode copy() {
		return new IncompleteBDDNode(this);
	}
	
	public  IncompleteBDDNode(IncompleteBDDNode incompleteBDDNode) {
		super(incompleteBDDNode);
		criticalRisks = new BDDRiskSet((BDDRiskSet) incompleteBDDNode.criticalRisks);
//		gvalue[0] = new PIMetric((PIRiskSet)this.criticalRisks);
//		gvalue[1] = new NumericMetric(((NumericMetric)incompleteBDDNode.getGValue()[1]).getValue());
		//subsequentNodes = new ArrayList<StateNode>();
	}

	public FaultSet getExplanation() {
		return solver.getHeuristic().getExplanation(this);
		
	}

}
