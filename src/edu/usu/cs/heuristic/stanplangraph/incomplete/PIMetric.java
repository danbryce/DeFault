package edu.usu.cs.heuristic.stanplangraph.incomplete;

import edu.usu.cs.pddl.domain.incomplete.TrieFaultSet;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.PIFaultSet;

public class PIMetric implements PlanMetric {

	FaultSet risks;
	
	public PIMetric(FaultSet grs) {
		risks = grs;
	}

	@Override
	public PlanMetric aggregate(PlanMetric d) {
		PIMetric pd = (PIMetric)d;
		if(pd != null){
			PIFaultSet grs = new PIFaultSet(this.risks);
			grs.or(pd.risks);
			return new PIMetric(grs);
		}
		return null;
	}

	@Override
	public int compareTo(PlanMetric m) {
		PIMetric pd = (PIMetric)m;
		if(pd != null){
			return this.risks.compareTo(pd.risks);
		}
		return -1;
	}

	@Override
	public boolean strictlyBetter(PlanMetric planMetric) {
		// TODO Auto-generated method stub
		return this.compareTo(planMetric)<0;
	}
	
	public String toString(){
		if(risks instanceof PIFaultSet){
			return Integer.toString(((PIFaultSet)risks).getSet().size());
		}
		else if (risks instanceof TrieFaultSet){
			return Integer.toString(((TrieFaultSet)risks).getSize());
		}
		return "";
	}

}
