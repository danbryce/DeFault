package edu.usu.cs.planner.ffrisky.util;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import jdd.bdd.BDD;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.NumericMetric;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.AbstractStateNode;
import edu.usu.cs.search.StateNode;

public class RiskCounterNode extends AbstractStateNode {


	protected HashMap<Proposition, Integer> propositions = null;
	protected int actRisks;
	protected int possibleRisks;
	protected BDD bdd;
	protected Map<Fault, Integer> riskToBDD;
	private BigInteger domainCount;
	private Solver solver;
	protected Set<Proposition> state;
	private Object preferredOperators;


	public RiskCounterNode(
			Set<Proposition> state,
			ActionInstance action, 
			StateNode parent, 
			Solver solver) {
		super(action, parent, solver);
		this.bdd = FaultCounter.getBDD();
		this.riskToBDD = FaultCounter.getRiskToBDD();
		this.solver = solver;
		this.propositions = new HashMap<Proposition, Integer>();
		for (Proposition proposition : state) {
			int dd = bdd.getZero();
			bdd.ref(dd);
			this.propositions.put(proposition, dd);
		}

		this.actRisks = bdd.ref(bdd.getOne());
		this.possibleRisks = bdd.ref(bdd.getOne());

		this.parent = null;
		this.state = state;
		this.action = null;

	}

	public RiskCounterNode(RiskCounterNode node) {
		super();
		// Copy the propositions with their associated risks
		this.propositions = new HashMap<Proposition, Integer>();
		for (Proposition prop : node.getPropositions().keySet()) {
			this.propositions.put(prop, node.getPropositions().get(prop));
		}

		// Copy the critical risks that were used to get to this node
		this.parent = node.parent;
		this.state = node.state;
		this.action = node.action;		
		this.bdd = FaultCounter.getBDD();
		this.riskToBDD = FaultCounter.getRiskToBDD();
		this.solver = node.solver;

		this.actRisks = bdd.ref(node.getActRisks());//bdd.getOne();
		this.possibleRisks = bdd.ref(bdd.getOne());
	}

	public List<StateNode> createSubsequentNodes(
			List<ActionInstance> subsequentActions) {
		//		if (subsequentNodes != null) {
		//			return subsequentNodes;
		//		}

		List<StateNode> subsequentNodes = new ArrayList<StateNode>();

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

		node.action = action;
		node.parent = this;
		//criticalRisks = node.getActionRisks(this, action);

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

		node.setState(node.getPropositions().keySet());

		return node;
	}

	private void setState(Set<Proposition> keySet) {
		state = keySet;

	}

	private int getActionRisks(RiskCounterNode parent, IncompleteActionInstance action) {

		int actionRisks = bdd.ref(bdd.and(getPrecRisks(parent, action), getPossPrecRisks(parent, action)));
		//action.setActionRisks(actionRisks);
		//bdd.deref(actionRisks);

		return actionRisks;
	}

	private void setCriticalRisks() {
		this.actRisks = bdd.ref(bdd.or(getPrecRisks(this.parent, this.action),
				getPossPrecRisks(this.parent, this.action)));		
	}

	private int getPrecRisks(StateNode parent, ActionInstance action1) {
		int riskSet = bdd.ref(bdd.getZero());
		IncompleteActionInstance action = (IncompleteActionInstance)action1;


		for (Proposition prec : action.getPreconditions()) {
			int tmp = bdd.or(riskSet, ((RiskCounterNode)parent).getPropositions().get(prec));
			bdd.ref(tmp);
			riskSet = tmp;
			bdd.ref(riskSet);
			bdd.deref(tmp);
		}

		return riskSet;
	}

	private int getPossPrecRisks(StateNode parent, ActionInstance action1) {
		int riskSet = bdd.ref(bdd.getZero());
		IncompleteActionInstance action = (IncompleteActionInstance)action1;


		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// If the node doesn't contain the proposition then it is an open precondition risk
			int precRiskSet;
			if (((RiskCounterNode)parent).getPropositions().containsKey(possPrec)) {
				precRiskSet = ((RiskCounterNode)parent).getPropositions().get(possPrec);
			} else {
				precRiskSet = bdd.getOne();
			}
			bdd.ref(precRiskSet);
			int tmp = bdd.ref(bdd.and(precRiskSet, riskToBDD.get(Fault.getRiskFromIndex(Fault.POSSPRE, action.getName(), possPrec.getName()))));
			bdd.deref(precRiskSet);
			precRiskSet = tmp;
			bdd.ref(precRiskSet);
			bdd.deref(tmp);

			tmp = bdd.ref(bdd.or(riskSet, precRiskSet));
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
						bdd.or(
								parent.getPropositions().get(proposition), 
								//bdd.ref(bdd.and(bdd.not(this.criticalRisks),
										riskToBDD.get(Fault.getRiskFromIndex(Fault.POSSDEL, action.getName(), proposition.getName()))
										//))
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
				this.getPropositions().put(proposition, bdd.ref(this.actRisks));
			}
			else{
				// Figure out its risks
				int newRisks = bdd.ref(
						bdd.and(
								this.getPropositions().get(proposition), 
								this.actRisks
						));
				bdd.deref(this.getPropositions().get(proposition));
				this.getPropositions().put(proposition, newRisks);
			}
		}
	}

	private void applyPossibleAddEffects(RiskCounterNode parent, IncompleteActionInstance action) {

		// Add all the propositions
		for (Proposition proposition : action.getPossibleAddEffects()) {

			// If the proposition doesn't already exist, add it
			if (!parent.getPropositions().containsKey(proposition)) {
				this.getPropositions().put(proposition, bdd.ref(bdd.getOne()));
			}

			// Figure out the risks
			int tmp = bdd.ref(bdd.or(
					this.actRisks, 
					bdd.not(riskToBDD.get(Fault.getRiskFromIndex(Fault.POSSADD, action.getName(), proposition.getName())))));
			int newRisks = 	 bdd.ref(bdd.and( tmp, this.getPropositions().get(proposition)));
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

	public int getActRisks() {
		return this.actRisks;
	}

	public void setCriticalRisks(int risks) {
		this.actRisks = risks;
	}

	public int getPossibleRisks() {
		return possibleRisks;
	}

	public void setPossibleRisks(int possibleRisks) {
		this.possibleRisks = possibleRisks;
	}

	public PlanMetric[] getGValue() {
		if(this.gvalue == null){
			this.gvalue = new PlanMetric[2];

			// Calculate exactly how many risks are in the plan
			double solvableRatio = 0;//RiskCounter.getUnsolvableDomainCount(this.getCriticalRisks());
			this.gvalue[0] = new NumericMetric(solvableRatio);
			//domainCount = solvableRatio;
			if(this.parent != null && this.action != null)
				this.gvalue[1] = this.parent.getGValue()[1].aggregate(new NumericMetric(this.action.getCost()));

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

	public PlanMetric[] getHeuristicValue() {
		if (hvalue == null) {
			hvalue = solver.getHeuristic().getValue(this);
			//domainCount = ((RiskCounterHeuristic)solver.getHeuristic()).getDomainCount();
			preferredOperators = solver.getHeuristic().getHelpfulActions();
			if (parent == null) {
				Set[] relevant = solver.getHeuristic().getRelevant();
				if(relevant[0] != null){
					solver.setRelevantActions((Set<ActionInstance>)relevant[0]);
				}
				if(relevant[1] != null ){
					solver.setRelevantFacts((Set<Integer>)relevant[1]);
				}
			}
		}
		return hvalue;
	}
	public BigInteger getDomainCount() {
		return domainCount;
	}
	public List<StateNode> createSubsequentNodesIgnorePreferredOperators(
			List<ActionInstance> actionInstances) {
		if(solver.getSolverOptions().isUsePreferredOperators()) {
			return createSubsequentNodes(actionInstances);
		}

		solver.getSolverOptions().setUsePreferredOperators(false);
		List<StateNode> notPreferredNodes = createSubsequentNodes(actionInstances);
		solver.getSolverOptions().setUsePreferredOperators(true);

		return notPreferredNodes;
	}
}
