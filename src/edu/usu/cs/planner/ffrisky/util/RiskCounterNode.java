package edu.usu.cs.planner.ffrisky.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import jdd.bdd.BDD;

import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;

public class RiskCounterNode extends AbstractStateNode {
	
	protected HashMap<Proposition, Integer> propositions = null;
	protected int criticalRisks;
	protected int possibleRisks;
	protected BDD bdd;
	protected Map<Risk, Integer> riskToBDD;
	
	public RiskCounterNode(Set<Proposition> state) {
		
		this.bdd = RiskCounter.getBDD();
		this.riskToBDD = RiskCounter.getRiskToBDD();
		
		this.propositions = new HashMap<Proposition, Integer>();
		for (Proposition proposition : state) {
			this.propositions.put(proposition, bdd.getOne());
		}
		
		this.criticalRisks = bdd.getOne();
		this.possibleRisks = bdd.getOne();
		
		this.parent = null;
		this.state = state;
		this.action = null;
		this.dimension = 1;
		this.heuristic = null;
	}
	
	public RiskCounterNode(RiskCounterNode node) {
		// Copy the propositions with their associated risks
		this.propositions = new HashMap<Proposition, Integer>();
		for (Proposition prop : node.getPropositions().keySet()) {
			this.propositions.put(prop, node.getPropositions().get(prop));
		}
		
		// Copy the critical risks that were used to get to this node
		this.parent = node.parent;
		this.state = node.state;
		this.action = node.action;		
		this.dimension = node.dimension;
		this.heuristic = node.heuristic;
		this.bdd = RiskCounter.getBDD();
		this.riskToBDD = RiskCounter.getRiskToBDD();
		
		this.criticalRisks = node.getCriticalRisks();//bdd.getOne();
		this.possibleRisks = bdd.getOne();
	}
	
	public  RiskCounterNode getSuccessorNode(RiskCounterAction action) {
		
		// If the action isn't applicable to the node, return null
		if (!isActionApplicable(action)) {
			return null;
		}

		// Create the new node and copy all the values from the old one to the
		// new one
		RiskCounterNode node = new RiskCounterNode(this);
 
		node.setActionRisks(this, action);
		
		// Add all risks associated with the new node
		node.setCriticalRisks();

		// Remove any absolute delete effect from node
		node.applyDeleteEffects(action);

		// Apply possible delete effects
		node.applyPossibleDeleteEffects(this, action);

		// Apply absolute add effects
		node.applyAddEffects(this, action);

		// Apply possible add effects
		node.applyPossibleAddEffects(this, action);

		node.setParent(this);
		node.setAction(action);

		node.setHeuristic(this.getHeuristic());
		node.setState(node.getPropositions().keySet());
		
		return node;
	}
	
	private void setActionRisks(RiskCounterNode parent, RiskCounterAction action) {
		int actionRisks = bdd.ref(bdd.and(getPrecRisks(parent, action), getPossPrecRisks(parent, action)));
		action.setActionRisks(actionRisks);
		this.action = action;
	}

	private void setCriticalRisks() {
		this.criticalRisks = bdd.ref(bdd.and(this.criticalRisks, ((RiskCounterAction)this.action).getActionRisks()));
	}
	
	private int getPrecRisks(RiskCounterNode parent, RiskCounterAction action) {
		int riskSet = bdd.getOne();
		
		for (Proposition prec : action.getPreconditions()) {
			riskSet = bdd.and(riskSet, parent.getPropositions().get(prec));
		}
		
		return bdd.ref(riskSet);
	}
	
	private int getPossPrecRisks(RiskCounterNode parent, RiskCounterAction action) {
		int riskSet = bdd.getOne();

		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// If the node doesn't contain the proposition then it is an open precondition risk
			int precRiskSet;
			if (parent.getPropositions().containsKey(possPrec)) {
				precRiskSet = parent.getPropositions().get(possPrec);
			} else {
				precRiskSet = bdd.getZero();
			}
			precRiskSet = bdd.or(precRiskSet, riskToBDD.get(Risk.getRiskFromIndex(Risk.PRECOPEN, action.getName(), possPrec.getName())));
			riskSet = bdd.and(riskSet, precRiskSet);
		}
		
		return bdd.ref(riskSet);
	}
	
	private void applyDeleteEffects(RiskCounterAction action) {
		
		// Delete all the propositions in the delete effects
		for (Proposition proposition : action.getDeleteEffects()) {
			this.getPropositions().remove(proposition);
		}
	}
	
	private void applyPossibleDeleteEffects(RiskCounterNode parent, RiskCounterAction action) {
		
		for (Proposition proposition : action.getPossibleDeleteEffects()) {
			if (parent.getPropositions().containsKey(proposition)) {
				int newRisks = bdd.ref(
						bdd.and(
								parent.getPropositions().get(proposition), 
								/*bdd.not(*/riskToBDD.get(Risk.getRiskFromIndex(Risk.POSSCLOB, action.getName(), proposition.getName()))/*)*/
								));
				this.getPropositions().put(proposition, newRisks);
			}
		}
	}
	
	private void applyAddEffects(RiskCounterNode parent, RiskCounterAction action) {
		
		// Add all the propositions
		for (Proposition proposition : action.getAddEffects()) {
			
			// If the proposition doesn't already exist, add it
			if (!parent.getPropositions().containsKey(proposition)) {
				this.getPropositions().put(proposition, bdd.ref(bdd.getZero()));
			}
			
			// Figure out its risks
			int newRisks = bdd.ref(
					bdd.or(
							this.getPropositions().get(proposition), 
							((RiskCounterAction)this.action).getActionRisks()
							));
			this.getPropositions().put(proposition, newRisks);
		}
	}
	
	private void applyPossibleAddEffects(RiskCounterNode parent, RiskCounterAction action) {
		
		// Add all the propositions
		for (Proposition proposition : action.getPossibleAddEffects()) {
			
			// If the proposition doesn't already exist, add it
			if (!parent.getPropositions().containsKey(proposition)) {
				this.getPropositions().put(proposition, bdd.ref(bdd.getZero()));
			}
			
			// Figure out the risks
			int newRisks = 
				bdd.or(
						this.getPropositions().get(proposition), 
						bdd.and(
								action/*((RiskCounterAction)parent.getAction())*/.getActionRisks(), 
								riskToBDD.get(Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, action.getName(), proposition.getName()))));
			this.getPropositions().put(proposition, newRisks);
		}
	}
	
	private boolean isActionApplicable(RiskCounterAction action) {
		return propositions.keySet().containsAll(action.getPreconditions());
	}
	
	public HashMap<Proposition, Integer> getPropositions() {
		return propositions;
	}

	public void setPropositions(HashMap<Proposition, Integer> propositions) {
		this.propositions = propositions;
	}
	
	public int getCriticalRisks() {
		return this.criticalRisks;
	}
	
	public void setCriticalRisks(int risks) {
		this.criticalRisks = risks;
	}
	
	public int getPossibleRisks() {
		return possibleRisks;
	}

	public void setPossibleRisks(int possibleRisks) {
		this.possibleRisks = possibleRisks;
	}

	public double[] getGValue() {
		if(this.gvalue == null){
			this.gvalue = new double[dimension];

			// Calculate exactly how many risks are in the plan
			double solvableRatio = RiskCounter.getRisks(
					problem.getDomain(), 
					problem, 
					getPlan());
			this.gvalue[0] = solvableRatio;
		}
		return this.gvalue;
	}

	private List<RiskCounterAction> getPlan() {
		StateNode currentNode = this;
		
		List<RiskCounterAction> actionsToGoal = new ArrayList<RiskCounterAction>();
		
		while(currentNode != null && currentNode.getAction() != null) {
			actionsToGoal.add(0, (RiskCounterAction)currentNode.getAction());
			currentNode = currentNode.getParent();
		}
		
		return actionsToGoal;
	}
	
	@Override
	public String toString() {
		String str = "Node: State:\n";
		for (Proposition prop : propositions.keySet()) {
			str += "\t\t" + prop.getName() + ": ";
			if (propositions.get(prop) == bdd.getOne()) {
				str += "not vulnerable\n";
			} else {
				str += "vulnerable\n";
			}
		}

		return str;
	}
}
