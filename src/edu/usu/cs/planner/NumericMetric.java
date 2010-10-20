package edu.usu.cs.planner;

public class NumericMetric implements PlanMetric {

	Double value;
	
	public NumericMetric(double value){
		this.value = value;
	}
	
	@Override
	public PlanMetric aggregate(PlanMetric d) {
		// TODO Auto-generated method stub
		return new NumericMetric(((NumericMetric)d).getValue() + value);
	}

	public double getValue() {
		return value;
	}

	@Override
	public int compareTo(PlanMetric m) {
		// TODO Auto-generated method stub
		return (int) (this.value - ((NumericMetric)m).getValue());
	}

	@Override
	public boolean strictlyBetter(PlanMetric planMetric) {
		// TODO Auto-generated method stub
		return compareTo(planMetric)<0;
	}
	
	public String toString(){
		return value.toString();
	}

}
