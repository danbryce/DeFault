package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.SolverOptions;

public class FactSpike {
	private final Map<Integer, FactHeader> factHeaders;
	private final List<FactHeader> factHeadersList;
	//	private Map<Integer, List<FactHeader>> ranks;
	private List<Integer> rankEnd = new ArrayList<Integer>();
	protected Map<Integer, FactHeader> globalFactHeaders;
	private StanPlanningGraph solver;
	protected Map<Integer, Map<Integer, FactLevelInfo>> factLevelInfos;
	private BitSet mask = new BitSet();
	protected SolverOptions solverOptions;
	private int currentRank;
	Map<ActionInstance, Integer> tempPreconditionActionCountMap;
	Map<Integer, List<ActionInstance>> preconditionActionMap;
	List<ActionInstance> activatedActions;

	public FactSpike(Map<Integer, FactHeader> globalFactHeaders, 
			StanPlanningGraph solver, 
			Map<ActionInstance, Integer> tempPreconditionActionCountMap, 
			Map<Integer, List<ActionInstance>> preconditionActionMap) {
		this.factHeaders = new HashMap<Integer, FactHeader>();
		this.factHeadersList = new ArrayList<FactHeader>();
		//		this.ranks = new HashMap<Integer, List<FactHeader>>();
		this.globalFactHeaders = globalFactHeaders;
		this.solver = solver;
		this.solverOptions = this.solver.getSolverOptions();
		this.factLevelInfos = new HashMap<Integer, Map<Integer, FactLevelInfo>>();
		this.currentRank = 0;
		this.tempPreconditionActionCountMap = tempPreconditionActionCountMap;
		this.preconditionActionMap = preconditionActionMap;
		this.activatedActions = new ArrayList<ActionInstance>();
	}

	public void addFact(Proposition proposition, List<ActionInstance> remainingActions) {
		// // Make sure the fact doesn't already exist
		// for(FactHeader factHeader : factHeaders) {
		// if(factHeader.getName().equals(proposition.getName())) {
		// return;
		// }
		// }

		FactHeader factHeader = globalFactHeaders.get(proposition.getIndex());

		if(factHeader == null){
			factHeader = new FactHeader(proposition,
					proposition.getIndex(), 
					-1);
		}

		globalFactHeaders.put(factHeader.getPropositionIndex(), factHeader);
		addFact(factHeader, remainingActions);


	}

	public void addFact(FactHeader factHeader, List<ActionInstance> remainingActions) {
		factHeaders.put(factHeader.getPropositionIndex(), factHeader);
		factHeadersList.add(factHeader);

		decrementActionPreconditions(factHeader, remainingActions);

		int currentRank = getCurrentRank();
		mask.set(factHeader.getPropositionIndex());
		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(currentRank);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, FactLevelInfo>();
			factLevelInfos.put(currentRank, levelInfo);
		}


	}


	private void decrementActionPreconditions(FactHeader factHeader,
			List<ActionInstance> remainingActions) {
		List<ActionInstance> acts = preconditionActionMap.get(factHeader.getPropositionIndex());
		if(acts != null){
			for(ActionInstance action : acts){
				Integer newCount = tempPreconditionActionCountMap.get(action);
				if(newCount != null){
					newCount--;			
					tempPreconditionActionCountMap.put(action, newCount);
					if(newCount == 0){
						activatedActions.add(action);
					}
				}
				
			}
		}
	}

	/**
	 * Returns the FactHeader at the specified index or null .
	 * 
	 * @param index
	 * @return
	 */
	public FactHeader get(int index) {
		//		if (index < 0 || factHeaders.size() <= index) {
		//			return null;
		//		}
		return factHeaders.get(index);
	}

	public int getCurrentRank() {
		return currentRank;
	}

	public void incrementRank() {
		rankEnd.add(factHeaders.size());
		currentRank++;
	}

	public void clearActivatedActions(){
		activatedActions.clear();
	}

	/**
	 * Returns all facts with a rank up to the specified rank.
	 * 
	 * @return
	 */
	public Collection<FactHeader> getFactsByRank(int rank) {
		if (rank < 0 || rank >= currentRank) {
			return null;
		}

		return //this.factHeaders.values(); 
		this.factHeadersList.subList(0, this.rankEnd.get(rank));
	}

	/**
	 * Returns all facts a with rank matching the specified rank.
	 * 
	 * @param rank
	 * @return
	 */
	public Collection<FactHeader> getNewFactsByRank(int rank) {
		if (rank < 0 || rank >= currentRank) {
			return null;
		}
		if (rank == 0) {
			return getFactsByRank(rank);
		}

		return //ranks.get(rank);
		this.factHeadersList.subList(this.rankEnd.get(rank - 1),
				this.rankEnd.get(rank));
	}

	public boolean isActionApplicable(ActionInstance action) {

		for (Proposition prec : ((IncompleteActionInstance)action).getPreconditions()) {


			if (get(prec.getIndex()) == null) {
				return false;
			}
		}
		return true;
	}

	//	public boolean isActionApplicable(ActionInstance action) {
	//
	//		for (LiteralInstance literal : ((List<LiteralInstance>)((ConjunctionGoalDesc)action.getPreCondition()).getSubGoals())) {
	//			if (get(literal.toString()) == null) {
	//				return false;
	//			}
	//		}
	//		return true;
	//	}

	public boolean isActionApplicable(ActionHeader action) {



		BitSet andResult = new BitSet();
		andResult.or(action.getPreconditions());
		andResult.and(mask);
		return andResult.equals(action.getPreconditions());


	}



	/**
	 * Returns the number of fact headers in the fact spike.
	 * @return
	 */
	public int size() {
		return factHeaders.size();
	}

	@Override
	public String toString() {
		String str = "Fact Spike:\n";
		for(int rankIndex = 0; rankIndex < currentRank; rankIndex++) {
			str += "Rank " + rankIndex + "\n";
			for(FactHeader fact : getNewFactsByRank(rankIndex)) {
				str += "\t" + fact.toString() + "\n";
			}
		}
		return str;
	}

	//	public int getMaxRankEnd() {
	//		return rankEnd.get(rankEnd.size() - 1);
	//	}

	public FactLevelInfo getFactLevelInfo(int i, Integer index) {
		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(i);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, FactLevelInfo>();
			factLevelInfos.put(i, levelInfo);
		}
		FactLevelInfo fli = levelInfo.get(index);
		if(fli == null){
			fli = new FactLevelInfo(globalFactHeaders.get(index), solverOptions);

			Map<Integer, FactLevelInfo> prevLevelInfo = factLevelInfos.get(i-1);
			FactLevelInfo fliPrev = null;
			if(prevLevelInfo != null){
				fliPrev = prevLevelInfo.get(index);
			}
			if(i == 0 || fliPrev == null){
				fli.setChanged(true);
			}
			//			System.out.println("made new fli for: " + fli.getFact().getName() + " at level: " + i );

			levelInfo.put(index, fli);
		}

		return factLevelInfos.get(i).get(index);
	}

	public Collection<? extends ActionInstance> getActivatedActions() {
		return activatedActions;
	}

}
