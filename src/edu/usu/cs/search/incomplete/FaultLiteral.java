package edu.usu.cs.search.incomplete;

import edu.usu.cs.pddl.domain.incomplete.Fault;

public class FaultLiteral implements Comparable<FaultLiteral> {

	private Fault fault;
	private boolean isTrue;
	
	public FaultLiteral(Fault fault, boolean isTrue){
		this.fault = fault;
		this.isTrue = isTrue;
	}
	
	public Fault getFault() {
		return fault;
	}
	public boolean isTrue() {
		return isTrue;
	}
	
	public String toString(){
		if(isTrue)
			return fault.toString();
		else
			return "not " + fault.toString();
		
	}

	@Override
	public int compareTo(FaultLiteral o) {
		if(this == o) return 0;
		if(fault == o.getFault()){
			if(isTrue && !o.isTrue()) return 1;
			else return -1;
		}
		else{
			return fault.compareTo(o.getFault());
		}
	}
	
}
