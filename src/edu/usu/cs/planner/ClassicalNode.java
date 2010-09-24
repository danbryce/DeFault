package edu.usu.cs.planner;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;

public class ClassicalNode extends AbstractStateNode implements
PreferredOperatorDeferredEvaluationNode {
	Logger logger = Logger.getLogger(this.getClass());

	protected Set<ActionInstance> preferredOperators = null;
	protected Set<Proposition> state = null;
	

	public ClassicalNode(Set<Proposition> newState, ActionInstance action1, ClassicalNode classicalNode, Solver solver) {
		super(action1, classicalNode, solver);
		state = newState;
		//		if(parent == null)
		//			gvalue[0] = new NumericMetric(0);
		//		else
		//			gvalue[0] = parent.getGValue()[0].aggregate(new NumericMetric(action1.getCost()));
	}

	@Override
	public Set<ActionInstance> getPreferredOperators() {

		return preferredOperators;
	}

	public  StateNode getSuccessorNode(ActionInstance action1) {
		if(!this.satisfies(((IncompleteActionInstance)action1).getPreconditions()))
			return null;


		Set<Proposition> newState = new HashSet<Proposition>(this.state);
		IncompleteActionInstance act = (IncompleteActionInstance)action1;

		newState.removeAll(act.getDeleteEffects());
		newState.addAll(act.getAddEffects());
		newState.addAll(act.getPossibleAddEffects());

//		for(Proposition p : newState)
//			//if(!solver.getRelevantFacts().contains(p.getIndex()))
//				state.remove(p);

		return new ClassicalNode(newState, action1, this, solver);
	}

	@Override
	public PlanMetric[] getHeuristicValue() {
		if(!heuristicComputed){
			heuristicComputed = true;
			hvalue = solver.getHeuristic().getValue(this);
			preferredOperators =  solver.getHeuristic().getPreferredOperators( );
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
					for(Iterator<Proposition> i = state.iterator(); i.hasNext(); ){
						Proposition p = i.next();
						if(!solver.getRelevantFacts().contains(p.getIndex()))
							toRemove.add(p);
					}
					state.removeAll(toRemove);
					
					for(ActionInstance a : (Set<ActionInstance>)relevant[0]){
						((IncompleteActionInstance)a).removeIrrelevant((Set<Integer>)relevant[1]);
					}
					solver.getHeuristic().removeIrrelevant(relevant);

				}
			}
		}
		return hvalue;
	}

	@Override
	public Set<Proposition> getState() {
		return state;
	}

	@Override
	public boolean satisfies(Set<Proposition> goal) {		
		return state.containsAll(goal);
	}

	public boolean equals(StateNode node){
		if(node instanceof ClassicalNode){
			return this.state.size() == node.getState().size() && this.state.containsAll(node.getState());
			//return this.state.equals(node.getState());
		}
		return false;
	}

	public int compareTo(StateNode node){
		if(node instanceof ClassicalNode){
			PlanMetric[] p1 = (this.hvalue[0] == null ? ((ClassicalNode) this).parent.getHeuristicValue() : hvalue);
			PlanMetric[] p2 = (((ClassicalNode)node).hvalue[0] == null ? ((ClassicalNode) node).parent.getHeuristicValue() : ((ClassicalNode) node).hvalue);
			int h = p1[0].compareTo(p2[0]);
			//			if(h == 0)
			//				return this.getGValue()[0].compareTo(node.getGValue()[0]);
			//			else
			return h;
		}
		return -1;
	}

	public String toString(){
		return this.hvalue[0].toString();
	}

	@Override
	public void setPreferredOperators(Set<ActionInstance> acts) {
		preferredOperators = acts;		
	}

	@Override
	public boolean deadEnd() {
		// TODO Auto-generated method stub
		return 	((Double)((NumericMetric)getHeuristicValue()[0]).getValue()).equals(Double.MAX_VALUE);
	}

}
