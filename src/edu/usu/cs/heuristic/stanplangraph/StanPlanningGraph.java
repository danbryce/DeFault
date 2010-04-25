package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.DefaultActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;

public class StanPlanningGraph {
	protected static Logger logger = LoggerFactory.getLogger(StanPlanningGraph.class.getName());
	
	protected  Map<Integer, FactHeader> globalFactHeaders = null; 
	protected  Map<Integer, ActionHeader> globalActionHeaders = null;
	//protected Map<String, Risk> globalRiskHeaders = new HashMap<String, Risk>();
	//protected IncompleteProblem problem = null;
	protected int currentFactIndex = 0;
	protected List<ActionInstance> remainingActions;
	// private final Set<Proposition> remainingPropositions;
	protected FactSpike factSpike = null;
	protected ActionSpike actionSpike = null;
	private static final int MAX_LEVELS = 200;
	protected Problem problem = null;
	protected Domain domain = null;
	protected Set<ActionInstance> helpfulActions = null;
	protected Set<ActionInstance> preferredActions = null;
	private SolverOptions solverOptions;
	
	//	public  StanPlanningGraph(IncompleteProblem problem1){
	//		globalFactHeaders = new HashMap<Integer, FactHeader>();
	//		globalActionHeaders = new HashMap<Integer, ActionHeader>();
	//		problem = problem1;
	//
	//	}
	public StanPlanningGraph(){

	}

	public StanPlanningGraph(Problem problem2, Domain domain2, SolverOptions solverOptions) {
		globalFactHeaders = new HashMap<Integer, FactHeader>();
		globalActionHeaders = new HashMap<Integer, ActionHeader>();
		problem = problem2;
		domain = domain2;
		this.setSolverOptions(solverOptions);
	}
	public Integer getAndIncrementFactIndex(Proposition p){
		return currentFactIndex++;
	}


	public void reachFixedPoint(StateNode node) {
		initializePlanningGraph(node);

		boolean addedLevel = true;
		while (!reachedFixedPoint(addedLevel)) {
			logger.debug("************* Current Level = " + factSpike.getCurrentRank() + "**********");

			addedLevel = addLevel();

			int currentRank = this.getFactSpike().getCurrentRank();
			if(currentRank > MAX_LEVELS){
				return;
			}
		}
	//	System.out.println("Reached fixed point at level: " + this.getFactSpike().getCurrentRank());
	}



	protected boolean reachedFixedPoint(boolean addedLevel) {
		return true;
	}



	protected void initializePlanningGraph(StateNode node) {
		this.remainingActions = new ArrayList<ActionInstance>(problem.getActions());
		this.factSpike = new FactSpike(globalFactHeaders, this);
		this.actionSpike = new ActionSpike(factSpike, globalActionHeaders, globalFactHeaders, this);
		this.helpfulActions = new HashSet<ActionInstance>();
		this.preferredActions = new HashSet<ActionInstance>();
		//reset fact indices
		currentFactIndex = 0;
		for(Integer header : globalFactHeaders.keySet()){
			globalFactHeaders.get(header).setIndex(-1);
		}

		// Create the fact spike rank 0
		for (Proposition proposition : node.getState()) {
			this.getFactSpike().addFact(proposition);
			globalFactHeaders.get(proposition.getIndex()).setIndex(getAndIncrementFactIndex(proposition));
		}	
		this.getFactSpike().incrementRank();
	
	}


	public FactHeader addFact(Proposition proposition) {

		FactHeader factHeader = globalFactHeaders.get(proposition.getIndex());
		if(factHeader == null){
			factHeader = new FactHeader(proposition, proposition.getIndex(), -1, -1);
			globalFactHeaders.put(proposition.getIndex(), factHeader);
		}
		return factHeader;
	}

	public ActionHeader creatActionHeader(DefaultActionInstance action, boolean noop) {
		return null;

	}
	public ActionHeader creatActionHeader(IncompleteActionInstance action, boolean noop) {

		// Create critical and possible risks and add them if necessary
		//		Set<Risk> criticalRisks = new HashSet<Risk>();
		//		Set<Risk> possibleRisks = new HashSet<Risk>();

		// Get preconditions
		BitSet preconditions = new BitSet();
		List<FactHeader> preconditionHeaders = new ArrayList<FactHeader>();
		for (Proposition prec : action.getPreconditions()) {
			int index = prec.getIndex();
			//				getFactSpike().get(prec.getName()).getIndex();
			preconditions.set(index);
			FactHeader factHeader = globalFactHeaders.get(index); 
			if (factHeader == null) {
				factHeader = addFact(prec);
				globalFactHeaders.put(index, factHeader);
			}
			preconditionHeaders.add(factHeader);
		}

		// Get add effects
		BitSet addEffects = new BitSet();
		for (Proposition add : action.getAddEffects()) {
			// factHeader of the proposition
			FactHeader factHeader = globalFactHeaders.get(add.getIndex()); 
			//getFactSpike().get(add.getName());

			// If the factHeader is null, the proposition doesn't exist in the
			// factSpike, so it needs to be added
			if (factHeader == null) {
				//getFactSpike().addFact(add);
				factHeader = addFact(add);
				globalFactHeaders.put(add.getIndex(), factHeader);
			}


			// set index in addEffect
			addEffects.set(factHeader.getPropositionIndex());

		}

		// Get delete effects
		BitSet deleteEffects = new BitSet();
		//		for (Proposition delete : action.getDeleteEffects()) {
		//			// FactHeader of the proposition
		//			FactHeader factHeader = globalFactHeaders.get(delete.getIndex()); 
		//			//getFactSpike().get(delete.getName());
		//
		//			// If fact doesn't exist, don't bother adding it
		//			if (factHeader == null) {
		//				continue;
		//			}
		//
		//			// factSpike index of the delete effect
		//			int index = delete.getIndex(); 
		//			//getFactSpike().get(delete.getName()).getIndex();
		//			deleteEffects.set(index);
		//		}

		// Get possible preconditions
		BitSet possiblePreconditions = new BitSet();
		for (Proposition possPrec : action.getPossiblePreconditions()) {
			// factSpike index of the possible precondition
			FactHeader factHeader = globalFactHeaders.get(possPrec.getIndex()); 
			//this.getFactSpike().get(possPrec.getName());

			// If factHeader is null, the precondition doesn't exist and a possible risk needs to be added
			if(factHeader == null //|| factHeader.getIndex() >= this.getFactSpike().getMaxRankEnd()
			) {
				//possibleRisks.add(new Risk(Risk.PRECOPEN, action.getName(), possPrec.getName()));
				factHeader = addFact(possPrec);
				globalFactHeaders.put(factHeader.getPropositionIndex(), factHeader);
			} 


			int index = factHeader.getPropositionIndex();
			possiblePreconditions.set(index);

		}

		// Get possible add effects
		BitSet possibleAddEffects = new BitSet();
		for (Proposition possAdd : action.getPossibleAddEffects()) {
			// factHeader of the proposition
			FactHeader factHeader = globalFactHeaders.get(possAdd.getIndex()); 
			//getFactSpike().get(possAdd.getName());

			// If the factHeader is null, the proposition doesn't exist in the
			// factSpike, so it needs to be added
			// Also an UnlistedEffect risk need to be added
			if (factHeader == null) {
				//getFactSpike().addFact(possAdd);

				factHeader = addFact(possAdd); 
				//getFactSpike().get(possAdd.getName());
				//possibleRisks.add(new Risk(Risk.UNLISTEDEFFECT, action.getName(), possAdd.getName()));
				globalFactHeaders.put(possAdd.getIndex(), factHeader);
			}

			// set index in possibleAddEffect
			possibleAddEffects.set(factHeader.getPropositionIndex());
		}

		//		// Get possible delete effects
		BitSet possibleDeleteEffects = new BitSet();
		//		for (Proposition possDelete : action.getPossibleDeleteEffects()) {
		//			// FactHeader of the proposition
		//			FactHeader factHeader = globalFactHeaders.get(possDelete.getIndex()); 
		//			//getFactSpike().get(possDelete.getName());
		//
		//			// If fact doesn't exist, don't bother adding it
		//			if (factHeader == null) {
		//				continue;
		//			}
		//
		//			// factSpike index of the possible delete effect
		//			int index = getFactSpike().get(possDelete.getName()).getIndex();
		//			possibleDeleteEffects.set(index);
		//		}

		ActionHeader actionHeader = new ActionHeader(action, action.getName(),
				action.getIndex(), noop, preconditions, addEffects,
				deleteEffects, possiblePreconditions, possibleAddEffects,
				possibleDeleteEffects);
		actionHeader.setPreconditionHeaders(preconditionHeaders);
		//		actionHeader.setCriticalRisks(this.getActionSpike().getCurrentRank(), criticalRisks);
		//		actionHeader.setPossibleRisks(this.getActionSpike().getCurrentRank(), possibleRisks);
		globalActionHeaders.put(action.getIndex(), actionHeader);

		for (Proposition add : action.getAddEffects()) {
			FactHeader factHeader = globalFactHeaders.get(add.getIndex()); 
			factHeader.addSupporter(actionHeader);
		}
		for (Proposition add : action.getPossibleAddEffects()) {
			FactHeader factHeader = globalFactHeaders.get(add.getIndex()); 
			factHeader.addSupporter(actionHeader);
		}


		return actionHeader;
	}

	//	public void copyActionHeader(ActionHeader actionHeader) {
	//		ActionHeader newActionHeader = new ActionHeader(actionHeader.getAction(), actionHeader.getName(),
	//				globalActionHeaders.size(), actionHeader.isNoop(), actionHeader
	//				.getPreconditions(), actionHeader.getAddEffects(),
	//				actionHeader.getDeleteEffects(), actionHeader
	//				.getPossPreconditions(), actionHeader
	//				.getPossAddEffects(), actionHeader
	//				.getPossDeleteEffects());
	//		globalActionHeaders.put(newActionHeader.getAction().getIndex(), newActionHeader);
	//
	//	}

	public ActionHeader createNoopActionHeader(FactHeader factHeader) {

		// Create preconditions
		BitSet preconditions = new BitSet();
		preconditions.set(factHeader.getPropositionIndex());

		// Create add effects
		BitSet addEffects = new BitSet();
		addEffects.set(factHeader.getPropositionIndex());

		List<Set<Proposition>> mList = new ArrayList<Set<Proposition>>();
		mList.add(new HashSet<Proposition>());
		mList.add(new HashSet<Proposition>());
		mList.add(new HashSet<Proposition>());
		mList.add(new HashSet<Proposition>());
		mList.add(new HashSet<Proposition>());
		mList.add(new HashSet<Proposition>());
		IncompleteActionInstance noopAction = new IncompleteActionInstance(
				factHeader.getName(), mList, problem.getActions().size()+factHeader.getPropositionIndex()+1);

		ActionHeader noop = new ActionHeader(noopAction, factHeader.getName(), noopAction.getIndex(), true, preconditions,
				addEffects, null, null, null, null);

		//this.copyActionHeader(noop);
		globalActionHeaders.put(noop.getIndex(), noop);

		return noop;
	}


	/**
	 * Returns the ActionHeader at the specified index.
	 * 
	 * @param index
	 * @return
	 */
	public ActionHeader get(int index) {
		return globalActionHeaders.get(index);
	}

	public ActionHeader getNoopForFact(FactHeader factHeader) {
		int index = problem.getActions().size()+factHeader.getPropositionIndex()+1;
		ActionHeader header = globalActionHeaders.get(index); 
		return header;
	}

	public FactSpike getFactSpike() {
		return factSpike;
	}

	public ActionSpike getActionSpike() {
		return actionSpike;
	}

	public Problem getProblem() {
		return this.problem;
	}


	protected IncompleteActionInstance actionHeaderToAction(ActionHeader actionHeader) {
		return actionHeader.getAction();
	}


	/**
	 * Finds any applicable action that has not been added to the action spike
	 * and adds it.
	 */
	protected void addApplicableActionsAndFacts() {

		List<ActionInstance> newActions = new ArrayList<ActionInstance>();
		for (ActionInstance action : remainingActions) {
			ActionHeader header = globalActionHeaders.get(action);

			if ((header != null && factSpike.isActionApplicable(header)) ||
					(header == null && factSpike.isActionApplicable(action))
			) {
				// Add the applicable action to the newActions list to be
				// removed from remainingActions.
				newActions.add(action);
			}
		}

		// Remove all the actions from remaining that were created.
		for (ActionInstance action : newActions) {
			logger.debug("Adding Action: " + action.getName());
			// Add the applicable action to the actionSpike
			actionSpike.addAction(action, false);
			remainingActions.remove(action);
		}
	}

	/**
	 * Adds a level to the spikes. Returns true if any new facts are added to
	 * the fact spike. If false, no facts were added and therefore no new action
	 * will be added in the future, so it will forever return false and will no
	 * longer add more levels.
	 */
	private boolean addLevel() {

		//System.out.println("======Level " + this.getFactSpike().getCurrentRank() + "=======");

		// Get the number of facts before adding the level
		int factCount = this.getFactSpike().size();

		// Add all new propositions' noop actions
		List<FactHeader> newFactHeaders = this.getFactSpike()
		.getNewFactsByRank(this.getFactSpike().getCurrentRank() - 1);
		for (FactHeader factHeader : newFactHeaders) {
			this.getActionSpike().addNoopAction(factHeader);
		}

		// Add all new applicable actions (doing this adds all new add/possAdd
		// effects)
		addApplicableActionsAndFacts();

		// Set the risks of the actions
		//		setActionRisks();

		// Increment ranks of factSpike and actionSpike
		factSpike.incrementRank();
		actionSpike.incrementRank();

		// Set the risks of the new propositions

		setActionLevelInfo();
		setPropositionLevelInfo();

		// If the number of facts before this level is the same as the current
		// number of facts, no facts were added and therefore no new action will
		// be added.
		if (factCount == factSpike.size()) {
			return false;
		}
		return true;
	}


	protected void setPropositionLevelInfo() {
		// TODO Auto-generated method stub

	}

	protected void setActionLevelInfo() {
		// TODO Auto-generated method stub

	}

	public double getRelaxedPlanLength() {

		if(!containsSolution()){
			return Double.MAX_VALUE;
		}
		
		
		int level = this.getFactSpike().getCurrentRank()-1;
		Set<Proposition> goalAsPropositions = this.getProblem().getGoalAction().getPreconditions();
		Set<FactHeader> goal = new HashSet<FactHeader>();

		//System.out.println("Extracting relaxed plan from level: " + level);


		// Convert the goal from propositions to factHeaders
		for(Proposition proposition : goalAsPropositions) {
			//goal.add(factSpike.get(proposition.getName()));
			FactHeader header = globalFactHeaders.get(proposition.getIndex());
			if(header != null){
			goal.add(header);
			}
			}

		if(goal.size() == 0){
			return Double.MAX_VALUE;
		}
		
		// Get the relaxed plan as a parallel plan
		List<Set<ActionHeader>> parallelPlan = new ArrayList<Set<ActionHeader>>();
		for(int i = 0; i < level; i++) {
			parallelPlan.add(new HashSet<ActionHeader>());
		}
		parallelPlan = solutionExtraction(goal, level, parallelPlan);

		// Testing only - output the parallel plan
		//		System.out.println("\nOutputting parallel plan");

		// Convert it from a parallel ActionHeader plan to a sequence of Actions
		List<IncompleteActionInstance> plan = new ArrayList<IncompleteActionInstance>();
		for(int l = 0; l < parallelPlan.size(); l++) {
			//		for (Set<ActionHeader> parallelActions : parallelPlan) {
			//			System.out.print("rank " + l + " ");
			for (ActionHeader actionHeader : parallelPlan.get(l)) {
				if(!actionHeader.isNoop()) {
					IncompleteActionInstance action = actionHeaderToAction(actionHeader);
					//					System.out.print(action.getName() + " ");
					plan.add(action);
				}
			}
			//			System.out.println();
		}


	//	System.out.println(plan.size());

		return plan.size();

	}

	private List<Set<ActionHeader>> solutionExtraction(Set<FactHeader> goal, int level, List<Set<ActionHeader>> parallelPlan) {
		if(level == 0) {
			//			Collections.reverse(parallelPlan);
			return parallelPlan;
		}

		//System.out.println("extract from: " + level);

		Set<FactHeader> subGoalsToBeAdded = new HashSet<FactHeader>();

		for (FactHeader subGoal : goal) {

			FactLevelInfo fli = factSpike.getFactLevelInfo(level, subGoal.getPropositionIndex());

			if(level == 1){
				for(ActionHeader act : fli.getAllSupporters()){
					if(!act.isNoop()){
						helpfulActions.add(act.getAction());
					}
				}
				for(ActionHeader act : fli.getChosenSupporters()){
					if(!act.isNoop()){
						preferredActions.add(act.getAction());
					}
				}
				
			}

			for(ActionHeader actionHeader : fli.getChosenSupporters()){
				// Add the actions to the plan
				parallelPlan.get(level-1).add(actionHeader);

				// Add the preconditions of the actions to the goal
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(level-1, actionHeader.getIndex());
				subGoalsToBeAdded.addAll(ali.getSupportingFacts());
				//System.out.println("# crisks: " + ali.getCriticalRisks().size());
			}
		}

		return solutionExtraction(subGoalsToBeAdded, level - 1, parallelPlan);
	}



	public Set<ActionInstance> getHelpfulActions() {
		return helpfulActions;
	}

	public Set<ActionInstance> getPreferredActions() {
//		System.out.println("getPreferredActions()");
		return preferredActions;
	}
	
	public boolean containsSolution() {

		// Iterate through each subgoal
		for (Proposition subGoal : this.getProblem().getGoalAction()
				.getPreconditions()) {
			FactHeader subGoalAsFact = factSpike.get(subGoal.getName());
			if (subGoalAsFact == null) {
				return false;
			}
		}

		return true;
	}

	//	public List<Action> getRelaxedPlan() {
	//		// TODO Auto-generated method stub
	//		return null;
	//	}

	
	public List<ActionInstance> getRelevantActions() {
		int level = this.getFactSpike().getCurrentRank()-1;
		Set<Proposition> goalAsPropositions = this.getProblem().getGoalAction().getPreconditions();
		Set<FactHeader> goal = new HashSet<FactHeader>();

		// Convert the goal from propositions to factHeaders
		for(Proposition proposition : goalAsPropositions) {
			FactHeader header = globalFactHeaders.get(proposition.getIndex());
			if(header != null){
				goal.add(header); 
				logger.debug("Goal Reachable: " + header.getName());
			}
		}

		// Get the relaxed plan as a parallel plan
		List<Set<ActionHeader>> parallelPlan = new ArrayList<Set<ActionHeader>>();
		for(int i = 0; i <= level; i++) {
			parallelPlan.add(new HashSet<ActionHeader>());
		}
		parallelPlan = relevantActionExtraction(goal, level, parallelPlan);

		// Testing only - output the parallel plan
		//		System.out.println("\nOutputting parallel plan");

		// Convert it from a parallel ActionHeader plan to a sequence of Actions

		Set<IncompleteActionInstance> plan = new HashSet<IncompleteActionInstance>();
		for(int l = 0; l < parallelPlan.size(); l++) {
			//		for (Set<ActionHeader> parallelActions : parallelPlan) {
			//			System.out.print("rank " + l + " ");
			for (ActionHeader actionHeader : parallelPlan.get(l)) {
				if(!actionHeader.isNoop()) {
					IncompleteActionInstance action = actionHeader.getAction();//actionHeaderToAction(actionHeader);
					//					System.out.print(action.getName() + " ");
					plan.add(action);
				}
			}
			//			System.out.println();
		}

		List<ActionInstance> actList = new ArrayList<ActionInstance>();
		actList.addAll(plan);
		return actList;

	}

	private List<Set<ActionHeader>> relevantActionExtraction(Set<FactHeader> goal, int level, List<Set<ActionHeader>> parallelPlan) {
		if(level == 0) {
			//			Collections.reverse(parallelPlan);
			return parallelPlan;
		}

		//System.out.println("extract from: " + level);

		logger.debug("=======Time: " + level + "========");
		
		Set<FactHeader> subGoalsToBeAdded = new HashSet<FactHeader>();

		for (FactHeader subGoal : goal) {

			FactLevelInfo fli = factSpike.getFactLevelInfo(level, subGoal.getPropositionIndex());

			logger.debug("Subgoal: " + fli.getFact().getName());

			for(ActionHeader actionHeader : fli.getAllSupporters()){
				// Add the actions to the plan
				parallelPlan.get(level).add(actionHeader);

				logger.debug("Supported By: " + actionHeader.getName());

				
				// Add the preconditions of the actions to the goal
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(level-1, actionHeader.getIndex());
				subGoalsToBeAdded.addAll(ali.getSupportingFacts());
				//System.out.println("# crisks: " + ali.getCriticalRisks().size());
			}
		}

		return relevantActionExtraction(subGoalsToBeAdded, level - 1, parallelPlan);
	}

	public void setSolverOptions(SolverOptions solverOptions) {
		this.solverOptions = solverOptions;
	}

	public SolverOptions getSolverOptions() {
		return solverOptions;
	}


	
}
