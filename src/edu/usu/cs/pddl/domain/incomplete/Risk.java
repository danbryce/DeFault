package edu.usu.cs.pddl.domain.incomplete;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

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
	private static Map<Integer, String> riskIndexMap = new HashMap<Integer, String>();
	
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
			riskIndexMap.put(riskIndexMap.size(), risk.getRiskName());
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
	
	public static int getRiskHash(Set<Risk> risks) {
		BitSet bitSet = new BitSet(32);
		
		int size = Math.min(riskIndexMap.size(), 32);
		
		for(int i = 0; i < size; i++) {
			if(risks.contains(riskIndexMap.get(i))) {
				bitSet.set(i);
			}
		}
		
		return bitSetToInt(bitSet);
	}
	
	private static int bitSetToInt(BitSet bitSet) {
	    int temp = 0;

	    for (int i = 0; i < 32; i++) {
	    	if (bitSet.get(i)) {
	    		temp |= 1 << i;
	    	}
	    }

	    return temp;
	}
}
