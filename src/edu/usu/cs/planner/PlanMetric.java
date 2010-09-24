package edu.usu.cs.planner;

public interface PlanMetric {

	int compareTo(PlanMetric m);

	PlanMetric aggregate(PlanMetric d);

	boolean strictlyBetter(PlanMetric planMetric);
}
