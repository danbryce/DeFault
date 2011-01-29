package edu.usu.cs.search;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.heuristic.stanplangraph.incomplete.BigNumericMetric;
import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.IncompleteBDDNode;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.Observation;
import edu.usu.cs.planner.PODEBDDConditionalSolver;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.StateObservation;
import edu.usu.cs.planner.ffrisky.util.RiskCounter;
import edu.usu.cs.search.incomplete.PIRiskSet;

public class IncompleteBDDConditionalNode extends IncompleteBDDNode implements
StateNode {

	int knowledge = 1;
	Map<ConditionalAction, Map<Observation, StateNode>> successors = null;
	//Map<Fault, Map<Observation, StateNode>> fsuccessors;
	ConditionalAction prevAction;
	boolean solved = false;
	ConditionalAction bestAction = null;
	int id = 0; 

	public IncompleteBDDConditionalNode(Set<Proposition> state, ConditionalAction action, StateNode parent,
			Solver solver) {
		super(state, null, parent, solver);
		for(Proposition p : state)
			this.state.put(p, new BDDRiskSet());
		criticalRisks = new BDDRiskSet();
		prevAction = action;
	}


	public IncompleteBDDConditionalNode(
			IncompleteBDDConditionalNode incompleteBDDConditionalNode) {
		super(incompleteBDDConditionalNode);
		knowledge = solver.getBDD().ref(incompleteBDDConditionalNode.knowledge);
	}


	public Map<Observation, StateNode> getSuccessorNodes(ActionInstance action1) {
		Map<Observation, StateNode> results = new HashMap<Observation, StateNode>();
		IncompleteActionInstance action = (IncompleteActionInstance)action1;

		Set<Fault> unsatPossPre = getUnsatPossPres(action);
		Set<Fault> possAdds = getPossAdds(action);
		Set<Fault> possDels = getPossDels(action);

		logger.debug("[");
		
		if(unsatPossPre.size() > 0){
			//state does not change if possible preconditions are unsat
			StateNode result = new IncompleteBDDConditionalNode(this.getState(), action1, this, solver);
			results.put(new StateObservation(result), result);
		}

		//other result states assume preconditions are satisfied, but effects are varied.
		results.putAll(getEffectResults(possAdds, possDels, action1));

		logger.debug("]");


		return results;
	}

	private Map<Observation, StateNode> getEffectResults(Set<Fault> possAdds,
			Set<Fault> possDels, ActionInstance action1) {

		return getEffectResultsRec(possAdds, possDels, new HashSet<Fault>(), new HashSet<Fault>(), new HashMap<Observation, StateNode>(), action1);
	}


	private Map<Observation, StateNode> getEffectResultsRec(Set<Fault> possAdds,
			Set<Fault> possDels, Set<Fault> adds, Set<Fault> dels, Map<Observation, StateNode> results, ActionInstance action1) {

		if(possAdds.size() == 0 && possDels.size() == 0){
			//make state from adds dels and return results
			StateNode s = this.getSuccessorNode(action1, adds, dels);
			results.put(new StateObservation(s), s);
			return results;
		}
		else if(possAdds.size() == 0){//used all possAdds
			Fault f = possDels.iterator().next();
			possDels.remove(f);

			results = getEffectResultsRec(possAdds, possDels, adds, dels, results,action1);
			dels.add(f);
			results = getEffectResultsRec(possAdds, possDels, adds, dels, results,action1);
			dels.remove(f);
			possDels.add(f);			
		}
		else{
			Fault f = possAdds.iterator().next();
			possAdds.remove(f);

			results = getEffectResultsRec(possAdds, possDels, adds, dels, results,action1);
			adds.add(f);
			results =  getEffectResultsRec(possAdds, possDels, adds, dels, results,action1);
			adds.remove(f);
			possAdds.add(f);			
		}

		return results;
	}

	
	
	private StateNode getSuccessorNode(ActionInstance action1,
			Set<Fault> adds, Set<Fault> dels) {
		IncompleteActionInstance action = (IncompleteActionInstance)action1;

		// If the action isn't applicable to the node, return null
		if (!isActionApplicable(action)) {
			return null;
		}

		// Create the new node and copy all the values from the old one to the
		// new one
		IncompleteBDDConditionalNode node = (IncompleteBDDConditionalNode) this.copy();
		node.id = solver.getSearch().getSearchStatistics().getNodesGenerated()+1;
		solver.getSearch().getSearchStatistics().setNodesGenerated(node.id);

		logger.debug("Generate " + node.id);
		
		// Add all risks associated with the new node
		node.addCriticalRisks(action, this);

		// Remove any absolute delete effect from node
		node.applyDeleteEffects(this, action);

		// Apply possible delete effects
		node.applyPossibleDeleteEffects(this, action, dels);

		// Apply absolute add effects
		node.applyAddEffects(this, action);

		// Apply possible add effects
		node.applyPossibleAddEffects(this, action, adds);

		// addCriticalRisks(node, action);

		node.setParent(this);
		node.setAction(action);

		//node.setHeuristic(this.getHeuristic());

		
		return node;
	}


	protected FaultStateNode copy(){
		return new IncompleteBDDConditionalNode(this);
	}


	// Apply possible delete effects
	protected void applyPossibleDeleteEffects(FaultStateNode node, IncompleteActionInstance action, Set<Fault> dels){
		for(Proposition p : action.getPossibleDeleteEffects()){
			if (!node.state.containsKey(p)){
				continue;
			}
			Fault f = Fault.getRiskFromIndex(Fault.POSSCLOB, action.getName(), p.getName());

			if( dels.contains(f) ) { //an observed delete 
				state.remove(p);
			}
			else if(!dels.contains(f) && unknown(f)){
				//observed, but not this observation

			}
			else{
				// Add possible clobbers to the risk set
				FaultSet riskSet = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
						new PIRiskSet(state.get(p)) :
							new BDDRiskSet(state.get(p)));
				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && riskSet.empty()){
					riskSet.setFaults(1);
				}

				riskSet.or(Fault.getRiskFromIndex(Fault.POSSCLOB, action.getName(), p.getName()));
				state.put(p, riskSet);
			}
		}
	}

	// Apply possible add effects
	protected void applyPossibleAddEffects(FaultStateNode node, IncompleteActionInstance action, Set<Fault> adds){

		FaultSet actRisks = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIRiskSet(solver.getSolverOptions().getRiskArity()) :
						new BDDRiskSet());
		actRisks.or(criticalRisks);//getPrecOpen(initialNode, action));
		//	actRisks.or(getPrecRisks(initialNode, action));

		for (Proposition effect : action.getPossibleAddEffects()) {
			Fault f = Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, action.getName(), effect.getName());

			if(adds.contains(f)){
				state.put(effect, actRisks);
			}
			else if(!adds.contains(effect) && unknown(Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, action.getName(), effect.getName()))){

			}
			else{

				// If the proposition isn't in the node add it with an unlisted effect risk
				if (!node.state.containsKey(effect)) {

					// If it was false before, risk set consists of any risk to the
					// current action
					FaultSet riskSet = 
						(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
								new PIRiskSet(actRisks) :
									new BDDRiskSet(actRisks));
					riskSet.or(Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, action.getName(),
							effect.getName()));

					state.put(effect, riskSet);

				}
				else if (!node.state.get(effect).empty()){
					// If the proposition is not absolutely true, then must label


					// Get the intersection of the risk sets in propositions in action
					// precondition.
					FaultSet crossProduct = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
							new PIRiskSet(actRisks) :
								new BDDRiskSet(actRisks));

					if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && actRisks.empty()){
						crossProduct.setFaults(1);
					}


					// Also add the UnlistedEffect risk
					crossProduct.or(Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, action.getName(),
							effect.getName()));

					// Intersect these with risks in the proposition to get the new risk
					// set for the prop.
					crossProduct.and(node.state.get(effect));

					// Set the intersection as the new risk set for the proposition
					state.put(effect, crossProduct);
				}
			}
		}
	}

	private Set<Fault> getPossDels(IncompleteActionInstance action1) {
		//return possible deletes true in current state
		Set<Fault> dels = new HashSet<Fault>();

		for(Proposition p : action1.getPossibleDeleteEffects()){
			if(state.containsKey(p)){
				Fault pf = Fault.getRiskFromIndex(Fault.POSSCLOB, action1.getName(), p.getName());
				if(unknown(pf)){
					dels.add(pf);
				}
			}
		}
		return dels;
	}



	private Set<Fault> getPossAdds(IncompleteActionInstance action1) {
		// return possible adds not true in current state
		Set<Fault> adds = new HashSet<Fault>();

		for(Proposition p : action1.getPossibleAddEffects()){
			if(!state.containsKey(p)){
				Fault pf = Fault.getRiskFromIndex(Fault.UNLISTEDEFFECT, action1.getName(), p.getName());
				if(unknown(pf)){
					adds.add(pf);
				}
			}
		}
		return adds;
	}


	private Set<Fault> getUnsatPossPres(IncompleteActionInstance action1) {
		// return possible pres not true in current state
		Set<Fault> pres = new HashSet<Fault>();

		for(Proposition p : action1.getPossiblePreconditions()){
			if(!state.containsKey(p)){
				Fault pf = Fault.getRiskFromIndex(Fault.PRECOPEN, action1.getName(), p.getName());
				if(unknown(pf)){
					pres.add(pf);
				}
			}
		}
		return pres;
	}


	public Map<Observation, StateNode> getSuccessorNodes(Fault action1) {
		Map<Observation, StateNode> results = new HashMap<Observation, StateNode>();
		int fbdd = RiskCounter.getBddFromFault(action1);

		//true case
		IncompleteBDDConditionalNode t = new IncompleteBDDConditionalNode(this.getState(), action1, this, solver);
		int tknowledge = solver.getBDD().ref(solver.getBDD().and(knowledge, fbdd));
		t.setKnowledge(tknowledge);
		t.propagateKnowledge();
		t.id = solver.getSearch().getSearchStatistics().getNodesGenerated()+1;
		solver.getSearch().getSearchStatistics().setNodesGenerated(t.id);
		
		results.put(new FaultObservation(action1, true), t);


		//false case
		IncompleteBDDConditionalNode f = new IncompleteBDDConditionalNode(this.getState(), action1, this, solver);
		int fknowledge = solver.getBDD().ref(solver.getBDD().and(knowledge, solver.getBDD().not(fbdd)));
		f.setKnowledge(fknowledge);
		f.propagateKnowledge();
		f.id = solver.getSearch().getSearchStatistics().getNodesGenerated()+1;
		solver.getSearch().getSearchStatistics().setNodesGenerated(f.id);
		results.put(new FaultObservation(action1, true), f);

		return results;
	}



	private void propagateKnowledge() {
		//if a proposition's label is entailed by knowledge, then it must be false.
		Set<Proposition> toRemove = new HashSet<Proposition>();
		for(Proposition p : getPropositions().keySet()){
			solver.getBDD().printSet(knowledge);
			solver.getBDD().printSet(((BDDRiskSet)getPropositions().get(p)).getFaults());
			int b = solver.getBDD().ref(solver.getBDD().and(knowledge, solver.getBDD().not(((BDDRiskSet)getPropositions().get(p)).getFaults())));
			if(b == solver.getBDD().getZero()){
				//entailed
				toRemove.add(p);
			}
			solver.getBDD().deref(b);
		}
		this.state.remove(toRemove);
	}


	private void setKnowledge(int tknowledge) {
		knowledge = tknowledge;		
	}


	public void expand(Set<ActionInstance> subsequentActions, Set<ActionInstance> toIgnore) {
		//List<StateNode> newNodes = new ArrayList<StateNode>();
		if(this.isActionApplicable(solver.getSearch().getProblem().getGoalAction())){
			solved = true;
			return;
		}

		successors = new HashMap<ConditionalAction, Map<Observation, StateNode>>();
		for(ActionInstance act : subsequentActions){
			if((toIgnore != null && toIgnore.contains(act)) ||
					!this.isActionApplicable(act)){
				continue;
			}
			Map<Observation, StateNode> results = getSuccessorNodes(act);
			successors.put(act, results);

			//			if(node != null && !node.equals(this) && (node.getParent() == null || node.getParent().getParent() == null || !node.getParent().getParent().equals(node)) ){
			//				newNodes.add(node);
			//				//subsequentNodes.add(node);
			//			}
		}

		for(Fault  fault: Fault.getFaults()){
			if(unknown(fault)){
				Map<Observation, StateNode> results = getSuccessorNodes(fault);
				successors.put(fault, results);
			}
		}

	}

	private boolean knownTrue(Fault f){
		int index = RiskCounter.getBddFromFault(f);
		int sat = solver.getBDD().ref(solver.getBDD().and(knowledge, solver.getBDD().not(index))); 
		boolean isTrue = false;

		if(sat == solver.getBDD().getZero()){
			isTrue = true;
		}
		solver.getBDD().deref(sat);
		return isTrue;		
	}

	private boolean knownFalse(Fault f){
		int index = RiskCounter.getBddFromFault(f);
		int sat = solver.getBDD().ref(solver.getBDD().and(knowledge, index)); 
		boolean isFalse = false;

		if(sat == solver.getBDD().getZero()){
			isFalse = true;
		}
		solver.getBDD().deref(sat);
		return isFalse;		
	}


	private boolean unknown(Fault pf) {
		return !knownTrue(pf) && !knownFalse(pf);
	}


	public boolean isSolved() {

		return solved;
	}


	public PlanMetric[] getGValue() {
		if(gvalue == null){
			gvalue = new PlanMetric[solver.getMetricDimension()];
			gvalue[0] = new BigNumericMetric(BigInteger.ZERO);
			gvalue[1] = new NumericMetric(0.0);
		}
		return gvalue;
	}

	public PlanMetric[] getFValue() {
		if(fvalue == null){
			fvalue = new PlanMetric[solver.getMetricDimension()];
		}
		for (int i = 0; i < fvalue.length; i++) {				
			fvalue[i] = getGValue()[i].aggregate(getHeuristicValue()[i]);
		}
		return fvalue;
	}

	public void backup() {
		if(!solved){
			//ConditionalAction newBestAct = null;
			PlanMetric[] bestQValue = new PlanMetric[solver.getMetricDimension()];
			bestQValue[0] = new BigNumericMetric(BigInteger.valueOf(Long.MAX_VALUE));
			bestQValue[1] = new NumericMetric(Double.MAX_VALUE);
			for(ConditionalAction act : successors.keySet()){
				PlanMetric[] qValue = new PlanMetric[solver.getMetricDimension()];
				qValue[0] = new BigNumericMetric(BigInteger.ZERO);
				qValue[1] = new NumericMetric(0.0);
				boolean actSolved = true;

				for(Observation o : successors.get(act).keySet()){
					IncompleteBDDConditionalNode s = (IncompleteBDDConditionalNode) successors.get(act).get(o);

					actSolved = (actSolved && s.isSolved());
					qValue[0] = qValue[0].aggregate(s.getFValue()[0]);
					qValue[1] = qValue[1].aggregate(s.getFValue()[1]);					
				}
				qValue[1] = new NumericMetric(((NumericMetric)qValue[1]).getValue()/successors.get(act).size());

				if(qValue[1].strictlyBetter(bestQValue[1])){
					bestAction = act;
					bestQValue = qValue;
					solved = actSolved;
					fvalue = qValue;
					if(solved)
						break;
				}				
			}			
		}
	}


}
