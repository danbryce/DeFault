package edu.usu.cs.pddl.domain.incomplete;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.goalseffects.ConjunctionEffect;
import edu.usu.cs.pddl.goalseffects.PredicateEffect;

/**
 * Set of preconditions, add effects, delete effects, possible preconditions,
 * possible add effects, and possible delete effects. They transition the world
 * from one state to another.
 */
public class IncompleteActionInstance {
	private final String name;
	private final Set<Proposition> preconditions;
	private final Set<Proposition> addEffects;
	private final Set<Proposition> deleteEffects;
	private final Set<Proposition> possiblePreconditions;
	private final Set<Proposition> possibleAddEffects;
	private final Set<Proposition> possibleDeleteEffects;
	private int hash;
	private int index;
	public int getIndex() {
		return index;
	}

	private boolean hashInitialized = false;

	private static int numActions = 0;
	
	public IncompleteActionInstance(String name, Set<Proposition> preconditions,
			Set<Proposition> addEffects, Set<Proposition> deleteEffects,
			Set<Proposition> possiblePreconditions,
			Set<Proposition> possiblePositiveEffects,
			Set<Proposition> possibleNegativeEffects) {
		this.name = name;
		this.index = numActions++;
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
	public IncompleteActionInstance(ActionInstance actionInstance) {
		String name = actionInstance.getDefinition().getName();
		
		// Add the argument instances to name
		for(FormalArgument arg : actionInstance.getDefinition().getArguments()) {
			name += " " + actionInstance.getArgMapping().get(arg);
		}
		
		this.name = name;
		this.index = numActions++;
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
	public IncompleteActionInstance(String name, List<Set<Proposition>> actionProps) {
		
		this(name, actionProps.get(0), actionProps.get(1), actionProps.get(2),
				actionProps.get(3), actionProps.get(4), actionProps.get(5));
		
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
		String str = "Action: " + getName();
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
}
