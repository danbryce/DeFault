package edu.usu.cs.pddl.domain.incomplete;

/*
 * A risk is a potential source of execution failure due to incompleteness of the action model.
 */
public class Risk {
	// Risks in an action are the same risk in every instance of an action so we
	// remove their uniqueness
	// // This is a risk-specific id
	// private static int nextID = 0;
	// public static int getNextID() {
	// int nextid = nextID;
	// nextID++;
	// return nextid;
	// }
	
	public static final String PRECOPEN = "PrecOpen";
	public static final String POSSCLOB = "PossClob";
	public static final String UNLISTEDEFFECT = "UnlistedEffect";

	private final String riskName;
	private final String action;
	private final String proposition;
	int hash;
	boolean hashInitialized = false;

	// private int id;

	public Risk(String riskName, String action, String proposition) {
		this.riskName = riskName;
		this.action = action;
		this.proposition = proposition;
		// this.id = getNextID();
	}

	public String getRiskName() {
		return riskName;
	}

	public String getActionName() {
		return action;
	}

	public String getPropositionName() {
		return proposition;
	}

	// public int getId() {
	// return id;
	// }
	// public void setId(int id) {
	// this.id = id;
	// }

	@Override
	public String toString() {
		return riskName + " " + action + " " + proposition.toString();
	}

	@Override
	public int hashCode() {
		if (!hashInitialized) {
			hash = toString().hashCode();
			hashInitialized = true;
		}
		return hash;
	}

	@Override
	public boolean equals(Object obj) {

		if (!(obj instanceof Risk)) {
			return false;
		}

		Risk otherRisk = (Risk) obj;

		if (!this.getRiskName().equals(otherRisk.getRiskName())) {
			return false;
		}
		if (!this.getActionName().equals(otherRisk.getActionName())) {
			return false;
		}
		if (!this.getPropositionName().equals(otherRisk.getPropositionName())) {
			return false;
		}

		return true;
	}
}
