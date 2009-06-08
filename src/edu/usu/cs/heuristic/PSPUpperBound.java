package edu.usu.cs.heuristic;

import java.util.Map;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.psp.AdditiveUtilityFunction;
import edu.usu.cs.search.psp.PSPNode;
import edu.usu.cs.search.psp.UtilityFunction;

public class PSPUpperBound implements IHeuristic {

	Double upperBound = null; 
	public double getValue(StateNode node) {
		if(upperBound == null){
			if(node instanceof PSPNode){
				PSPNode pspNode = (PSPNode)node;
				UtilityFunction utilityFunction = pspNode.getGoalUtilityFunction();
				if(utilityFunction instanceof AdditiveUtilityFunction){
					AdditiveUtilityFunction additiveUtilityFunction = (AdditiveUtilityFunction)utilityFunction;
					Map<LiteralInstance, Double> utilities = additiveUtilityFunction.getUtilities();
					upperBound = new Double(0.0);
					for(LiteralInstance li : utilities.keySet()){
						upperBound += utilities.get(li);
					}
				}
			}
		}
		return upperBound;
	}

}
