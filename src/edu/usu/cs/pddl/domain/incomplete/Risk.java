package edu.usu.cs.pddl.domain.incomplete;

import java.util.HashMap;
import java.util.Map;

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

	private static Map<String, Risk> preconditionOpenRisks = new HashMap<String, Risk>();
	private static Map<String, Risk> possibleClobberRisks = new HashMap<String, Risk>();
	private static Map<String, Risk> unlistedEffectRisks = new HashMap<String, Risk>();
	
	
	private final String riskName;
	private final String action;
	private final String proposition;
	int hash;
	boolean hashInitialized = false;

	// private int id;

	private Risk(String riskName, String action, String proposition) {
		this.riskName = riskName;
		this.action = action;
		this.proposition = proposition;
		// this.id = getNextID();
	}

	public static Risk getRiskFromIndex(String name, String action, String proposition){
		Map<String, Risk> index = null;
		if(name.equals(PRECOPEN)){
			index = preconditionOpenRisks;
		}
		else if(name.equals(POSSCLOB)){
			index = possibleClobberRisks;
		}
		else if(name.equals(UNLISTEDEFFECT)){
			index = unlistedEffectRisks;
		}
		StringBuilder builder = new StringBuilder();
		builder.append(action).append(" ").append(proposition);
		String s = builder.toString();
		Risk risk = index.get(s);
		if(risk == null){
			risk = new Risk(name, action, proposition);
			index.put(s, risk);
		}
		return risk;
		
		
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
