package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.usu.cs.heuristic.stanplangraph.classic.ClassicalFactLevelInfo;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;

public class AbstractFactSpike implements FactSpike {
	private final Map<Integer, FactHeader> factHeaders;
	private final List<FactHeader> factHeadersList;
	//	private Map<Integer, List<FactHeader>> ranks;
	private List<Integer> rankEnd = new ArrayList<Integer>();
	protected Map<Integer, FactHeader> globalFactHeaders;
	private AbstractPlanningGraph heuristicSolver;
	protected Solver solver;
	
	protected Map<Integer, Map<Integer, FactLevelInfo>> factLevelInfos;
	private BitSet mask = new BitSet();
	private int currentRank;
	Map<ActionInstance, Integer> tempPreconditionActionCountMap;
	Map<Integer, List<ActionInstance>> preconditionActionMap;
	List<ActionInstance> activatedActions;

	public AbstractFactSpike(Map<Integer, FactHeader> globalFactHeaders, 
			AbstractPlanningGraph heuristicSolver, 
			Map<ActionInstance, Integer> tempPreconditionActionCountMap, 
			Map<Integer, List<ActionInstance>> preconditionActionMap,
			Solver solver) {
		this.factHeaders = new HashMap<Integer, FactHeader>();
		this.factHeadersList = new ArrayList<FactHeader>();
		//		this.ranks = new HashMap<Integer, List<FactHeader>>();
		this.globalFactHeaders = globalFactHeaders;
		this.heuristicSolver = heuristicSolver;
		this.solver = solver;
		this.factLevelInfos = new HashMap<Integer, Map<Integer, FactLevelInfo>>();
		this.currentRank = 0;
		this.tempPreconditionActionCountMap = tempPreconditionActionCountMap;
		this.preconditionActionMap = preconditionActionMap;
		this.activatedActions = new ArrayList<ActionInstance>();
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#addFact(edu.usu.cs.pddl.domain.incomplete.Proposition, java.util.List)
	 */
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

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#addFact(edu.usu.cs.heuristic.stanplangraph.FactHeader, java.util.List)
	 */
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

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#get(int)
	 */
	public FactHeader get(int index) {
		//		if (index < 0 || factHeaders.size() <= index) {
		//			return null;
		//		}
		return factHeaders.get(index);
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getCurrentRank()
	 */
	public int getCurrentRank() {
		return currentRank;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#incrementRank()
	 */
	public void incrementRank() {
		rankEnd.add(factHeaders.size());
		currentRank++;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#clearActivatedActions()
	 */
	public void clearActivatedActions(){
		activatedActions.clear();
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getFactsByRank(int)
	 */
	public Collection<FactHeader> getFactsByRank(int rank) {
		if (rank < 0 || rank >= currentRank) {
			return null;
		}

		return //this.factHeaders.values(); 
		this.factHeadersList.subList(0, this.rankEnd.get(rank));
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getNewFactsByRank(int)
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

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#isActionApplicable(edu.usu.cs.pddl.domain.ActionInstance)
	 */
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

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#isActionApplicable(edu.usu.cs.heuristic.stanplangraph.ActionHeader)
	 */
	public boolean isActionApplicable(ActionHeader action) {



		BitSet andResult = new BitSet();
		andResult.or(action.getPreconditions());
		andResult.and(mask);
		return andResult.equals(action.getPreconditions());


	}



	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#size()
	 */
	public int size() {
		return factHeaders.size();
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#toString()
	 */
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

	
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getExistingFactLevelInfo(int, int)
	 */
	public FactLevelInfo getExistingFactLevelInfo(int i, int index) {

		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(i);
		if(levelInfo == null){
			return null;
		}
		FactLevelInfo ali = levelInfo.get(index);
		if(ali == null){
			return null;
		}		

		return ali;

	}
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getFactLevelInfo(int, java.lang.Integer)
	 */
	public FactLevelInfo getFactLevelInfo(int i, Integer index) {
		return null;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.FactSpike#getActivatedActions()
	 */
	public Collection<? extends ActionInstance> getActivatedActions() {
		return activatedActions;
	}

}
