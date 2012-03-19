package edu.usu.cs.search;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.search.incomplete.FaultLiteral;
import edu.usu.cs.search.incomplete.PIFaultSet;

public interface FaultSet {

	void and(FaultLiteral riskFromIndex);
	void and(FaultSet riskSet);
	void or(FaultSet s1);
	void or(FaultLiteral r);

//	boolean empty();

	FaultSet copy();

	int compareTo(FaultSet faults);
	
	//boolean equals(FaultSet s);

	//void setFaults(int i);

	//void and(int possibleDomains);

	//void or(int nadd);

	void andNot(FaultSet criticalAndGoal);

	//void intersect(FaultSet failures);

	void not();
	boolean isFalse();

	public PlanMetric getFaultPlanMetric();
	boolean isTrue();

}
