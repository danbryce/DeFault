package edu.usu.cs.search;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;

import edu.usu.cs.heuristic.stanplangraph.FactHeader;
import edu.usu.cs.heuristic.stanplangraph.incomplete.BDDRiskSet;
import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.incomplete.PIRiskSet;
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
		FaultSet precRisks = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
				new PIRiskSet(solver.getSolverOptions().getRiskArity()) :
					new BDDRiskSet());

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
			if (initialNode.state.containsKey(effect)) {
				state.remove(effect);
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

			// Add possible clobbers to the risk set
			FaultSet riskSet = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIRiskSet(state.get(effect)) :
						new BDDRiskSet(state.get(effect)));
			if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && riskSet.empty()){
				riskSet.setFaults(1);
			}

			riskSet.or(Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), effect.getName()));
			state.put(effect, riskSet);
		}
	}

	/**
	 * Applies the absolute add effects of the specified action to the specified
	 * node
	 */
	protected  void applyAddEffects(FaultStateNode initialNode, IncompleteActionInstance action) {

		FaultSet actRisks = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
				new PIRiskSet(solver.getSolverOptions().getRiskArity()) :
					new BDDRiskSet());
		actRisks.or(criticalRisks);//getPrecOpen(initialNode, action));
		//actRisks.or(getPrecRisks(initialNode, action));

		for (Proposition effect : action.getAddEffects()) {
			// If the proposition isn't in the node (it's absolutely false)
			if (!initialNode.state.containsKey(effect)) {

				// If it was false before, risk set consists of any risk to the
				// current action
				FaultSet riskSet = actRisks;

				state.put(effect, riskSet);
				continue;
			}

			// If the proposition is absolutely true, just continue
			if (initialNode.state.get(effect).empty()) {
				continue;
			}

			// Get the intersection of the risk sets in propositions in action
			// precondition.
			FaultSet crossProduct = 
				(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
						new PIRiskSet(actRisks) :
							new BDDRiskSet(actRisks));
			if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && actRisks.empty() ||
					solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.BDD_FAULTS ){
				crossProduct.setFaults(1);
			}

			// Intersect these with risks in the proposition to get the new risk
			// set for the prop.
			crossProduct.and(initialNode.state.get(effect));

			// Set the intersection as the new risk set for the proposition
			state.put(effect, crossProduct);
		}
	}

	/**
	 * Applies the possible add effects of the specified action to the specified
	 * node
	 */
	protected  void applyPossibleAddEffects(FaultStateNode initialNode,
			IncompleteActionInstance action) {

		FaultSet actRisks = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIRiskSet(criticalRisks) :
						new BDDRiskSet(criticalRisks));
	//	actRisks.or(criticalRisks);//getPrecOpen(initialNode, action));
	//	actRisks.or(getPrecRisks(initialNode, action));

		for (Proposition effect : action.getPossibleAddEffects()) {
			// If the proposition isn't in the node add it with an unlisted effect risk
			if (!initialNode.state.containsKey(effect)) {

				// If it was false before, risk set consists of any risk to the
				// current action
				FaultSet riskSet = 
					(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
							new PIRiskSet(actRisks) :
								new BDDRiskSet(actRisks));
				riskSet.or(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(),
						effect.getName()));

				state.put(effect, riskSet);
				continue;
			}

			// If the proposition is absolutely true, just continue
			if (initialNode.state.get(effect).empty()) {
				continue;
			}

			// Get the intersection of the risk sets in propositions in action
			// precondition.
			FaultSet crossProduct = (solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIRiskSet(actRisks) :
						new BDDRiskSet(actRisks));

			if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && actRisks.empty()){
				crossProduct.setFaults(1);
			}
			
			// Also add the UnlistedEffect risk
			crossProduct.or(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(),
					effect.getName()));

			// Intersect these with risks in the proposition to get the new risk
			// set for the prop.
			crossProduct.and(initialNode.state.get(effect));

			// Set the intersection as the new risk set for the proposition
			state.put(effect, crossProduct);
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
		FaultSet precOpen = 
			(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
					new PIRiskSet(solver.getSolverOptions().getRiskArity()) :
						new BDDRiskSet());
		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// If the node doesn't contain the proposition then it is an open
			// precondition risk
			if (!node.state.containsKey(possPrec)) {
				precOpen.or(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec
						.getName()));
			}
			else if(node.state.get(possPrec) != null){
				//The precondition is present, but may have other risks
				//Results in a higher-order interaction risk
				FaultSet s1 = 
					(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS ?
							new PIRiskSet(node.state.get(possPrec)) :
								new BDDRiskSet(node.state.get(possPrec)));
//				if(solver.getSolverOptions().getFaultType() == SolverOptions.FAULT_TYPE.PI_FAULTS && s1.empty()){
//					s1.setFaults(1);
//				}

				s1.and(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec
						.getName()));
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
