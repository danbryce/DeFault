package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;

public class FactSpike {
	private final List<FactHeader> factHeaders = new ArrayList<FactHeader>();
	private List<Integer> rankEnd = new ArrayList<Integer>();
	private Map<Integer, FactHeader> globalFactHeaders;
	private StanPlanningGraph solver;
	private Map<Integer, Map<Integer, FactLevelInfo>> factLevelInfos;
	private BitSet mask = new BitSet();

	public FactSpike(Map<Integer, FactHeader> globalFactHeaders, StanPlanningGraph solver) {
		this.globalFactHeaders = globalFactHeaders;
		this.solver = solver;
		factLevelInfos = new HashMap<Integer, Map<Integer, FactLevelInfo>>();
	}

	public void addFact(Proposition proposition) {
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
				solver.getAndIncrementFactIndex(proposition),
				-1);
		}

		globalFactHeaders.put(factHeader.getPropositionIndex(), factHeader);
		addFact(factHeader);
		

	}

	public void addFact(FactHeader factHeader) {
		factHeaders.add(factHeader);
		mask.set(factHeader.getPropositionIndex());
		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(getCurrentRank());
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, FactLevelInfo>();
			factLevelInfos.put(getCurrentRank(), levelInfo);
		}
//		FactLevelInfo fil = new FactLevelInfo(factHeader);
//		levelInfo.put(factHeader.getPropositionIndex(), fil);
	}

	/**
	 * Iterates through the factHeaders list and returns the first occurance of
	 * the specified factName or null if it is not found.
	 * 
	 * @param factName
	 * @return
	 */
	public FactHeader get(String factName) {
		for (FactHeader factHeader : factHeaders) {
			if (factHeader.getName().equals(factName)) {
				return factHeader;
			}
		}
		return null;
	}

	/**
	 * Returns the FactHeader at the specified index or null .
	 * 
	 * @param index
	 * @return
	 */
	public FactHeader get(int index) {
		if (index < 0 || factHeaders.size() <= index) {
			return null;
		}
		return factHeaders.get(index);
	}

	public int getCurrentRank() {
		return rankEnd.size();
	}

	public void incrementRank() {
		rankEnd.add(factHeaders.size());
	}

	/**
	 * Returns all facts with a rank up to the specified rank.
	 * 
	 * @return
	 */
	public List<FactHeader> getFactsByRank(int rank) {
		if (rank < 0 || rank >= this.rankEnd.size()) {
			return null;
		}

		return this.factHeaders.subList(0, this.rankEnd.get(rank));
	}

	/**
	 * Returns all facts a with rank matching the specified rank.
	 * 
	 * @param rank
	 * @return
	 */
	public List<FactHeader> getNewFactsByRank(int rank) {
		if (rank < 0 || rank >= this.rankEnd.size()) {
			return null;
		}
		if (rank == 0) {
			return getFactsByRank(rank);
		}

		return this.factHeaders.subList(this.rankEnd.get(rank - 1),
				this.rankEnd.get(rank));
	}

	public boolean isActionApplicable(ActionInstance action) {

		for (Proposition prec : ((IncompleteActionInstance)action).getPreconditions()) {
			if (get(prec.getName()) == null) {
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
		for(int rankIndex = 0; rankIndex < rankEnd.size(); rankIndex++) {
			str += "Rank " + rankIndex + "\n";
			for(FactHeader fact : getNewFactsByRank(rankIndex)) {
				str += "\t" + fact.toString() + "\n";
			}
		}
		return str;
	}

	public int getMaxRankEnd() {
		return rankEnd.get(rankEnd.size() - 1);
	}

	public FactLevelInfo getFactLevelInfo(int i, Integer index) {
		Map<Integer, FactLevelInfo> levelInfo = factLevelInfos.get(i);
		if(levelInfo == null){
			levelInfo = new HashMap<Integer, FactLevelInfo>();
			factLevelInfos.put(i, levelInfo);
		}
		FactLevelInfo fli = levelInfo.get(index);
		if(fli == null){
			fli = new FactLevelInfo(globalFactHeaders.get(index));
//			System.out.println("made new fli for: " + fli.getFact().getName() + " at level: " + i );

			levelInfo.put(index, fli);
		}
		
		return factLevelInfos.get(i).get(index);
	}
	
}
