package edu.usu.cs.search.pode;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;

public class PreferredOperatorDeferredEvaluationNode extends FFRiskyNode {

	public PreferredOperatorDeferredEvaluationNode(Set<Proposition> propositions, Heuristic heuristic, SolverOptions solverOptions) {
		super(propositions, heuristic, solverOptions);
	}
	
	public PreferredOperatorDeferredEvaluationNode(
			PreferredOperatorDeferredEvaluationNode node) {
		// Copy the propositions with their associated risks
		this.propositions = new HashMap<Proposition, Set<Risk>>();
		for (Proposition prop : node.getPropositions().keySet()) {
			Set<Risk> risks = new HashSet<Risk>();
			for (Risk risk : node.getPropositions().get(prop)) {
				risks.add(risk);
			}
			this.propositions.put(prop, risks);
		}

		// Copy the critical risks that were used to get to this node
		this.criticalRisks = new HashSet<Risk>();
		this.criticalRisks.addAll(node.getCriticalRisks());
		this.parent = node.parent;
		this.state = node.state;
		this.action = node.action;		
		this.dimension = node.dimension;
		this.heuristic = node.heuristic;
		this.solverOptions = node.solverOptions;
	}

	@Override
	public List<StateNode> createSubsequentNodes(List<ActionInstance> subsequentActions) {

		boolean usePreferredOperators = solverOptions.isUsePreferredOperators();

		if(subsequentNodes != null && usePreferredOperators){
			//need to reset node after failing in local search
			preferredOperators = null;
			subsequentNodes = null;
		}

		subsequentNodes = new ArrayList<StateNode>();

		List<ActionInstance> actsToExpand = null;

		if(preferredOperators != null && usePreferredOperators){
			actsToExpand =  new ArrayList(preferredOperators);
		}
		else{
			actsToExpand = subsequentActions;
		}

		for(ActionInstance act : actsToExpand){
			PreferredOperatorDeferredEvaluationNode node = getSuccessorNode(act);
			if(node != null && !node.equals(this.parent)){
				subsequentNodes.add(node);
			}
		}
		return subsequentNodes;
	}
	
	public  PreferredOperatorDeferredEvaluationNode getSuccessorNode(ActionInstance action1) {
		IncompleteActionInstance action = (IncompleteActionInstance)action1;
		
		// If the action isn't applicable to the node, return null
		if (!isActionApplicable(action)) {
			return null;
		}

		// Create the new node and copy all the values from the old one to the
		// new one
		PreferredOperatorDeferredEvaluationNode node = new PreferredOperatorDeferredEvaluationNode(this);

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

		node.setHeuristic(this.getHeuristic());
		node.setState(node.getPropositions().keySet());
		
		node.setSolverOptions(solverOptions);

		return node;
	}

	public List<StateNode> createSubsequentNodesIgnorePreferredOperators(
			List<ActionInstance> subsequentActions) {
		if(solverOptions.isUsePreferredOperators()) {
			return createSubsequentNodes(subsequentActions);
		}
		
		solverOptions.setUsePreferredOperators(false);
		List<StateNode> subsequentNodes = createSubsequentNodes(subsequentActions);
		solverOptions.setUsePreferredOperators(true);
		
		return subsequentNodes;
	}
}
