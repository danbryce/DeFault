package edu.usu.cs.pddl.domain.incomplete;

import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import edu.usu.cs.search.ConditionalAction;
import edu.usu.cs.search.incomplete.FaultLiteral;

/*
 * A risk is a potential source of execution failure due to incompleteness of the action model.
 */
public class Fault implements Comparable, ConditionalAction {
	// Risks in an action are the same risk in every instance of an action so we
	// remove their uniqueness
	// // This is a risk-specific id
	// private static int nextID = 0;
	// public static int getNextID() {
	// int nextid = nextID;
	// nextID++;
	// return nextid;
	// }
	
	public static final String POSSPRE = "PossPre";
	public static final String POSSDEL = "PossDel";
	public static final String POSSADD = "PossAdd";

	private static Map<String, Fault> possiblePreconditions = new HashMap<String, Fault>();
	private static Map<String, Fault> possibleDeletes = new HashMap<String, Fault>();
	private static Map<String, Fault> possibleAdds = new HashMap<String, Fault>();
	private static Map<Integer, String> faultIndexMap = new HashMap<Integer, String>();
	private static Set<Fault> faults = new HashSet<Fault>();
	private static Set<FaultLiteral> trueFaultLiterals = new HashSet<FaultLiteral>();
	private static Set<FaultLiteral> falseFaultLiterals = new HashSet<FaultLiteral>();
	private static Map<Fault, FaultLiteral> trueFaultToFaultLiteral = new HashMap<Fault, FaultLiteral>();
	private static Map<Fault, FaultLiteral> falseFaultToFaultLiteral = new HashMap<Fault, FaultLiteral>();

	//private static Map<Risk, Integer> riskBddMap = new HashMap<Risk, Integer>();
	
	private final String riskName;
	private final String action;
	private final String proposition;
	int hash;
	boolean hashInitialized = false;
	
	public static void resetStaticHashMaps()
	{
		possiblePreconditions = new HashMap<String, Fault>();
		possibleDeletes = new HashMap<String, Fault>();
		possibleAdds = new HashMap<String, Fault>();
		faultIndexMap = new HashMap<Integer, String>();
		faults = new HashSet<Fault>();
	}
	
	// private int id;

	public Fault(String riskName, String action, String proposition) {
		this.riskName = riskName;
		this.action = action;
		this.proposition = proposition;
//		faults.add(this);

		
		
		// this.id = getNextID();
	}
	public static Set<Fault> getFaults(){
		return faults;
	}

	
	public static Fault getRiskFromIndex(String name, String action, String proposition){
		Map<String, Fault> index = null;
		if(name.equals(POSSPRE)){
			index = possiblePreconditions;
		}
		else if(name.equals(POSSDEL)){
			index = possibleDeletes;
		}
		else if(name.equals(POSSADD)){
			index = possibleAdds;
		}
		StringBuilder builder = new StringBuilder();
		builder.append(action).append(" ").append(proposition);
		String s = builder.toString();
		Fault risk = index.get(s);
		if(risk == null){
			risk = new Fault(name, action, proposition);
			index.put(s, risk);
			faultIndexMap.put(faultIndexMap.size(), risk.getRiskName());
			faults.add(risk);
			FaultLiteral tl = new FaultLiteral(risk, true);
			trueFaultLiterals.add(tl);
			trueFaultToFaultLiteral.put(risk, tl);
			FaultLiteral fl = new FaultLiteral(risk, false);
			falseFaultLiterals.add(fl);
			falseFaultToFaultLiteral.put(risk, fl);
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

		if (!(obj instanceof Fault)) {
			return false;
		}

		Fault otherRisk = (Fault) obj;

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
	
	public static int getRiskHash(Set<Fault> risks) {
		BitSet bitSet = new BitSet(32);
		
		int size = Math.min(faultIndexMap.size(), 32);
		
		for(int i = 0; i < size; i++) {
			if(risks.contains(faultIndexMap.get(i))) {
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

	@Override
	public int compareTo(Object o) {
		Fault r = (Fault)o;
		if(this.hashCode() < r.hashCode())
			return -1;
		else if (this.hashCode() > r.hashCode())
			return 1;
		else
			return 0;
	}

	public static FaultLiteral getFaultLiteral(
			Fault r, boolean b) {
		if(b) return trueFaultToFaultLiteral.get(r);
		else  return falseFaultToFaultLiteral.get(r);
	}
}
