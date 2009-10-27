package edu.usu.cs.heuristic;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.search.StateNode;

public class BFSHeuristic implements Heuristic {
	
	double[] h = {0};
	public double[] getValue(StateNode node){
		return h;
	}
	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<ActionInstance> getRelevantActions() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Set<ActionInstance> getPreferredOperators() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
