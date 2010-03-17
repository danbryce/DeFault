/**
 * 
 */
package edu.usu.cs.heuristic;

import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.search.StateNode;

/**
 * @author dan
 *
 */
public class FFRiskyPSPHeuristic implements Heuristic {

	PSPUpperBound pspHeuristic = new PSPUpperBound();
	
	
	
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.Heuristic#getHelpfulActions()
	 */
	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.Heuristic#getValue(edu.usu.cs.search.StateNode)
	 */
	@Override
	public double[] getValue(StateNode abstractStateNode) {
		double[] hValue = new double[2];
		hValue[1] = pspHeuristic.getValue(abstractStateNode)[0];
		hValue[0] = 0;
		
		
		return hValue;
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
