package edu.usu.cs.search;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.Observation;

public class FaultObservation implements Observation {

	Fault fault;
	boolean value;
	
	public FaultObservation(Fault action1, boolean b) {
		fault = action1;
		value = b;
	}

}
