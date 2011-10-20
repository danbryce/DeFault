package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.math.BigInteger;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.ffrisky.util.FaultCounter;
import edu.usu.cs.search.FaultSet;

public class BDDRiskSet implements FaultSet {

	int faults=0;
	
	public BDDRiskSet(FaultSet faultSet) {
		faults = ((BDDRiskSet)faultSet).getFaults();
		FaultCounter.getBDD().ref(faults);
	}
	
	public BDDRiskSet() {
	}


	public void finalize(){
		FaultCounter.getBDD().deref(faults);		
	}

	@Override
	public void and(Fault riskFromIndex) {
		int fault = FaultCounter.getRiskToBDD().get(riskFromIndex);
		int tmp = FaultCounter.getBDD().and(fault, faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public void and(FaultSet riskSet) {
		int tmp = FaultCounter.getBDD().and(((BDDRiskSet)riskSet).getFaults(), faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public int compareTo(FaultSet faults) {
		// TODO Auto-generated method stub
		int i = FaultCounter.getBigUnSolvableDomainCount(this.faults).compareTo(FaultCounter.getBigUnSolvableDomainCount(((BDDRiskSet)faults).getFaults())); 
		BigInteger j = FaultCounter.getBigUnSolvableDomainCount(this.faults).subtract(FaultCounter.getBigUnSolvableDomainCount(((BDDRiskSet)faults).getFaults()));
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
		int tmp = FaultCounter.getBDD().or(((BDDRiskSet)s1).getFaults(), faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;

	}

	@Override
	public void or(Fault r) {
		int fault = FaultCounter.getRiskToBDD().get(r);
		int tmp = FaultCounter.getBDD().or(fault, faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
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
		FaultCounter.getBDD().deref(faults);
		faults = i;
		FaultCounter.getBDD().ref(faults);
	}

	public String toString(){
		return FaultCounter.getBDD().printSetToString(this.faults);
	}

	@Override
	public void and(int possibleDomains) {
		int tmp = FaultCounter.getBDD().and(possibleDomains, faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public void or(int possibleDomains) {
		int tmp = FaultCounter.getBDD().or(possibleDomains, faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public void andNot(FaultSet criticalAndGoal) {
		int tmp = FaultCounter.getBDD().and(FaultCounter.getBDD().not(((BDDRiskSet)criticalAndGoal).getFaults()), faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
		
	}

	@Override
	public void intersect(FaultSet failures) {
		and((BDDRiskSet)failures);		
	}
	
}
