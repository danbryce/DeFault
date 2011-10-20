package edu.usu.cs.pddl.domain.incomplete;

import edu.usu.cs.search.FaultSet;

public class TrieFaultSet implements FaultSet {

	Trie<Fault> faults;
	
	
	
	@Override
	public void and(Fault riskFromIndex) {
		// TODO Auto-generated method stub

	}

	@Override
	public void and(FaultSet riskSet) {
		// TODO Auto-generated method stub

	}

	@Override
	public int compareTo(FaultSet faults) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FaultSet copy() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean empty() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean equals(FaultSet s) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void or(FaultSet s1) {
		// TODO Auto-generated method stub

	}

	@Override
	public void or(Fault r) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setFaults(int i) {
		// TODO Auto-generated method stub

	}

	@Override
	public void and(int possibleDomains) {
		
	}

	@Override
	public void or(int nadd) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void andNot(FaultSet criticalAndGoal) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void intersect(FaultSet failures) {
		// TODO Auto-generated method stub
		
	}

}
