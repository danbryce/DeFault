package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;


import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.DefaultActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.planner.PODEFFSolver;
import edu.usu.cs.planner.Solver;
import edu.usu.cs.planner.SolverOptions;
import edu.usu.cs.search.StateNode;

public class AbstractPlanningGraph {
	protected static Logger logger = Logger.getLogger(AbstractPlanningGraph.class.getName());

	protected  Map<Integer, FactHeader> globalFactHeaders = null; 
	protected  Map<Integer, ActionHeader> globalActionHeaders = null;
	//protected Map<String, Risk> globalRiskHeaders = new HashMap<String, Risk>();
	//protected IncompleteProblem problem = null;
	//protected int currentFactIndex = 0;
	protected List<ActionInstance> remainingActions;
	// private final Set<Proposition> remainingPropositions;
	protected FactSpike factSpike = null;
	protected ActionSpike actionSpike = null;
	private static final int MAX_LEVELS = 200;
	protected Problem problem = null;
	protected Domain domain = null;
	protected Set<ActionInstance> helpfulActions = null;
	protected Set<ActionInstance> preferredActions = null;
	protected Solver solver;

	protected Map<Integer, List<ActionInstance>> preconditionActionMap = null;
	protected Map<ActionInstance, Integer> preconditionActionCountMap = null;
	protected Map<ActionInstance, Integer> tempPreconditionActionCountMap = null;
	List<ActionInstance> alwaysActivatedActions;


	//	public  StanPlanningGraph(IncompleteProblem problem1){
	//		globalFactHeaders = new HashMap<Integer, FactHeader>();
	//		globalActionHeaders = new HashMap<Integer, ActionHeader>();
	//		problem = problem1;
	//
	//	}
	public AbstractPlanningGraph(){

	}

	public AbstractPlanningGraph(Problem problem2, Domain domain2, Solver solver2) {
		globalFactHeaders = new HashMap<Integer, FactHeader>();
		globalActionHeaders = new HashMap<Integer, ActionHeader>();
		problem = problem2;
		domain = domain2;
		this.solver = solver2;
		//this.setSolverOptions(solver2);

		this.preconditionActionMap = new HashMap<Integer, List<ActionInstance>>();
		this.preconditionActionCountMap = new HashMap<ActionInstance, Integer>();
		alwaysActivatedActions = new ArrayList<ActionInstance>();

		for(ActionInstance action : problem.getActions()){
			preconditionActionCountMap.put(action, ((IncompleteActionInstance)action).getPreconditions().size());
			for (Proposition prec : ((IncompleteActionInstance)action).getPreconditions()) {
				List<ActionInstance> acts = preconditionActionMap.get(prec.getIndex());
				if(acts == null){
					acts = new ArrayList<ActionInstance>();					
				}
				preconditionActionMap.put(prec.getIndex(), acts);
				acts.add(action);
			}
			if(((IncompleteActionInstance)action).getPreconditions().size()==0){
				alwaysActivatedActions.add(action);
			}
		}
	}


	public void reachFixedPoint(StateNode node) {
		initializePlanningGraph(node);

		boolean addedLevel = true;
		while (!reachedFixedPoint(addedLevel)) {
			logger.debug("************* Current Level = " + factSpike.getCurrentRank() + "**********");

			addedLevel = addLevel();

			//System.out.print(".");

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
		this.remainingActions = new ArrayList<ActionInstance>((solver.getRelevantActions()!=null ? solver.getRelevantActions() : problem.getActions()));
		this.tempPreconditionActionCountMap = null;
		this.tempPreconditionActionCountMap = new HashMap<ActionInstance, Integer>(preconditionActionCountMap);
		this.helpfulActions = new HashSet<ActionInstance>();
		this.preferredActions = new HashSet<ActionInstance>();



	}


	public FactHeader addFact(Proposition proposition) {

		FactHeader factHeader = globalFactHeaders.get(proposition.getIndex());
		if(factHeader == null){
			factHeader = new FactHeader(proposition, proposition.getIndex(), -1);
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

		//		List<ActionInstance> newActions = new ArrayList<ActionInstance>();
		List<ActionInstance> activatedActions = new ArrayList<ActionInstance>(factSpike.getActivatedActions());
		if(factSpike.getCurrentRank()==1){
			activatedActions.addAll(alwaysActivatedActions);
		}
		//		for (ActionInstance action : remainingActions) {
		//			ActionHeader header = globalActionHeaders.get(action);
		//
		//			if ((header != null && factSpike.isActionApplicable(header)) ||
		//					(header == null && factSpike.isActionApplicable(action))
		//			) {
		//				// Add the applicable action to the newActions list to be
		//				// removed from remainingActions.
		//				newActions.add(action);
		//			}
		//		}
		factSpike.clearActivatedActions();

		// Remove all the actions from remaining that were created.
		for (ActionInstance action : activatedActions) {
			logger.debug("Adding Action: " + action.getName());
			// Add the applicable action to the actionSpike
			remainingActions.remove(action);
			actionSpike.addAction(action, false, remainingActions);

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
		Collection<FactHeader> newFactHeaders = this.getFactSpike()
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
			logger.debug("rank " + l + " ");
			for (ActionHeader actionHeader : parallelPlan.get(l)) {
				if(!actionHeader.isNoop()) {
					IncompleteActionInstance action = actionHeaderToAction(actionHeader);
					logger.debug(action.getName() + " ");
					plan.add(action);
				}
			}
			logger.debug("\n");
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
					if(!act.isNoop() ){
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
			FactHeader subGoalAsFact = factSpike.get(subGoal.getIndex());
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


	public Set[] getRelevant() {
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

		Set<Integer> relevantFacts = new HashSet<Integer>();
		parallelPlan = relevantActionExtraction(goal, level, parallelPlan, relevantFacts);

		// Testing only - output the parallel plan
		//		System.out.println("\nOutputting parallel plan");

		// Convert it from a parallel ActionHeader plan to a sequence of Actions

		Set<ActionInstance> plan = new HashSet<ActionInstance>();
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

		//		Set<ActionInstance> actList = new HashSet<ActionInstance>();
		//		actList.addAll(plan);

		//		for(Integer i : relevantFacts){
		//			FactLevelInfo fli = factSpike.getFactLevelInfo(level,i);
		//			for(ActionHeader a :fli.getAllSupporters())
		//				plan.add(a.getAction());
		//		}

		Set[] relevant = new HashSet[2];
		relevant[0] = plan;
		relevant[1] = relevantFacts;

		//		for(ActionInstance a : plan){
		//			System.out.println(a);
		//		}


		return relevant; //471 140 ff //311 136 pi // 311 136 b

	}

	private List<Set<ActionHeader>> relevantActionExtraction(Set<FactHeader> goal, int level, List<Set<ActionHeader>> parallelPlan, Set<Integer> relevantFacts) {
		for(FactHeader f : goal)
			relevantFacts.add(f.getPropositionIndex());
		if(level == 0) {
			//			Collections.reverse(parallelPlan);
			return parallelPlan;
		}

		//System.out.println("extract from: " + level);

		logger.debug("=======Time: " + level + "========");

		Set<FactHeader> subGoalsToBeAdded = new HashSet<FactHeader>();

		for (FactHeader subGoal : goal) {

			FactLevelInfo fli = factSpike.getFactLevelInfo(this.getFactSpike().getCurrentRank()-1, subGoal.getPropositionIndex());

			logger.debug("Subgoal: " + fli.getFact().getName());

			for(ActionHeader actionHeader : fli.getAllSupporters()
					//fli.getChosenSupporters()
			){
				if(actionHeader.isNoop()){
					continue;
				}

				// Add the actions to the plan
				parallelPlan.get(level).add(actionHeader);

				logger.debug("Supported By: " + actionHeader.getName());


				// Add the preconditions of the actions to the goal
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(this.getFactSpike().getCurrentRank()-2, actionHeader.getIndex());
				subGoalsToBeAdded.addAll(ali.getSupportingFacts());
				//if(!(solver instanceof PODEFFSolver)){
					for(int i = ali.getActionHeader().getPossPreconditions().nextSetBit(0);
					i >= 0 && i < globalFactHeaders.size();
					i = ali.getActionHeader().getPossPreconditions().nextSetBit(i+1)){
						subGoalsToBeAdded.add(globalFactHeaders.get(i));
					}
				//}
				//System.out.println("# crisks: " + ali.getCriticalRisks().size());
			}
		}

		return relevantActionExtraction(subGoalsToBeAdded, level - 1, parallelPlan, relevantFacts);
	}


	protected boolean actionLevelInfoChanged(ActionHeader actionHeader){
		if(actionSpike.getCurrentRank() < 2)
			return true;

		boolean changed = false;
		for(FactHeader factHeader : actionHeader.getPreconditionHeaders()){
			FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
			if(fli.isChanged()){
				changed = true;
				break;
			}
		}
		for(Proposition possPre : actionHeader.getAction().getPossiblePreconditions()){
			FactHeader factHeader = factSpike.get(possPre.getIndex());
			if(factHeader == null){	}
			else { 
				//precondition is present,
				FactLevelInfo fli = factSpike.getFactLevelInfo(factSpike.getCurrentRank()-2, factHeader.getPropositionIndex());
				if(fli.isChanged()){
					changed = true;
					break;
				}
			}
		}		
		return changed;
	}	

	protected boolean propositionLevelInfoChanged(FactLevelInfo fli, FactLevelInfo fliPrev){
		boolean changed = false;
		if(factSpike.getCurrentRank() == 2){//prev level was initial level
			changed = true;
		}
		else if(fli.getAllSupporters().size() == fliPrev.getAllSupporters().size()){ 
			//same number of supporters, need to check if supporters changed
			for(ActionHeader a : fli.getAllSupporters()){
				ActionLevelInfo ali = actionSpike.getActionLevelInfo(getActionSpike().getCurrentRank()-1, a.getIndex()); 
				if(ali.isChanged()){
					changed = true;
					break;
				}					
			}
		}
		else{//got new supporters
			changed = true;
		}

		return changed;
	}

	public void removeIrrelevant(Set[] relevant) {
		//0 acts
		//1 facts

		//		List<Integer> toRemove = new ArrayList<Integer>();
		//		for(Integer i : globalFactHeaders.keySet()){
		//			if(!relevant[1].contains(i)){
		//				toRemove.add(i);
		//			}
		//		}
		//		for(Integer i : toRemove){
		//			globalFactHeaders.remove(i);
		//		}
		//		toRemove.clear();
		//		for(Integer i : globalActionHeaders.keySet()){
		//			if(!relevant[0].contains(globalActionHeaders.get(i))){
		//				toRemove.add(i);
		//			}
		//		}
		//		for(Integer i : toRemove){
		//			globalActionHeaders.remove(i);
		//		}

		globalActionHeaders.clear();
		globalFactHeaders.clear();
		preconditionActionMap.clear();
		preconditionActionCountMap.clear();
		alwaysActivatedActions.clear();




		for(ActionInstance action : (Set<ActionInstance>)relevant[0]){
			preconditionActionCountMap.put(action, ((IncompleteActionInstance)action).getPreconditions().size());
			for (Proposition prec : ((IncompleteActionInstance)action).getPreconditions()) {
				List<ActionInstance> acts = preconditionActionMap.get(prec.getIndex());
				if(acts == null){
					acts = new ArrayList<ActionInstance>();					
				}
				preconditionActionMap.put(prec.getIndex(), acts);
				acts.add(action);
			}
			if(((IncompleteActionInstance)action).getPreconditions().size()==0){
				alwaysActivatedActions.add(action);
			}
		}


	}


}
