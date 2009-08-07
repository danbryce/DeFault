package edu.usu.cs.heuristic;

import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.psp.FFRiskyPSPNode;
import edu.usu.cs.search.psp.AdditiveUtilityFunction;
import edu.usu.cs.search.psp.PSPNode;
import edu.usu.cs.search.psp.UtilityFunction;

public class PSPUpperBound implements Heuristic {

	double[] upperBound = null; 
	public double[] getValue(StateNode node) {
		if(upperBound == null){
			if(node instanceof PSPNode){
				PSPNode pspNode = (PSPNode)node;
				UtilityFunction utilityFunction = pspNode.getGoalUtilityFunction();
				if(utilityFunction instanceof AdditiveUtilityFunction){
					AdditiveUtilityFunction additiveUtilityFunction = (AdditiveUtilityFunction)utilityFunction;
					Map<Proposition, Double> utilities = additiveUtilityFunction.getUtilities();
					upperBound = new double[1];
					upperBound[0] = 0.0;
					for(Proposition li : utilities.keySet()){
						upperBound[0] += utilities.get(li);
					}
				}
			}
			else if(node instanceof FFRiskyPSPNode){
				FFRiskyPSPNode pspNode = (FFRiskyPSPNode)node;
				UtilityFunction utilityFunction = pspNode.getGoalUtilityFunction();
				if(utilityFunction instanceof AdditiveUtilityFunction){
					AdditiveUtilityFunction additiveUtilityFunction = (AdditiveUtilityFunction)utilityFunction;
					Map<Proposition, Double> utilities = additiveUtilityFunction.getUtilities();
					upperBound = new double[1];
					upperBound[0] = 0.0;
					for(Proposition li : utilities.keySet()){
						upperBound[0] += utilities.get(li);
					}
				}
			}
		}
		return upperBound;
	}
	@Override
	public Set<ActionInstance> getHelpfulActions() {
		// TODO Auto-generated method stub
		return null;
	}

}
