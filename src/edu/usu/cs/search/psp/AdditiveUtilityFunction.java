package edu.usu.cs.search.psp;

import java.util.HashMap;
import java.util.Map;

import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.LiteralInstance;

public class AdditiveUtilityFunction implements UtilityFunction {

	public Map<LiteralInstance, Double> getUtilities() {
		return utilities;
	}

	Map<LiteralInstance, Double> utilities = null;
	
	public AdditiveUtilityFunction(Map<LiteralInstance, Double> utilities){
		this.utilities = utilities;
	}
	
	@Override
	public double evaluate(HashMap<LiteralInstance, Boolean> goals) {
		double utility = 0;
		
		for(LiteralInstance li : goals.keySet()){
			if(goals.get(li)){
				utility += utilities.get(li);
			}
		}
		
		return utility;
	}

}
