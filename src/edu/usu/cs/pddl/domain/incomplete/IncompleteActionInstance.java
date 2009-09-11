package edu.usu.cs.pddl.domain.incomplete;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.ConsistentLiteralSet;
import edu.usu.cs.pddl.domain.DefaultActionInstance;
import edu.usu.cs.pddl.domain.DefaultGoalDesc;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.GoalDesc;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.PDDLObject;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.PredicateInstance;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.goalseffects.ConjunctionEffect;
import edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc;
import edu.usu.cs.pddl.goalseffects.NotGoalDesc;
import edu.usu.cs.pddl.goalseffects.PredicateEffect;

/**
 * Set of preconditions, add effects, delete effects, possible preconditions,
 * possible add effects, and possible delete effects. They transition the world
 * from one state to another.
 */
public class IncompleteActionInstance  implements ActionInstance{
	private final String name;
	private final Set<Proposition> preconditions;
	private final Set<Proposition> addEffects;
	private final Set<Proposition> deleteEffects;
	private final Set<Proposition> possiblePreconditions;
	private final Set<Proposition> possibleAddEffects;
	private final Set<Proposition> possibleDeleteEffects;
	private int hash;
	private int index;

	protected  ActionDef definition;
	protected Map<FormalArgument, PDDLObject> argMapping = new HashMap<FormalArgument, PDDLObject>();



	public int getIndex() {
		return index;
	}

	private boolean hashInitialized = false;

//	private static int numActions = 0;

	public IncompleteActionInstance(String name, Set<Proposition> preconditions,
			Set<Proposition> addEffects, Set<Proposition> deleteEffects,
			Set<Proposition> possiblePreconditions,
			Set<Proposition> possiblePositiveEffects,
			Set<Proposition> possibleNegativeEffects,
			int index) {
		this.name = name;
		this.index = index; //numActions++;
		this.preconditions = preconditions == null ? new HashSet<Proposition>()
				: preconditions;
		this.addEffects = addEffects == null ? new HashSet<Proposition>()
				: addEffects;
		this.deleteEffects = deleteEffects == null ? new HashSet<Proposition>()
				: deleteEffects;
		this.possiblePreconditions = possiblePreconditions == null ? new HashSet<Proposition>()
				: possiblePreconditions;
		this.possibleAddEffects = possiblePositiveEffects == null ? new HashSet<Proposition>()
				: possiblePositiveEffects;
		this.possibleDeleteEffects = possibleNegativeEffects == null ? new HashSet<Proposition>()
				: possibleNegativeEffects;
	}

	/**
	 * Imports a pddl.domain.ActionInstance object and converts it to an Action
	 * object.
	 * 
	 * @param actionInstance
	 */
	public IncompleteActionInstance(DefaultActionInstance actionInstance) {
		String name = actionInstance.getDefinition().getName();

		// Add the argument instances to name
		for(FormalArgument arg : actionInstance.getDefinition().getArguments()) {
			name += " " + actionInstance.getArgMapping().get(arg);
		}

		this.argMapping = actionInstance.getArgMapping();
		this.definition = actionInstance.getDefinition();

		this.name = name;
		this.index = actionInstance.getIndex();//numActions++;
		// Add the absolute preconditions
		this.preconditions = new HashSet<Proposition>();
		Set<LiteralInstance> preconditions = new HashSet<LiteralInstance>();
		actionInstance.getPreCondition().getLiteralsUsed(preconditions);
		for (LiteralInstance precondition : preconditions) {
			this.preconditions.add(new Proposition(precondition));
		}

		// Add the absolute adds and deletes
		this.addEffects = new HashSet<Proposition>();
		this.deleteEffects = new HashSet<Proposition>();

		if (actionInstance.getEffect() instanceof ConjunctionEffect) {
			ConjunctionEffect effects = (ConjunctionEffect) actionInstance
			.getEffect();
			List<PredicateEffect> subEffects = effects
			.getSubEffectsAsPredicateEffects();
			for (PredicateEffect effect : subEffects) {
				if (effect.isTrue()) {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						this.addEffects.add(new Proposition(result));
					}
				} else {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						this.deleteEffects.add(new Proposition(result));
					}
				}
			}
		}

		// Add the possible preconditions
		this.possiblePreconditions = new HashSet<Proposition>();
		Set<LiteralInstance> possiblePreconditions = new HashSet<LiteralInstance>();
		actionInstance.getPossPreCondition().getLiteralsUsed(
				possiblePreconditions);
		for (LiteralInstance precondition : possiblePreconditions) {
			this.possiblePreconditions.add(new Proposition(precondition));
		}

		// Add the possible adds and deletes
		// If posseffects aren't a conjunctionEffect, just continue
		this.possibleAddEffects = new HashSet<Proposition>();
		this.possibleDeleteEffects = new HashSet<Proposition>();
		if (actionInstance.getPossEffect() instanceof ConjunctionEffect) {
			ConjunctionEffect possibleEffects = (ConjunctionEffect) actionInstance
			.getPossEffect();
			List<PredicateEffect> possibleSubEffects = possibleEffects
			.getSubEffectsAsPredicateEffects();
			for (PredicateEffect effect : possibleSubEffects) {
				if (effect.isTrue()) {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						this.possibleAddEffects.add(new Proposition(result));
					}
				} else {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						this.possibleDeleteEffects.add(new Proposition(result));
					}
				}
			}
		}
	}

	/**
	 * List contains action propositions in the following order: absolute
	 * preconditions absolute add effects absolute delete effects possible
	 * preconditions possible add effects possible delete effects
	 */
	public IncompleteActionInstance(String name, List<Set<Proposition>> actionProps, int index) {

		this(name, actionProps.get(0), actionProps.get(1), actionProps.get(2),
				actionProps.get(3), actionProps.get(4), actionProps.get(5), index);

	}

	public IncompleteActionInstance(ActionDef action,
			List<PDDLObject> actualArgs, Set<PDDLObject> allObjects, Domain domain, int index, ConsistentLiteralSet startState) throws Exception {

		StringBuilder name = new StringBuilder();
		name.append(action.getName());
		for(PDDLObject arg : actualArgs) {
			name.append(" ").append(arg.getName());
		}
		this.name = name.toString();

		this.argMapping  = new HashMap<FormalArgument, PDDLObject>();
		for(int i = 0; i < actualArgs.size(); i++){
			argMapping.put(action.getArguments().get(i), actualArgs.get(i));
		}
		this.definition = action;
		this.index = index;//numActions++;

		this.preconditions = new HashSet<Proposition>();
		Set<LiteralInstance> preconditions = new HashSet<LiteralInstance>();
		GoalDesc actPrecondition = action.getPreCondition().instantiate(argMapping, allObjects);
		//actPrecondition.getLiteralsUsed(preconditions);
		List<GoalDesc> precondList = new ArrayList<GoalDesc>();
		if(actPrecondition instanceof ConjunctionGoalDesc){
			precondList.addAll(((ConjunctionGoalDesc)actPrecondition).getSubGoals());
		}
		else if (actPrecondition != null){
			precondList.add(actPrecondition);
		}
		
		
//		for (LiteralInstance precondition : preconditions) {
		for(GoalDesc g : precondList){
			if(g instanceof PredicateInstance){
				PredicateInstance pi = (PredicateInstance)g;
				if(domain.isDynamic((PredicateDef) pi.getDefinition())){
					Proposition p = Proposition.getPropositionFromIndex(pi);		
					if(p != null){
						this.preconditions.add(p);
					}
				}
				else { //static
					if(g.notSatisfiedBy(argMapping, startState, allObjects)){
						throw new Exception("Static precondition not satisfied by initial state");
					}
				}
				
			}
			else if(g instanceof NotGoalDesc){
				NotGoalDesc ng = (NotGoalDesc)g;
				PredicateInstance pi = (PredicateInstance)ng.getNegatedGoal();
				if(domain.isDynamic((PredicateDef) pi.getDefinition())){
					Proposition p = Proposition.getPropositionFromIndex(pi);		
					if(p != null){
						throw new Exception("Got negative precondition");
					}
				}
				else { //static
					if(g.notSatisfiedBy(argMapping, startState, allObjects)){
						throw new Exception("Static negative precondition not satisfied by initial state");
					}
				}
				
			}
			
		}

		// Add the absolute adds and deletes
		this.addEffects = new HashSet<Proposition>();
		this.deleteEffects = new HashSet<Proposition>();

		if (action.getEffect() instanceof ConjunctionEffect) {
			ConjunctionEffect effects = (ConjunctionEffect) action.getEffect().instantiate(this.argMapping, allObjects);
			List<PredicateEffect> subEffects = effects.getSubEffectsAsPredicateEffects();
			for (PredicateEffect effect : subEffects) {
				if (effect.isTrue()) {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						this.addEffects.add(new Proposition(result));						
					}
				} else {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						this.deleteEffects.add(new Proposition(result));

					}
				}
			}
		}

		// Add the possible preconditions

		this.possiblePreconditions = new HashSet<Proposition>();
		Set<LiteralInstance> possiblePreconditions = new HashSet<LiteralInstance>();
		GoalDesc actPossPrecondition = action.getPossPreCondition().instantiate(argMapping, allObjects);
		if(actPossPrecondition != null){
			actPossPrecondition.getLiteralsUsed(possiblePreconditions);
			
			actPossPrecondition.getLiteralsUsed(
					possiblePreconditions);
			for (LiteralInstance precondition : possiblePreconditions) {
				Proposition p = Proposition.getPropositionFromIndex(precondition);						
				this.possiblePreconditions.add(p);
			}
		}

		// Add the possible adds and deletes
		// If posseffects aren't a conjunctionEffect, just continue
		this.possibleAddEffects = new HashSet<Proposition>();
		this.possibleDeleteEffects = new HashSet<Proposition>();
		if (action.getPossEffect() instanceof ConjunctionEffect) {
			ConjunctionEffect possibleEffects  = (ConjunctionEffect) action.getPossEffect().instantiate(this.argMapping, allObjects);
			List<PredicateEffect> possibleSubEffects = possibleEffects
			.getSubEffectsAsPredicateEffects();
			for (PredicateEffect effect : possibleSubEffects) {
				if (effect.isTrue()) {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						Proposition p = Proposition.getPropositionFromIndex(result);	
						if(p != null){
							this.possibleAddEffects.add(p);
						}
					}
				} else {
					Set<LiteralInstance> results = new HashSet<LiteralInstance>();
					effect.getLiteralsUsed(results);
					for (LiteralInstance result : results) {
						Proposition p = Proposition.getPropositionFromIndex(result);						
						this.possibleDeleteEffects.add(p);
					}
				}
			}
		}





	}

	public String getName() {
		return name;
	}

	public Set<Proposition> getPreconditions() {
		return preconditions;
	}

	public Set<Proposition> getAddEffects() {
		return addEffects;
	}

	public Set<Proposition> getDeleteEffects() {
		return deleteEffects;
	}

	public Set<Proposition> getPossiblePreconditions() {
		return possiblePreconditions;
	}

	public Set<Proposition> getPossibleAddEffects() {
		return possibleAddEffects;
	}

	public Set<Proposition> getPossibleDeleteEffects() {
		return possibleDeleteEffects;
	}

	@Override
	public String toString() {
		String str = "Action: " + index + " " + getName();
		//
		//		if (getPreconditions().size() > 0) {
		//			str += "\n\tAbsolute Preconditions:";
		//			for (Proposition prec : getPreconditions()) {
		//				str += " " + prec.getName();
		//			}
		//		}
		//
		//		if (getAddEffects().size() > 0) {
		//			str += "\n\tAbsolute Add Effects:";
		//			for (Proposition addEff : getAddEffects()) {
		//				str += " " + addEff.getName();
		//			}
		//		}
		//
		//		if (getDeleteEffects().size() > 0) {
		//			str += "\n\tAbsolute Delete Effects:";
		//			for (Proposition deleteEff : getDeleteEffects()) {
		//				str += " " + deleteEff.getName();
		//			}
		//		}
		//
		//		if (getPossiblePreconditions().size() > 0) {
		//			str += "\n\tPossible Preconditions:";
		//			for (Proposition possPrec : getPossiblePreconditions()) {
		//				str += " " + possPrec.getName();
		//			}
		//		}
		//
		//		if (getPossibleAddEffects().size() > 0) {
		//			str += "\n\tPossible Add Effects:";
		//			for (Proposition possAddEff : getPossibleAddEffects()) {
		//				str += " " + possAddEff.getName();
		//			}
		//		}
		//
		//		if (getPossibleDeleteEffects().size() > 0) {
		//			str += "\n\tPossible Delete Effects:";
		//			for (Proposition possDeleteEff : getPossibleDeleteEffects()) {
		//				str += " " + possDeleteEff.getName();
		//			}
		//		}

		//str += "\n";
		return str;
	}

	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof IncompleteActionInstance)) {
			return false;
		}

		IncompleteActionInstance otherAction = (IncompleteActionInstance) obj;

		if(!this.getName().equals(otherAction.getName())) {
			return false;
		}
		if (!this.getPreconditions().equals(otherAction.getPreconditions())) {
			return false;
		}
		if (!this.getAddEffects().equals(otherAction.getAddEffects())) {
			return false;
		}
		if (!this.getDeleteEffects().equals(otherAction.getDeleteEffects())) {
			return false;
		}
		if (!this.getPossiblePreconditions().equals(
				otherAction.getPossiblePreconditions())) {
			return false;
		}
		if (!this.getPossibleAddEffects().equals(
				otherAction.getPossibleAddEffects())) {
			return false;
		}
		if (!this.getPossibleDeleteEffects().equals(
				otherAction.getPossibleDeleteEffects())) {
			return false;
		}

		return true;
	}

	@Override
	public int hashCode() {
		if (!hashInitialized) {
			String str = getName();

			// Need to sort out all the sets
			str += " precs";
			List<Proposition> precs = new ArrayList<Proposition>(this
					.getPreconditions());
			Collections.sort(precs, new Comparator<Proposition>() {
				public int compare(Proposition first, Proposition second) {
					return first.getName().compareTo(second.getName());
				}
			});
			for (Proposition prop : precs) {
				str += " " + prop.toString();
			}

			str += " adds";
			List<Proposition> adds = new ArrayList<Proposition>(this
					.getAddEffects());
			Collections.sort(adds, new Comparator<Proposition>() {
				public int compare(Proposition first, Proposition second) {
					return first.getName().compareTo(second.getName());
				}
			});
			for (Proposition prop : adds) {
				str += " " + prop.toString();
			}

			str += " deletes";
			List<Proposition> deletes = new ArrayList<Proposition>(this
					.getDeleteEffects());
			Collections.sort(deletes, new Comparator<Proposition>() {
				public int compare(Proposition first, Proposition second) {
					return first.getName().compareTo(second.getName());
				}
			});
			for (Proposition prop : deletes) {
				str += " " + prop.toString();
			}

			str += " possPrecs";
			List<Proposition> possPrecs = new ArrayList<Proposition>(this
					.getPreconditions());
			Collections.sort(possPrecs, new Comparator<Proposition>() {
				public int compare(Proposition first, Proposition second) {
					return first.getName().compareTo(second.getName());
				}
			});
			for (Proposition prop : possPrecs) {
				str += " " + prop.toString();
			}

			str += " possAdds";
			List<Proposition> possAdds = new ArrayList<Proposition>(this
					.getAddEffects());
			Collections.sort(possAdds, new Comparator<Proposition>() {
				public int compare(Proposition first, Proposition second) {
					return first.getName().compareTo(second.getName());
				}
			});
			for (Proposition prop : possAdds) {
				str += " " + prop.toString();
			}

			str += " possDeletes";
			List<Proposition> possDeletes = new ArrayList<Proposition>(this
					.getDeleteEffects());
			Collections.sort(possDeletes, new Comparator<Proposition>() {
				public int compare(Proposition first, Proposition second) {
					return first.getName().compareTo(second.getName());
				}
			});
			for (Proposition prop : possDeletes) {
				str += " " + prop.toString();
			}

			hash = str.hashCode();
			hashInitialized = true;
		}

		return hash;
	}

	public double getCost() {

		return 1;
	}

	@Override
	public Map<FormalArgument, PDDLObject> getArgMapping() {
		// TODO Auto-generated method stub
		return argMapping;
	}

	@Override
	public ActionDef getDefinition() {
		// TODO Auto-generated method stub
		return definition;
	}
}
