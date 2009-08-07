package edu.usu.cs.search.psp;

import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class AdditiveUtilityFunction implements UtilityFunction {

	public Map<Proposition, Double> getUtilities() {
		return utilities;
	}

	Map<Proposition, Double> utilities = null;
	
	public AdditiveUtilityFunction(Map<Proposition, Double> utilities){
		this.utilities = utilities;
	}
	


	@Override
	public double evaluate(Set<Proposition> goalsAchieved) {
	double utility = 0;
		
		for(Proposition li : goalsAchieved){
			
				utility += utilities.get(li);
			
		}
		
		return utility;
	}

}
