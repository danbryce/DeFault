package edu.usu.cs.planner.ffrisky.util;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import jdd.bdd.BDD;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.RiskCounterHeuristic;

public class RiskCounterNode extends AbstractStateNode {


	protected HashMap<Proposition, Integer> propositions = null;
	protected int criticalRisks;
	protected int possibleRisks;
	protected BDD bdd;
	protected Map<Risk, Integer> riskToBDD;
	private BigInteger domainCount;
	private SolverOptions solverOptions;

	public RiskCounterNode(Problem problem, Set<Proposition> state, Heuristic heuristic, SolverOptions solverOptions) {

		this.bdd = RiskCounter.getBDD();
		this.riskToBDD = RiskCounter.getRiskToBDD();
		this.solverOptions = solverOptions;
		this.propositions = new HashMap<Proposition, Integer>();
		for (Proposition proposition : state) {
			int dd = bdd.getOne();
			bdd.ref(dd);
			this.propositions.put(proposition, dd);
		}

		this.criticalRisks = bdd.ref(bdd.getOne());
		this.possibleRisks = bdd.ref(bdd.getOne());

		this.problem = problem;
		this.parent = null;
		this.state = state;
		this.action = null;
		this.dimension = 2;
		this.heuristic = heuristic;
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
		this.solverOptions = node.solverOptions;

		this.criticalRisks = bdd.ref(node.getCriticalRisks());//bdd.getOne();
		this.possibleRisks = bdd.ref(bdd.getOne());

		this.problem = node.problem;
	}

	public List<StateNode> createSubsequentNodes(
			List<ActionInstance> subsequentActions) {
		if (subsequentNodes != null) {
			return subsequentNodes;
		}

		subsequentNodes = new ArrayList<StateNode>();

		for (ActionInstance action : subsequentActions) {
			RiskCounterNode node = getSuccessorNode((IncompleteActionInstance)action);
			if (node != null && !node.equals(this.parent)) {
				subsequentNodes.add(node);
			}
		}

		return subsequentNodes;
	}

	public  RiskCounterNode getSuccessorNode(IncompleteActionInstance action) {

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

	private void setActionRisks(RiskCounterNode parent, IncompleteActionInstance action) {
		int actionRisks = bdd.ref(bdd.and(getPrecRisks(parent, action), getPossPrecRisks(parent, action)));
		action.setActionRisks(actionRisks);
		bdd.deref(actionRisks);
		this.action = action;
	}

	private void setCriticalRisks() {
		int tmp = bdd.ref(bdd.and(this.criticalRisks, ((IncompleteActionInstance)this.action).getActionRisks()));
		bdd.deref(this.criticalRisks);
		this.criticalRisks = tmp;
		bdd.ref(this.criticalRisks);
		bdd.deref(tmp);		
	}

	private int getPrecRisks(RiskCounterNode parent, IncompleteActionInstance action) {
		int riskSet = bdd.ref(bdd.getOne());

		for (Proposition prec : action.getPreconditions()) {
			int tmp = bdd.and(riskSet, parent.getPropositions().get(prec));
			bdd.ref(tmp);
			riskSet = tmp;
			bdd.ref(riskSet);
			bdd.deref(tmp);
		}

		return riskSet;
	}

	private int getPossPrecRisks(RiskCounterNode parent, IncompleteActionInstance action) {
		int riskSet = bdd.ref(bdd.getOne());

		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// If the node doesn't contain the proposition then it is an open precondition risk
			int precRiskSet;
			if (parent.getPropositions().containsKey(possPrec)) {
				precRiskSet = parent.getPropositions().get(possPrec);
			} else {
				precRiskSet = bdd.getZero();
			}
			bdd.ref(precRiskSet);
			int tmp = bdd.ref(bdd.or(precRiskSet, riskToBDD.get(Risk.getRiskFromIndex(Risk.PRECOPEN, action.getName(), possPrec.getName()))));
			bdd.deref(precRiskSet);
			precRiskSet = tmp;
			bdd.ref(precRiskSet);
			bdd.deref(tmp);

			tmp = bdd.ref(bdd.and(riskSet, precRiskSet));
			bdd.deref(riskSet);
			riskSet = tmp;
			bdd.ref(riskSet);
			bdd.deref(tmp);
		}

		return riskSet;
	}

	private void applyDeleteEffects(IncompleteActionInstance action) {

		// Delete all the propositions in the delete effects
		for (Proposition proposition : action.getDeleteEffects()) {
			this.getPropositions().remove(proposition);
		}
	}

	private void applyPossibleDeleteEffects(RiskCounterNode parent, IncompleteActionInstance action) {

		for (Proposition proposition : action.getPossibleDeleteEffects()) {
			if (parent.getPropositions().containsKey(proposition)) {
				int newRisks = bdd.ref(
						bdd.and(
								parent.getPropositions().get(proposition), 
								bdd.ref(bdd.or(bdd.not(((IncompleteActionInstance)this.action).getActionRisks()),
										riskToBDD.get(Risk.getRiskFromIndex(Risk.POSSCLOB, action.getName(), proposition.getName()))))/*)*/
						));
				this.getPropositions().put(proposition, newRisks);
			}
		}
	}

	private void applyAddEffects(RiskCounterNode parent, IncompleteActionInstance action) {

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
							((IncompleteActionInstance)this.action).getActionRisks()
					));
			bdd.deref(this.getPropositions().get(proposition));
			this.getPropositions().put(proposition, newRisks);
		}
	}

	private void applyPossibleAddEffects(RiskCounterNode parent, IncompleteActionInstance action) {

		// Add all the propositions
		for (Proposition proposition : action.getPossibleAddEffects()) {

			// If the proposition doesn't already exist, add it
			if (!parent.getPropositions().containsKey(proposition)) {
				this.getPropositions().put(proposition, bdd.ref(bdd.getZero()));
			}

			// Figure out the risks
			int tmp = bdd.ref(bdd.and(
					action/*((IncompleteActionInstance)parent.getAction())*/.getActionRisks(), 
					riskToBDD.get(Risk.getRiskFromIndex(Risk.UNLISTEDEFFECT, action.getName(), proposition.getName()))));
			int newRisks = 	 bdd.ref(bdd.or( tmp, this.getPropositions().get(proposition)));
			bdd.deref(tmp);		
			bdd.deref(this.getPropositions().get(proposition));
			this.getPropositions().put(proposition, newRisks);
		}
	}

	public boolean isActionApplicable(ActionInstance action) {
		return propositions.keySet().containsAll(((IncompleteActionInstance)action).getPreconditions());
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
			double solvableRatio = 0;//RiskCounter.getUnsolvableDomainCount(this.getCriticalRisks());
			this.gvalue[0] = solvableRatio;
			//domainCount = solvableRatio;
			if(this.parent != null && this.action != null)
				this.gvalue[1] = this.parent.getGValue()[1]+this.action.getCost();

		}
		return this.gvalue;
	}

	private List<IncompleteActionInstance> getPlan() {
		StateNode currentNode = this;

		List<IncompleteActionInstance> actionsToGoal = new ArrayList<IncompleteActionInstance>();

		while(currentNode != null && currentNode.getAction() != null) {
			actionsToGoal.add(0, (IncompleteActionInstance)currentNode.getAction());
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
				//str += bdd.printSet(propositions.get(prop));
			}
		}

		return str;
	}

	public double[] getHeuristicValue() {
		if (hvalue == null) {
			hvalue = heuristic.getValue(this);
			domainCount = ((RiskCounterHeuristic)heuristic).getDomainCount();
			preferredOperators = heuristic.getHelpfulActions();
			if (parent == null) {
				List<ActionInstance> mRelevantActions = heuristic
				.getRelevantActions();
				if (mRelevantActions != null) {
					relevantActions = mRelevantActions;
				}
			}
			H_WEIGHT = new double[dimension];
			for (int i = 0; i < dimension; i++) {
				H_WEIGHT[i] = 1;
			}
		}
		return hvalue;
	}
	public BigInteger getDomainCount() {
		return domainCount;
	}
	public List<StateNode> createSubsequentNodesIgnorePreferredOperators(
			List<ActionInstance> actionInstances) {
		if(solverOptions.isUsePreferredOperators()) {
			return createSubsequentNodes(actionInstances);
		}

		solverOptions.setUsePreferredOperators(false);
		List<StateNode> notPreferredNodes = createSubsequentNodes(actionInstances);
		solverOptions.setUsePreferredOperators(true);

		return notPreferredNodes;
	}
}
