package edu.usu.cs.search.incomplete.psp;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.psp.UtilityFunction;

/**
 * Node was previously named State so there may be references to State that are
 * actually Node. Node holds the state, risk sets for each proposition in the
 * state, and a set of critical risks used to get to this node.
 * 
 * @author student
 * 
 */
public class FFRiskyPSPNode  extends FFRiskyNode {

	protected double utilityUpToNow = 0.0;
	protected double costUpToNow = 0.0;

	protected Map<Proposition, Set<Risk>> goalsAchieved = null;
	protected UtilityFunction goalUtilityFunction = null;

	public FFRiskyPSPNode(Set<Proposition> propositions, UtilityFunction goalUtilityFunction, Heuristic heuristic, Problem problem) {
		super(propositions, heuristic);
		this.problem = problem;

		this.goalUtilityFunction = goalUtilityFunction;

		computeUtilities();

		//		gvalue = new double[1];
		//		gvalue[0] = utilityUpToNow - costUpToNow;

	}


	public FFRiskyPSPNode(FFRiskyNode riskyNode) {
		super(riskyNode);


	}


	public void computeUtilities(){
		// Calculate utilityUpToNow
		if(this.parent == null) {
			// Set goalsAchieved to false for all subgoals
			this.goalsAchieved = new HashMap<Proposition, Set<Risk>>();
		} else if (parent instanceof FFRiskyPSPNode){
			FFRiskyPSPNode fpParent = (FFRiskyPSPNode)parent;
			// Copy all achieved 
			this.goalsAchieved = new HashMap<Proposition, Set<Risk>>();
			for(Proposition p : fpParent.goalsAchieved.keySet()){
				this.goalsAchieved.put(p, new HashSet<Risk>(fpParent.getGoalsAchieved().get(p)));
			}

			//new HashSet<Proposition>(fpParent.getGoalsAchieved().size());
			//goalsAchieved.addAll( fpParent.getGoalsAchieved());
		}
		//set goals achieved in this state
		findAchievedGoals();

		//set utility for all goals achieved so far
		this.utilityUpToNow += goalUtilityFunction.evaluate(goalsAchieved.keySet());

		// Calculate costUpToNow
		if(this.parent == null) {
			costUpToNow = 0;
		} else {
			costUpToNow = ((FFRiskyPSPNode)this.parent).costUpToNow + action.getCost();
		}
	}


	private void findAchievedGoals() {
		for(Proposition goal : problem.getGoalAction().getPreconditions()) {
			if(state.contains(goal)){

				Set<Risk> priorRisks = goalsAchieved.get(goal);
				Set<Risk> currentRisks = propositions.get(goal);
				Set<Risk> allRisks = null;

				if(priorRisks == null){
					//only new risks can be current risks
					if(currentRisks != null){
						allRisks = new HashSet<Risk>(currentRisks);
					}
				}
				else{
					//must intersect new risks with prior risks
					if(currentRisks != null){
						allRisks= new HashSet<Risk>(currentRisks);
						allRisks.retainAll(priorRisks);
					}
					else{
						allRisks = new HashSet<Risk>(priorRisks);
					}
				}

				goalsAchieved.put(goal, allRisks);
			}
		}		
	}

	public double[] getGValue() {
		if(this.gvalue == null){
			this.gvalue = new double[dimension];
			for(int i =0 ; i < dimension ; i++){
				if(parent == null){
					this.gvalue[i] = 0.0;
				}
				else{
					if(i == 1){
						this.gvalue[i] = utilityUpToNow - costUpToNow;
					}
					else if (i==0){
						Set<Risk> risks = new HashSet<Risk>(this.getCriticalRisks());
						for(Proposition p : goalsAchieved.keySet()){
							risks.addAll(goalsAchieved.get(p));
						}
						//risks.removeAll(((FFRiskyNode)parent).getCriticalRisks());
						this.gvalue[i] = risks.size();
					}
				}
			}
		}
		return this.gvalue;
	}

	public  FFRiskyPSPNode getSuccessorNode(IncompleteActionInstance action) {

		FFRiskyNode ffnode = super.getSuccessorNode(action);
		if(ffnode != null){
			FFRiskyPSPNode node = new FFRiskyPSPNode(ffnode);
			node.setGoalUtilityFunction(goalUtilityFunction);
			node.problem = problem;
			node.computeUtilities();

			return node;
		}
		return null;
	}






	public UtilityFunction getGoalUtilityFunction() {
		return goalUtilityFunction;
	}


	protected void setGoalUtilityFunction(UtilityFunction goalUtilityFunction) {
		this.goalUtilityFunction = goalUtilityFunction;
	}


	protected Map<Proposition, Set<Risk>> getGoalsAchieved() {
		return goalsAchieved;
	}

	public int compareTo(FFRiskyPSPNode second){
		FFRiskyPSPNode first = this;
		boolean alphaCombo = false;
		if(!alphaCombo){
			Double[] diffs = new Double[2];
			for(int i = 0; i < 2; i++){
				diffs[i] = first.getFValue()[i] - second.getFValue()[i];
			}
			if(diffs[1] != 0) {
				return -1*diffs[1].intValue();
			}
			else{
				return diffs[1].intValue(); 
			}
		}
		else{
			double alpha = 0.5;
			Double value = (alpha*first.getFValue()[0] + (1-alpha)*first.getFValue()[1]) - 
			(alpha*second.getFValue()[0] + (1-alpha)*second.getFValue()[1]);
			return value.intValue();
		}
	}




}
