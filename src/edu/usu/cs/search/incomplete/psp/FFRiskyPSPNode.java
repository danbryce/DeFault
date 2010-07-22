package edu.usu.cs.search.incomplete.psp;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.heuristic.Heuristic;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.pddl.domain.incomplete.Risk;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;
import edu.usu.cs.search.incomplete.FFRiskyNode;
import edu.usu.cs.search.incomplete.GeneralizedRiskSet;
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

	protected Map<Proposition, GeneralizedRiskSet> goalsAchieved = null;
	protected UtilityFunction goalUtilityFunction = null;

	public FFRiskyPSPNode(Set<Proposition> propositions, UtilityFunction goalUtilityFunction, Heuristic heuristic, Problem problem, SolverOptions solverOptions) {

		super(propositions, heuristic, solverOptions);
		dimension = 3;
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
			this.goalsAchieved = new HashMap<Proposition, GeneralizedRiskSet>();
		} else if (parent instanceof FFRiskyPSPNode){
			FFRiskyPSPNode fpParent = (FFRiskyPSPNode)parent;
			// Copy all achieved 
			this.goalsAchieved = new HashMap<Proposition, GeneralizedRiskSet>();
			for(Proposition p : fpParent.goalsAchieved.keySet()){
				this.goalsAchieved.put(p, new GeneralizedRiskSet(fpParent.getGoalsAchieved().get(p)));
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

				GeneralizedRiskSet priorRisks = goalsAchieved.get(goal);
				GeneralizedRiskSet currentRisks = propositions.get(goal);
				GeneralizedRiskSet allRisks = null;

				if(priorRisks == null){
					//only new risks can be current risks
					if(currentRisks != null){
						allRisks = new GeneralizedRiskSet(currentRisks);
					}
				}
				else{
					//must intersect new risks with prior risks
					if(currentRisks != null){
						allRisks= new GeneralizedRiskSet(currentRisks);
						allRisks.crossProduct(priorRisks);
					}
					else{
						allRisks = new GeneralizedRiskSet(priorRisks);
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
					if(i == 0){
						this.gvalue[i] = utilityUpToNow;
					}
					else
						this.gvalue[i] = 0.0;

				}
				else{
					if(i == 0){
						this.gvalue[i] = utilityUpToNow;
					}
					else if(i == 1){
						GeneralizedRiskSet risks = new GeneralizedRiskSet(this.getActRisks());
						for(Proposition p : goalsAchieved.keySet()){
							risks.union(goalsAchieved.get(p));
						}
						//risks.removeAll(((FFRiskyNode)parent).getCriticalRisks());
						this.gvalue[i] = risks.size();
					}
					else if (i==2){
						this.gvalue[i] = costUpToNow;
					}
				}
			}
		}
		return this.gvalue;
	}

	public  FFRiskyPSPNode getSuccessorNode(ActionInstance action) {

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


	public Map<Proposition, GeneralizedRiskSet> getGoalsAchieved() {
		return goalsAchieved;
	}

	public String toString(){
		StringBuilder builder = new StringBuilder();

		if(this.gvalue == null){
			this.getGValue();
		}
	
		for(int i = 0; i < this.dimension; i++){
			builder.append(this.gvalue[i]).append(" ");
		}
		return builder.toString();
	}
	
	public int compareTo(StateNode second) {

		FFRiskyPSPNode first = this;
		boolean alphaCombo = false;
		if(!alphaCombo){
			Double[] diffs = new Double[this.dimension];
			for(int i = 0; i < this.dimension; i++){
				diffs[i] = first.getFValue()[i] - second.getFValue()[i];
				//logger.debug("diff["+i+"]="+diffs[i] + " " + first.getFValue()[i] + " " + second.getFValue()[i]);
			}
			if(diffs[0] == 0.0) {
				if(diffs[1] != 0.0){  
					return diffs[1].intValue(); //risk
				}
				else{
					return diffs[2].intValue(); //cost
				}
			}
			else{
				return -1*diffs[0].intValue(); //benefit 
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
