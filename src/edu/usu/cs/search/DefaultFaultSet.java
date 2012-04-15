package edu.usu.cs.search;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.pddl.domain.incomplete.TrieFaultSet;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.SolverOptions.FAULT_TYPE;
import edu.usu.cs.search.incomplete.FaultLiteral;
import edu.usu.cs.search.incomplete.PIFaultSet;

public class DefaultFaultSet implements FaultSet{

	
	
	
	public static FaultSet makeNew(SolverOptions options) {
		
		if(options.getFaultType() == FAULT_TYPE.BDD_FAULTS){
			return new BDDFaultSet();
		}
		else if(options.getFaultType() == FAULT_TYPE.PI_FAULTS){
			return new PIFaultSet(options.getRiskArity());
		}
		else  if(options.getFaultType() == FAULT_TYPE.PI_TRIE_FAULTS){
			return new TrieFaultSet(options.getRiskArity());
		}
		return null;
	}

	public static FaultSet makeNew(FaultSet faultsToCover, SolverOptions options) {
		if(options.getFaultType() == FAULT_TYPE.BDD_FAULTS){
			return new BDDFaultSet(faultsToCover);
		}
		else if(options.getFaultType() == FAULT_TYPE.PI_FAULTS){
			return new PIFaultSet(faultsToCover);
		}
		else  if(options.getFaultType() == FAULT_TYPE.PI_TRIE_FAULTS){
			return new TrieFaultSet(faultsToCover);
		}
		return null;
	}

	@Override
	public void and(FaultLiteral riskFromIndex) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void and(FaultSet riskSet) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void or(FaultSet s1) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void or(FaultLiteral r) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FaultSet copy() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int compareTo(FaultSet faults) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void andNot(FaultSet criticalAndGoal) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void not() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isFalse() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public PlanMetric getFaultPlanMetric() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isTrue() {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
