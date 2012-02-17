package edu.usu.cs.heuristic.stanplangraph.incomplete;

import java.math.BigInteger;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.FaultLiteral;

public class BDDFaultSet implements FaultSet {

	int faults=0;
	
	public BDDFaultSet(FaultSet faultSet) {
		faults = ((BDDFaultSet)faultSet).getFaults();
		FaultCounter.getBDD().ref(faults);
	}
	
	public BDDFaultSet() {
	}


	public void finalize(){
		FaultCounter.getBDD().deref(faults);		
	}

	@Override
	public void and(FaultLiteral riskFromIndex) {
		int fault = (riskFromIndex.isTrue() ? 
					FaultCounter.getRiskToBDD().get(riskFromIndex.getFault()) :
					FaultCounter.getBDD().not(FaultCounter.getRiskToBDD().get(riskFromIndex.getFault())));
		int tmp = FaultCounter.getBDD().and(fault, faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public void and(FaultSet riskSet) {
		int tmp = FaultCounter.getBDD().and(((BDDFaultSet)riskSet).getFaults(), faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
	}

	@Override
	public int compareTo(FaultSet faults) {
		// TODO Auto-generated method stub
		int i = FaultCounter.getBigUnSolvableDomainCount(this.faults).compareTo(FaultCounter.getBigUnSolvableDomainCount(((BDDFaultSet)faults).getFaults())); 
		BigInteger j = FaultCounter.getBigUnSolvableDomainCount(this.faults).subtract(FaultCounter.getBigUnSolvableDomainCount(((BDDFaultSet)faults).getFaults()));
		return i; 
	}

	@Override
	public FaultSet copy() {
		return new BDDFaultSet(this);
	}

	@Override
	public boolean empty() {
		// TODO Auto-generated method stub
		return faults == 0;
	}

	@Override
	public void or(FaultSet s1) {
		int tmp = FaultCounter.getBDD().or(((BDDFaultSet)s1).getFaults(), faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;

	}

	@Override
	public void or(FaultLiteral r) {
		int fault = (r.isTrue() ? 
				FaultCounter.getRiskToBDD().get(r.getFault()) :
				FaultCounter.getBDD().not(FaultCounter.getRiskToBDD().get(r.getFault())));
		
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
		return ((BDDFaultSet)s).getFaults() == this.getFaults();
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
		int tmp = FaultCounter.getBDD().and(FaultCounter.getBDD().not(((BDDFaultSet)criticalAndGoal).getFaults()), faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
		
	}

	@Override
	public void intersect(FaultSet failures) {
		and((BDDFaultSet)failures);		
	}

	@Override
	public void not() {
		int tmp = FaultCounter.getBDD().not(faults);
		FaultCounter.getBDD().ref(tmp);
		FaultCounter.getBDD().deref(faults);
		faults = tmp;
		
	}
	
}
