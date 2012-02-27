package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDFaultSet;
import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.planner.util.FaultCounter;
import edu.usu.cs.search.incomplete.FaultLiteral;
import edu.usu.cs.search.incomplete.PIFaultSet;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationNode;
import edu.usu.cs.search.pode.PreferredOperatorDeferredEvaluationSearch;

public class FaultStateNode extends AbstractStateNode implements
PreferredOperatorDeferredEvaluationNode, StateNode {
	protected Map<Proposition, FaultSet> state;
	protected Set<ActionInstance> preferredOperators = null;
	protected FaultSet criticalRisks = null;
	protected static Logger logger = Logger.getLogger(FaultStateNode.class.getName());


	public FaultStateNode(ActionInstance action, StateNode parent, Solver solver) {
		super(action, parent, solver);
		state = new HashMap<Proposition, FaultSet>();

	}

	public FaultStateNode(FaultStateNode incompletePINode) {
		super(incompletePINode);
		state = new HashMap<Proposition, FaultSet>(incompletePINode.state);
	}

	@Override
	public Set<ActionInstance> getPreferredOperators() {
		// TODO Auto-generated method stub
		return preferredOperators;
	}

	public Map<Proposition, FaultSet> getPropositions() {
		// TODO Auto-generated method stub
		return state;
	}

	public Set<Proposition> getState(){
		return state.keySet();
	}

	@Override
	public boolean equals(StateNode node){
		return equals(((FaultStateNode)node));
	}

	//@Override
	public boolean equals(PreferredOperatorDeferredEvaluationNode node){
		return equals(((FaultStateNode)node));
	}

	public boolean equals(FaultStateNode node){
		//logger.debug("Compare "+  this.getPropositions().keySet() + " " +  ((FaultStateNode)node).getPropositions().keySet());

		Map<Proposition, FaultSet> nState = ((FaultStateNode)node).getPropositions();
		if(state.size() != nState.size()){
			return false;
		}
		else if (!state.keySet().containsAll(nState.keySet())  || !nState.keySet().containsAll(state.keySet())){
			return false;
		}
		else{
			for(Proposition p : state.keySet()){
				FaultSet f = state.get(p);
				FaultSet nf = nState.get(p);
				if(!f.equals(nf)){
					return false;
				}
			}
		}
		//logger.debug("EQ");
		return criticalRisks == node.getCriticalRisks();


		//return node.getState().equals(getState());
	}

	public  StateNode getSuccessorNode(ActionInstance action1) {
		IncompleteActionInstance action = (IncompleteActionInstance)action1;

		// If the action isn't applicable to the node, return null
		if (!isActionApplicable(action)) {
			return null;
		}

		// Create the new node and copy all the values from the old one to the
		// new one
		FaultStateNode node = this.copy();
		node.setParent(this);
		node.setAction(action);



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
		
		node.applyPossibleAddOrDeleteEffects(this, action);

		// addCriticalRisks(node, action);

		//node.setHeuristic(this.getHeuristic());



		return node;
	}

	private void applyPossibleAddOrDeleteEffects(FaultStateNode faultStateNode,
			IncompleteActionInstance action) {

		if(action.getPossibleAddsDeletes().size() == 0) return;
		
		FaultSet dat = null;
		FaultSet ndat = null;
		if(!solver.getSolverOptions().isStrictSemantics()){
			dat = DefaultFaultSet.makeNew(criticalRisks, solver.getSolverOptions());			
			ndat =  DefaultFaultSet.makeNew(dat, solver.getSolverOptions());
			ndat.not();
		}
		
		for(Proposition effect : action.getPossibleAddsDeletes()){
			
			FaultSet dpt = null;
			if( this.state.get(effect) == null){
				dpt = DefaultFaultSet.makeNew(solver.getSolverOptions());
				dpt.not();
			}
			else{
				dpt = DefaultFaultSet.makeNew(this.state.get(effect), solver.getSolverOptions());
			}
			Fault r = Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), effect.getName());
			FaultLiteral rl = Fault.getFaultLiteral(r, false);		
			Fault r1 = Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), effect.getName());
			FaultLiteral r1l = Fault.getFaultLiteral(r1, true);	
			
			if(solver.getSolverOptions().isStrictSemantics()){
				dpt.or(r1l);
				dpt.and(rl);			
			}
			else{
				FaultSet dpt1 =	DefaultFaultSet.makeNew(dpt, solver.getSolverOptions());
							
				FaultSet ndatc = DefaultFaultSet.makeNew(ndat, solver.getSolverOptions());
				
				dpt.and(dat);
				dpt1.and(rl);
				dpt.or(dpt1);
				
				ndatc.and(r1l);
				ndatc.and(rl);				
				dpt.or(ndatc);			
			}
			
			state.put(effect, dpt);
			
		}
	}

	protected FaultStateNode copy() {
		return null;
	}

	/**
	 * orRiskss critical risks from the node with new critical risks from the
	 * action
	 */
	protected  void addCriticalRisks(IncompleteActionInstance action, FaultStateNode initialNode) {
		// orRisks the action's precondition risks with the node's critical risks
		criticalRisks.or(getPrecRisks(initialNode, action));

		// orRisks the action's prec open risks with the node's critical risks
		criticalRisks.or(getPrecOpen(initialNode, action));
	}

	/**
	 * Returns all risks in the risk sets in the propositions of the node that
	 * support the action.
	 * 
	 * @param node
	 * @param action
	 * @return
	 */
	private  FaultSet getPrecRisks(FaultStateNode node, IncompleteActionInstance action) {
		FaultSet precRisks = DefaultFaultSet.makeNew(solver.getSolverOptions());

		for (Proposition prec : action.getPreconditions()) {
			precRisks.or(node.state.get(prec));
		}
		return precRisks;
	}

	/**
	 * Removes the specified action's delete effects from the specified node's
	 * propositions.
	 */
	protected  void applyDeleteEffects(FaultStateNode initialNode, IncompleteActionInstance action) {
		for (Proposition effect : action.getDeleteEffects()) {
			if(solver.getSolverOptions().isStrictSemantics()){
				if (initialNode.state.containsKey(effect)) {
					state.remove(effect);
				}
			}
			else{//flexible: set faults to d(p_t) \vee \neg d(a_t)
				FaultSet prevProp = ((FaultStateNode)parent).getPropositions().get(effect);
				FaultSet negActFaults = DefaultFaultSet.makeNew(criticalRisks, solver.getSolverOptions());
				negActFaults.not();
				FaultSet newProp = DefaultFaultSet.makeNew(prevProp, solver.getSolverOptions()); 
//				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && newProp.empty()){
//					newProp.setFaults(1);
//				}

				newProp.or(negActFaults);
				state.put(effect, newProp);
			}
		}
	}

	/**
	 * Applies the possible delete effects of the specified action to the
	 * specified node.
	 */
	protected  void applyPossibleDeleteEffects(FaultStateNode initialNode,
			IncompleteActionInstance action) {
		for (Proposition effect : action.getPossibleDeleteEffects()) {
			// If the proposition isn't in the node, continue
			if (!initialNode.state.containsKey(effect))
				continue;

			// // Remove the proposition if it is no longer vulnerable
			// if(!isVulnerable(node, effect, getPrecRisks(node, action))) {
			// node.getPropositions().remove(effect);
			// continue;
			// }

			if(solver.getSolverOptions().isStrictSemantics()){
				// Add possible clobbers to the risk set
				FaultSet riskSet = DefaultFaultSet.makeNew(state.get(effect), solver.getSolverOptions());
//				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && riskSet.empty()){
//					riskSet.setFaults(1);
//				}

				Fault r = Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), effect.getName());
				FaultLiteral rl = Fault.getFaultLiteral(r, true);
				
				riskSet.or(rl);
				state.put(effect, riskSet);
			}
			else{ //flexible semantics							
				// Add possible clobbers to the risk set
				FaultSet riskSet = DefaultFaultSet.makeNew(state.get(effect), solver.getSolverOptions());
//				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && riskSet.empty()){
//					riskSet.setFaults(1);
//				}
				FaultSet negActFaults = DefaultFaultSet.makeNew(criticalRisks, solver.getSolverOptions());
				negActFaults.not();
				Fault r = Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), effect.getName());
				FaultLiteral rl = Fault.getFaultLiteral(r, true);
					
				negActFaults.and(rl);

				riskSet.or(negActFaults);
				state.put(effect, riskSet);

			}
		}
	}

	/**
	 * Applies the absolute add effects of the specified action to the specified
	 * node
	 */
	protected  void applyAddEffects(FaultStateNode initialNode, IncompleteActionInstance action) {

		FaultSet actRisks = DefaultFaultSet.makeNew(criticalRisks, solver.getSolverOptions());
		//actRisks.or(criticalRisks);//getPrecOpen(initialNode, action));
		//actRisks.or(getPrecRisks(initialNode, action));

		for (Proposition effect : action.getAddEffects()) {


			if(solver.getSolverOptions().isStrictSemantics()){ //perp
				// If the proposition is absolutely true, just continue
				if (initialNode.state.get(effect) != null && initialNode.state.get(effect).isFalse()) {
					continue;
				}
				else{
					FaultSet newDiagnosis = DefaultFaultSet.makeNew(solver.getSolverOptions());
					state.put(effect, newDiagnosis);
				}
			}
			else{//flexible semantics, d(p_t) \wedge d(a_t)
				// If the proposition isn't in the node (it's absolutely false)
				if (!initialNode.state.containsKey(effect)) {

					// If it was false before, risk set consists of any risk to the
					// current action
					FaultSet riskSet = actRisks;

					state.put(effect, riskSet);
					continue;
				}

				// If the proposition is absolutely true, just continue
				if (initialNode.state.get(effect).isFalse()) {
					continue;
				}

				// Get the intersection of the risk sets in propositions in action
				// precondition.
				FaultSet faults = DefaultFaultSet.makeNew(actRisks, solver.getSolverOptions());
//				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && actRisks.empty() //
//						//||
//						//solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS 
//				){
//					crossProduct.setFaults(1);
//				}

				// Intersect these with risks in the proposition to get the new risk
				// set for the prop.
				faults.and(initialNode.state.get(effect));

				// Set the intersection as the new risk set for the proposition
				state.put(effect, faults);


			}


		}
	}

	/**
	 * Applies the possible add effects of the specified action to the specified
	 * node
	 */
	protected  void applyPossibleAddEffects(FaultStateNode initialNode,
			IncompleteActionInstance action) {


		FaultSet actRisks = DefaultFaultSet.makeNew(criticalRisks, solver.getSolverOptions());
		//	actRisks.or(criticalRisks);//getPrecOpen(initialNode, action));
		//	actRisks.or(getPrecRisks(initialNode, action));

		for (Proposition effect : action.getPossibleAddEffects()) {

//			if(solver.getSolverOptions().isStrictSemantics()){ //d(p_t) \wedge \neg add
//
//			}
//			else { //flexible semantics, d(p_t) \wedge (d(a_t) \vee \neg add)
//
//			}
			// If the proposition isn't in the node add it
			if (!initialNode.state.containsKey(effect)) {

				// If it was false before, risk set consists of any risk to the
				// current action
				FaultSet riskSet = (solver.getSolverOptions().isStrictSemantics() ?						
								DefaultFaultSet.makeNew(solver.getSolverOptions()):
								DefaultFaultSet.makeNew(actRisks, solver.getSolverOptions()));			


				//if(!solver.getSolverOptions().isStrictSemantics()){
					//if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS){ //should be a not possadd, but don't represent negatives here
						Fault r = Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), effect.getName());
						FaultLiteral rl = Fault.getFaultLiteral(r, false);			
						
						riskSet.or(rl);
//					}
//					else{
//						int nadd = FaultCounter.getBDD().not(FaultCounter.getRiskToBDD().get(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), effect.getName())));
//						riskSet.or(nadd);
//					}
				//}


				state.put(effect, riskSet);
				continue;
			}

			// If the proposition is absolutely true, just continue
			if (initialNode.state.get(effect).isFalse()) {
				continue;
			}

			// Get the intersection of the risk sets in propositions in action
			// precondition.
			FaultSet faults = (solver.getSolverOptions().isStrictSemantics() ?
									DefaultFaultSet.makeNew(solver.getSolverOptions()):
									DefaultFaultSet.makeNew(actRisks, solver.getSolverOptions()));

//			if(!solver.getSolverOptions().isStrictSemantics() &&
//				solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && actRisks.empty()){
//				crossProduct.setFaults(1);
//			}

			// Also add the UnlistedEffect risk
			//if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS){ //should be a not possadd, but don't represent negatives here
				Fault r = Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), effect.getName());
				FaultLiteral rl = Fault.getFaultLiteral(r, false);			
				faults.or(rl);
//			}
//			else{
//				int nadd = FaultCounter.getBDD().not(FaultCounter.getRiskToBDD().get(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), effect.getName())));
//				faults.or(nadd);
//			}

			// Intersect these with risks in the proposition to get the new risk
			// set for the prop.
			faults.and(initialNode.state.get(effect));

			// Set the intersection as the new risk set for the proposition
			state.put(effect, faults);
		}
	}
	/**
	 * Returns any open precondition risks that come from the specified node and
	 * action.
	 * 
	 * @param node
	 * @param action
	 * @return
	 */
	protected  FaultSet getPrecOpen(FaultStateNode node, IncompleteActionInstance action) {
		FaultSet precOpen = DefaultFaultSet.makeNew(solver.getSolverOptions());
		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// If the node doesn't contain the proposition then it is an open
			// precondition risk
			if (!node.state.containsKey(possPrec)) {
				Fault r = Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec.getName());
				FaultLiteral rl = Fault.getFaultLiteral(r, true);				
				precOpen.or(rl);
			}
			else if(node.state.get(possPrec) != null){
				//The precondition is present, but may have other risks
				//Results in a higher-order interaction risk
				FaultSet s1 = DefaultFaultSet.makeNew(node.state.get(possPrec), solver.getSolverOptions());
				
				//				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && s1.empty()){
				//					s1.setFaults(1);
				//				}
				Fault r = Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec.getName());
				FaultLiteral rl = Fault.getFaultLiteral(r, true);			
				s1.and(rl);
				//				s1.and(node.state.get(possPrec));
				precOpen.or(s1);
			}
		}

		return precOpen;
	}


	public boolean isActionApplicable(ActionInstance action) {
		return state.keySet().containsAll(((IncompleteActionInstance)action).getPreconditions());
	}
	public int compareTo(StateNode o) {
		FaultStateNode n1 = (FaultStateNode) (this.isHeuristicComputed() ? this : this.getParent());
		FaultStateNode n2 = (FaultStateNode)(o.isHeuristicComputed() ? o : o.getParent());

		boolean foundSolution = solver.getSearch().getSolutionEvaluator().getFoundSolution();


		int diff[] = new int[2];

		for(int i = 0; i < 2; i++){
			diff[i] = n1.hvalue[i].compareTo(n2.hvalue[i]);
		}
		return (diff[1] == 0 || foundSolution ? diff[0] : diff[1]);
		//return diff[1];
	}

	@Override
	public void setPreferredOperators(Set<ActionInstance> acts) {
		preferredOperators = acts;		
	}

	@Override
	public boolean deadEnd() {
		// TODO Auto-generated method stub
		return 	((Double)((NumericMetric)getHeuristicValue()[1]).getValue()).equals(Double.MAX_VALUE);
	}

	public FaultSet getCriticalRisks() {
		// TODO Auto-generated method stub
		return criticalRisks;
	}

	@Override
	public String getStateString() {
		StringBuilder s = new StringBuilder();
		for(Proposition p : state.keySet()){
			s.append(p.getName()).append("\n").append(state.get(p).toString()).append("\n");
		}
		return s.toString();
	}
}
