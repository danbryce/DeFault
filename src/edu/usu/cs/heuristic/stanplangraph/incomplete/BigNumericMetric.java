package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.math.BigInteger;

import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.PlanMetric;

public class BigNumericMetric  implements PlanMetric {

	BigInteger value;
	
	

	public BigNumericMetric(BigInteger val) {
		value = val;
	}



	@Override
	public PlanMetric aggregate(PlanMetric d) {
		
		return new BigNumericMetric(value.add(((BigNumericMetric)d).value));
	}

	@Override
	public int compareTo(PlanMetric m) {
		// TODO Auto-generated method stub
		return value.compareTo(((BigNumericMetric)m).value);
	}

	@Override
	public boolean strictlyBetter(PlanMetric planMetric) {
		// TODO Auto-generated method stub
		return false;
	}

	
	public String toString(){
		return value.toString();
	}
	
}
