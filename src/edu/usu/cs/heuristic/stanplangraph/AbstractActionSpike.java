package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;


import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.Solver;

public class AbstractActionSpike implements ActionSpike {
	private FactSpike factSpike = null;
	private List<ActionHeader> actionHeaders;
	private List<Integer> rankEnd = new ArrayList<Integer>();
	protected Map<Integer, ActionHeader> globalActionHeaders;
	private Map<Integer, FactHeader> globalFactHeaders;
	protected Solver solver;
	protected AbstractPlanningGraph heuristicSolver;
	protected Map<Integer, Map<Integer, ActionLevelInfo>> actionLevelInfos;
	private int currentRank;
	private Map<ActionHeader, Integer> actRank;
	
	private static Logger logger = Logger.getLogger(AbstractActionSpike.class.getName());

	//	public ActionSpike(FactSpike factSpike) {
	//		this.setFactSpike(factSpike);
	//		this.globalActionHeaders = new HashMap<Action, ActionHeader>();
	//		this.actionHeaders = new ArrayList<ActionHeader>();
	//	}

	public AbstractActionSpike(FactSpike factSpike, 
			Map<Integer, ActionHeader> globalActionHeaders,
			Map<Integer, FactHeader> globalFactHeaders,
			AbstractPlanningGraph heuristicSolver,
			Solver solver) {
		this.globalActionHeaders = globalActionHeaders;
		this.globalFactHeaders = globalFactHeaders;
		this.factSpike = factSpike;
		this.solver = solver;
		this.heuristicSolver = heuristicSolver;
		this.actionHeaders = new ArrayList<ActionHeader>();
		this.actionLevelInfos = new HashMap<Integer, Map<Integer,ActionLevelInfo>>();
		this.currentRank = 0;
		this.actRank = new HashMap<ActionHeader, Integer>();
	}

	
	
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getActRank(edu.usu.cs.heuristic.stanplangraph.ActionHeader)
	 */
	public  Integer getActRank(ActionHeader bestAct) {
		Integer rank = actRank.get(bestAct);
		if(rank == null){
			return Integer.MAX_VALUE;
		}
		
		return rank;
	}



	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#addAction(edu.usu.cs.pddl.domain.ActionInstance, boolean, java.util.List)
	 */
	public void addAction(ActionInstance maction, boolean noop, List<ActionInstance> remainingActions) {
		IncompleteActionInstance action = (IncompleteActionInstance)maction;
		ActionHeader actionHeader = globalActionHeaders.get(action.getIndex());

		actRank.put(actionHeader, currentRank);

		if(actionHeader == null){
			actionHeader = heuristicSolver.creatActionHeader(action, noop);
		}

		//		// Create critical and possible risks and add them if necessary
		//		Set<Risk> criticalRisks = new HashSet<Risk>();
		//		Set<Risk> possibleRisks = new HashSet<Risk>();

		//		// Preconditions
		//		for(Proposition prec : action.getPreconditions()) {
		//			FactLevelInfo fli = factSpike.getFactLevelInfo(getCurrentRank()-1, prec.getIndex());
		//			
		//			// Any risks (critical or possible) in the preconditions become critical risks now
		//			criticalRisks.addAll(fli.getCriticalRisks());
		//			criticalRisks.addAll(fli.getPossibleRisks());
		//		}

		// Add Effects
		for (Proposition add : action.getAddEffects()) {
			// factHeader of the proposition
			FactHeader globalFactHeader = globalFactHeaders.get(add.getIndex()); 
			FactHeader factHeader = getFactSpike().get(add.getIndex());

			// If the factHeader is null, the proposition doesn't exist in the
			// factSpike, so it needs to be added
			if (factHeader == null) {
				if(globalFactHeader == null){
					FactHeader newFactHeader = new FactHeader(add, add.getIndex(),0);
					globalFactHeaders.put(add.getIndex(), newFactHeader);
				}
				globalFactHeader = globalFactHeaders.get(add.getIndex());
				
				//globalFactHeaders.put(add.getIndex(), add);
				//globalFactHeader.setIndex(solver.getAndIncrementFactIndex(add));
				getFactSpike().addFact(globalFactHeader, remainingActions);
			}
			FactLevelInfo fli = factSpike.getFactLevelInfo(getCurrentRank()+1, add.getIndex());
			logger.debug("Adding " + actionHeader.getIndex() + " " + actionHeader.getName() + " as supporter of " + fli.getFact().getName());
			fli.getTrueSupporters().add(actionHeader);
			fli.getAllSupporters().add(actionHeader);

		}

		// Get delete effects



		// Get possible add effects
		for (Proposition possAdd : action.getPossibleAddEffects()) {
			// factHeader of the proposition
			FactHeader globalFactHeader = globalFactHeaders.get(possAdd.getIndex()); 
			FactHeader factHeader = getFactSpike().get(possAdd.getIndex());

			//getFactSpike().get(possAdd.getName());

			// If the factHeader is null, the proposition doesn't exist in the
			// factSpike, so it needs to be added
			// Also an UnlistedEffect risk need to be added
			if (factHeader == null) {
				
				if(globalFactHeader == null){
					FactHeader newFactHeader = new FactHeader(possAdd, possAdd.getIndex(),0);
					globalFactHeaders.put(possAdd.getIndex(), newFactHeader);
				}
				globalFactHeader = globalFactHeaders.get(possAdd.getIndex());
				
				//globalFactHeaders.put(add.getIndex(), add);
				//globalFactHeader.setIndex(solver.getAndIncrementFactIndex(possAdd));
				getFactSpike().addFact(globalFactHeader, remainingActions);

				
			}
			FactLevelInfo fli = factSpike.getFactLevelInfo(getCurrentRank()+1, possAdd.getIndex());
			fli.getPossibleSupporters().add(actionHeader);
			fli.getAllSupporters().add(actionHeader);
			logger.debug("Adding " + actionHeader.getIndex() + " " + actionHeader.getName() + " as supporter of " + fli.getFact().getName());
			//getFactSpike().addFact(globalFactHeader);

		}

		// Get possible delete effects

		//ActionLevelInfo ali = this.getActionLevelInfo(getCurrentRank(), actionHeader.getIndex());

		//		actionHeader.setCriticalRisks(getCurrentRank(), criticalRisks);
		//		actionHeader.setPossibleRisks(getCurrentRank(), possibleRisks);




		if(!actionHeaders.contains(actionHeader)) {
			actionHeaders.add(actionHeader);
		}
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#addAction(edu.usu.cs.heuristic.stanplangraph.ActionHeader)
	 */
	public void addAction(ActionHeader actionHeader) {
		actionHeaders.add(actionHeader);
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#addNoopAction(edu.usu.cs.heuristic.stanplangraph.FactHeader)
	 */
	public void addNoopAction(FactHeader factHeader) {

		ActionHeader noop = heuristicSolver.getNoopForFact(factHeader);
		if(noop == null){
			noop = heuristicSolver.createNoopActionHeader(factHeader);
			int index = heuristicSolver.problem.getActions().size()+factHeader.getPropositionIndex()+1;
			globalActionHeaders.put(index, noop);
			//System.out.println("Storing header for " + index);
		}
//		System.out.println("# acts = " + solver.problem.getActions().size());
//		System.out.println("Prop index = " + factHeader.getPropositionIndex());

		FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank(), factHeader.getPropositionIndex());
		fli.getAllSupporters().add(noop);
		fli.getTrueSupporters().add(noop);
		logger.debug("Adding Noop " + noop.getIndex() + " " + noop.getName() + " as supporter of " + fli.getFact().getName());
		// Add the critical risks
		//		Set<Risk> criticalRisks = new HashSet<Risk>();
		//		criticalRisks.addAll(factHeader.getLastCriticalRisks());
		//		criticalRisks.addAll(factHeader.getLastPossibleRisks());
		//		noop.setCriticalRisks(getCurrentRank(), criticalRisks);
		//		
		this.addAction(noop);
	}


	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getCurrentRank()
	 */
	public int getCurrentRank() {
		//return rankEnd.size();
		return currentRank;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#incrementRank()
	 */
	public void incrementRank() {
		rankEnd.add(actionHeaders.size());
		currentRank++;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getActionsByRank(int)
	 */
	public List<ActionHeader> getActionsByRank(int rank) {
		if(rank < 0 || rank >= currentRank) {
			return null;
		}

		return this.actionHeaders.subList(0, this.rankEnd.get(rank));
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getNewActionsByRank(int)
	 */
	public List<ActionHeader> getNewActionsByRank(int rank) {
		if(rank < 0 || rank >= rankEnd.size()) {
			return null;
		}
		if (rank < 1) {
			return getActionsByRank(rank);
		}

		List<ActionHeader> subList = this.actionHeaders.subList(this.rankEnd.get(rank - 1),
				this.rankEnd.get(rank));
		return subList;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getFactSpike()
	 */
	public FactSpike getFactSpike() {
		return factSpike;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#setFactSpike(edu.usu.cs.heuristic.stanplangraph.FactSpike)
	 */
	public void setFactSpike(FactSpike factSpike) {
		this.factSpike = factSpike;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#toString()
	 */
	@Override
	public String toString() {
		String str = "Action Spike:\n";
		for(int rankIndex = 0; rankIndex < rankEnd.size(); rankIndex++) {
			str += "Rank " + rankIndex + "\n";
			for(ActionHeader actionHeader : getNewActionsByRank(rankIndex)) {
				str += "\t" + actionHeader.toString() + "\n";
			}
		}
		return str;
	}

	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getActionLevelInfo(int, int)
	 */
	public ActionLevelInfo getActionLevelInfo(int i, int index) {
		return null;
	}
	
	
	/* (non-Javadoc)
	 * @see edu.usu.cs.heuristic.stanplangraph.ActionSpike#getExistingActionLevelInfo(int, int)
	 */
	public ActionLevelInfo getExistingActionLevelInfo(int i, int index) {

		Map<Integer, ActionLevelInfo> levelInfo = actionLevelInfos.get(i);
		if(levelInfo == null){
			return null;
		}
		ActionLevelInfo ali = levelInfo.get(index);
		if(ali == null){
			return null;
		}		

		return ali;

	}

//	public boolean preconditionRisksChanged(ActionHeader actionHeader,
//			int currentRank) {
//		//TODO implement me!
//		return true;
//	}
//
//	public void copyRisksFromPreviousLevel(ActionHeader actionHeader,
//			int currentRank) {
//		//TODO implement me!
//	}




}
