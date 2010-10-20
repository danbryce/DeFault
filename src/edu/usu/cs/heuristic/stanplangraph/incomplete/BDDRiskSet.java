package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.math.BigInteger;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.FaultSet;

public class BDDRiskSet implements FaultSet {

	int faults=0;
	
	public BDDRiskSet(FaultSet faultSet) {
		faults = ((BDDRiskSet)faultSet).getFaults();
		RiskCounter.getBDD().ref(faults);
	}
	
	public BDDRiskSet() {
	}


	public void finalize(){
		RiskCounter.getBDD().deref(faults);		
	}

	@Override
	public void and(Fault riskFromIndex) {
		int fault = RiskCounter.getRiskToBDD().get(riskFromIndex);
		int tmp = RiskCounter.getBDD().and(fault, faults);
		RiskCounter.getBDD().ref(tmp);
		RiskCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public void and(FaultSet riskSet) {
		int tmp = RiskCounter.getBDD().and(((BDDRiskSet)riskSet).getFaults(), faults);
		RiskCounter.getBDD().ref(tmp);
		RiskCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public int compareTo(FaultSet faults) {
		// TODO Auto-generated method stub
		int i = RiskCounter.getBigUnSolvableDomainCount(this.faults).compareTo(RiskCounter.getBigUnSolvableDomainCount(((BDDRiskSet)faults).getFaults())); 
		BigInteger j = RiskCounter.getBigUnSolvableDomainCount(this.faults).subtract(RiskCounter.getBigUnSolvableDomainCount(((BDDRiskSet)faults).getFaults()));
		return i; 
	}

	@Override
	public FaultSet copy() {
		return new BDDRiskSet(this);
	}

	@Override
	public boolean empty() {
		// TODO Auto-generated method stub
		return faults == 0;
	}

	@Override
	public void or(FaultSet s1) {
		int tmp = RiskCounter.getBDD().or(((BDDRiskSet)s1).getFaults(), faults);
		RiskCounter.getBDD().ref(tmp);
		RiskCounter.getBDD().deref(faults);
		faults = tmp;

	}

	@Override
	public void or(Fault r) {
		int fault = RiskCounter.getRiskToBDD().get(r);
		int tmp = RiskCounter.getBDD().or(fault, faults);
		RiskCounter.getBDD().ref(tmp);
		RiskCounter.getBDD().deref(faults);
		faults = tmp;

	}

	public int getFaults() {
		return faults;
	}

	@Override
	public boolean equals(FaultSet s) {
		// TODO Auto-generated method stub
		return ((BDDRiskSet)s).getFaults() == this.getFaults();
	}

	@Override
	public void setFaults(int i) {
		RiskCounter.getBDD().deref(faults);
		faults = i;
		RiskCounter.getBDD().ref(faults);
	}

}
