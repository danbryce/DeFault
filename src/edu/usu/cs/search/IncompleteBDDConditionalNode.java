package edu.usu.cs.search;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
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
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.incomplete.PIFaultSet;

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
			Solver solver, int resultKnowledge) {
		super(state, null, parent, solver);
		for(Proposition p : state)
			this.state.put(p, new BDDFaultSet());
		criticalRisks = new BDDFaultSet();
		prevAction = action;
		knowledge = solver.getBDD().ref(resultKnowledge);
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

		//logger.debug("[");


		int preKnowledge = solver.getBDD().ref(solver.getBDD().getZero());

		if(unsatPossPre.size() > 0){
			for(Fault f : unsatPossPre){
				int t = solver.getBDD().ref(solver.getBDD().or(preKnowledge, FaultCounter.getBddFromFault(f)));
				solver.getBDD().deref(preKnowledge);
				preKnowledge = t;
				solver.getBDD().ref(preKnowledge);
				solver.getBDD().deref(t);
			}

			int resultKnowledge = solver.getBDD().ref(solver.getBDD().and(knowledge, preKnowledge));

			//state does not change if possible preconditions are unsat
			StateNode result = new IncompleteBDDConditionalNode(this.getState(), action1, this, solver, resultKnowledge);
			results.put(new StateObservation(result), result);
		}

		int preKnowledge1 = solver.getBDD().ref(knowledge);

		for(Fault f : unsatPossPre){
			int t = solver.getBDD().ref(solver.getBDD().and(preKnowledge1, solver.getBDD().not(FaultCounter.getBddFromFault(f))));
			solver.getBDD().deref(preKnowledge1);
			preKnowledge1 = t;
			solver.getBDD().ref(preKnowledge1);
			solver.getBDD().deref(t);
		}



		//other result states assume preconditions are satisfied, but effects are varied.
		results.putAll(getEffectResults(possAdds, possDels, action1, preKnowledge1));

		//logger.debug("]");

		if(results.size() == 0){
			setDeadEnd();
		}
		

		return results;
	}

	private void setDeadEnd() {
		hvalue[0] = new BigNumericMetric(BigInteger.valueOf(Long.MAX_VALUE));
		hvalue[1] = new NumericMetric(Double.MAX_VALUE);
	}


	private Map<Observation, StateNode> getEffectResults(Set<Fault> possAdds,
			Set<Fault> possDels, ActionInstance action1, int preKnowledge1) {			
		return getEffectResultsRec(possAdds, possDels, preKnowledge1, new HashMap<Observation, StateNode>(), action1);
	}


	private Map<Observation, StateNode> getEffectResultsRec(Set<Fault> possAdds,
			Set<Fault> possDels, int currKnowledge, Map<Observation, StateNode> results, ActionInstance action1) {

		if(possAdds.size() == 0 && possDels.size() == 0){
			//make state from adds dels and return results
			StateNode s = this.getSuccessorNode(action1, currKnowledge);
			results.put(new StateObservation(s), s);
			return results;
		}
		else if(possAdds.size() == 0){//used all possAdds
			Fault f = possDels.iterator().next();
			possDels.remove(f);

			int kt = solver.getBDD().ref(solver.getBDD().and(currKnowledge, FaultCounter.getBddFromFault(f)));
			int kf = solver.getBDD().ref(solver.getBDD().and(currKnowledge, solver.getBDD().not(FaultCounter.getBddFromFault(f))));
			results = getEffectResultsRec(possAdds, possDels, currKnowledge, results,action1);
			results = getEffectResultsRec(possAdds, possDels, currKnowledge, results,action1);
			possDels.add(f);			
			solver.getBDD().deref(kt);
			solver.getBDD().deref(kf);
		}
		else{
			Fault f = possAdds.iterator().next();
			possAdds.remove(f);

			int kt = solver.getBDD().ref(solver.getBDD().and(currKnowledge, FaultCounter.getBddFromFault(f)));
			int kf = solver.getBDD().ref(solver.getBDD().and(currKnowledge, solver.getBDD().not(FaultCounter.getBddFromFault(f))));

			results = getEffectResultsRec(possAdds, possDels, kt, results,action1);
			results =  getEffectResultsRec(possAdds, possDels, kf, results,action1);
			possAdds.add(f);
			solver.getBDD().deref(kt);
			solver.getBDD().deref(kf);
		}

		return results;
	}


	public boolean isActionApplicable(ActionInstance action) {
		return state.keySet().containsAll(((IncompleteActionInstance)action).getPreconditions()) && knownPossPreSat(action);
	}
	
	private boolean knownPossPreSat(ActionInstance action) {
		
		for(Proposition p : ((IncompleteActionInstance)action).getPossiblePreconditions()){
			Fault f = Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), p.getName());
			if(knownTrue(f) && !state.keySet().contains(p))
				return false;
		}
		
		return true;
	}


	private StateNode getSuccessorNode(ActionInstance action1, int currKnowledge) {
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

		//logger.debug("Generate " + node.id);

		node.knowledge = solver.getBDD().ref(currKnowledge);

		// Add all risks associated with the new node
		node.addCriticalRisks(action, this);

		// Remove any absolute delete effect from node
		node.applyDeleteEffects(this, action);

		// Apply possible delete effects
		node.applyPossibleDeleteEffects(this, action);

		// Apply absolute add effects
		node.applyAddEffects(this, action);

		// Apply possible add effects
		node.applyPossibleAddEffects(this, action);

		// addCriticalRisks(node, action);

		node.setParent(this);
		node.setAction(action);

		//node.setHeuristic(this.getHeuristic());


		return node;
	}



	protected  FaultSet getPrecOpen(FaultStateNode node, IncompleteActionInstance action) {
		FaultSet precOpen = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIFaultSet(solver.getSolverOptions().getRiskArity()) :
						new BDDFaultSet());
		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// If the node doesn't contain the proposition then it is an open
			// precondition risk

			Fault f = Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec.getName());

			if(unknown(f)){

				if (!node.state.containsKey(possPrec)) {
					precOpen.or(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec
							.getName()));
				}
				else if(node.state.get(possPrec) != null){
					//The precondition is present, but may have other risks
					//Results in a higher-order interaction risk
					FaultSet s1 = 
						(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
								new PIFaultSet(solver.getSolverOptions().getRiskArity()) :
									new BDDFaultSet());
					if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && s1.empty()){
						s1.setFaults(1);
					}

					s1.and(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec
							.getName()));
					s1.and(node.state.get(possPrec));
					precOpen.or(s1);
				}
			}
		}

		return precOpen;
	}

	protected FaultStateNode copy(){
		return new IncompleteBDDConditionalNode(this);
	}




	// Apply possible delete effects
	protected void applyPossibleDeleteEffects(FaultStateNode node, IncompleteActionInstance action){
		for(Proposition p : action.getPossibleDeleteEffects()){
			if (!node.state.containsKey(p)){
				continue;
			}
			Fault f = Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), p.getName());

			if( knownTrue(f) ) { //an observed delete 
				state.remove(p);
			}
			else if(unknown(f)){			
				// Add possible clobbers to the risk set
				FaultSet riskSet = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
						new PIFaultSet(state.get(p)) :
							new BDDFaultSet(state.get(p)));
				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && riskSet.empty()){
					riskSet.setFaults(1);
				}

				riskSet.or(Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), p.getName()));
				state.put(p, riskSet);
			}
		}
	}

	// Apply possible add effects
	protected void applyPossibleAddEffects(FaultStateNode node, IncompleteActionInstance action){

		FaultSet actRisks = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIFaultSet(solver.getSolverOptions().getRiskArity()) :
						new BDDFaultSet());
		actRisks.or(criticalRisks);//getPrecOpen(initialNode, action));
		//	actRisks.or(getPrecRisks(initialNode, action));

		for (Proposition effect : action.getPossibleAddEffects()) {
			Fault f = Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), effect.getName());

			if(knownTrue(f)){
				state.put(effect, actRisks);
			}			
			else if(unknown(f)){

				// If the proposition isn't in the node add it with an unlisted effect risk
				if (!node.state.containsKey(effect)) {

					// If it was false before, risk set consists of any risk to the
					// current action
					FaultSet riskSet = 
						(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
								new PIFaultSet(actRisks) :
									new BDDFaultSet(actRisks));
					riskSet.or(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(),
							effect.getName()));

					state.put(effect, riskSet);

				}
				else if (!node.state.get(effect).empty()){
					// If the proposition is not absolutely true, then must label


					// Get the intersection of the risk sets in propositions in action
					// precondition.
					FaultSet crossProduct = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
							new PIFaultSet(actRisks) :
								new BDDFaultSet(actRisks));

					if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && actRisks.empty()){
						crossProduct.setFaults(1);
					}


					// Also add the UnlistedEffect risk
					crossProduct.or(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(),
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
				Fault pf = Fault.getRiskFromIndex(Fault.POSSDEL, action1.getName(), p.getName());
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
				Fault pf = Fault.getRiskFromIndex(Fault.POSSADD, action1.getName(), p.getName());
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
				Fault pf = Fault.getRiskFromIndex(Fault.POSSPRE, action1.getName(), p.getName());
				if(unknown(pf)){
					pres.add(pf);
				}
			}
		}
		return pres;
	}


	public Map<Observation, StateNode> getSuccessorNodes(Fault action1) {
		Map<Observation, StateNode> results = new HashMap<Observation, StateNode>();
		int fbdd = FaultCounter.getBddFromFault(action1);

		//true case
		int tknowledge = solver.getBDD().ref(solver.getBDD().and(knowledge, fbdd));
		IncompleteBDDConditionalNode t = new IncompleteBDDConditionalNode(this.getState(), action1, this, solver, tknowledge);
		t.propagateKnowledge();
		t.id = solver.getSearch().getSearchStatistics().getNodesGenerated()+1;
		solver.getSearch().getSearchStatistics().setNodesGenerated(t.id);

		results.put(new FaultObservation(action1, true), t);


		//false case
		int fknowledge = solver.getBDD().ref(solver.getBDD().and(knowledge, solver.getBDD().not(fbdd)));
		IncompleteBDDConditionalNode f = new IncompleteBDDConditionalNode(this.getState(), action1, this, solver, fknowledge);
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
			//solver.getBDD().printSet(knowledge);
			//solver.getBDD().printSet(((BDDRiskSet)getPropositions().get(p)).getFaults());
			int b = solver.getBDD().ref(solver.getBDD().and(knowledge, solver.getBDD().not(((BDDFaultSet)getPropositions().get(p)).getFaults())));
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

	private boolean entails(int a, int b){
		int sat = solver.getBDD().ref(solver.getBDD().and(a, solver.getBDD().not(b))); 
		boolean entails = false;

		if(sat == solver.getBDD().getZero()){
			entails = true;
		}
		solver.getBDD().deref(sat);
		return entails;				
	}

	private boolean knownTrue(Fault f){
		int index = FaultCounter.getBddFromFault(f);
		return entails(knowledge, index);		
	}

	private boolean knownFalse(Fault f){
		int index = solver.getBDD().not(FaultCounter.getBddFromFault(f));
		return entails(knowledge, index);
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

	public String toString(){
		return state.toString() + "\n" + solver.getBDD().printSetToString(knowledge);
	}

	public static String padLeft(String s, int n) {
		//return String.format("%1$#" + n + "s", s);  
		StringBuilder sb = new StringBuilder();
		for(int i = 0; i < n; i++) sb.append("|");
		return sb.toString();
			
	}

	public String printPlan(int indent){
		StringBuilder sb  = new StringBuilder();
		sb.append(padLeft("", indent)).append(state);
		if(this.bestAction != null){
			sb.append(padLeft("", indent)).append(solver.getBDD().printSetToString(knowledge));
			sb.append(padLeft("", indent)).append(this.bestAction.toString()).append("\n");
			for(Observation o: successors.get(bestAction).keySet()){
				IncompleteBDDConditionalNode node = (IncompleteBDDConditionalNode) successors.get(bestAction).get(o);
				sb.append(node.printPlan(indent+1));
			}
		}
		return sb.toString();
	}


}
