package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

import edu.usu.cs.pddl.domain.incomplete.Proposition;

/**
 * A fact header is a tuple of six components: 
 * - a name which is the predicate and arguments that comprise the fact itself
 * - an index, i, giving the position of the fact
 * - a bitmask which is a spike vector in which the ith bit is set and all other bits are unset
 * - a reference identifying its achieving no-op
 * - a spike vector comsumers with bits set for all the actions which use this fact as a precondition
 * - a fact level package storing the layer-dependent information about the fact
 * @author student
 *
 */
public class FactHeader {
	private String name;
	private int index;
	private int propositionIndex;
	private BitSet mask = new BitSet();
	private int noop;
	
	private List<ActionHeader> supporterHeaders;
	

//	private Map<Integer, Set<Risk>> criticalRisks = new HashMap<Integer, Set<Risk>>();
//	private Map<Integer, Set<Risk>> possibleRisks = new HashMap<Integer, Set<Risk>>();
	
	public List<ActionHeader> getSupporterHeaders() {
		return supporterHeaders;
	}

	public void setSupporterHeaders(List<ActionHeader> supporterHeaders) {
		this.supporterHeaders = supporterHeaders;
	}

	public FactHeader(Proposition proposition, int propositionIndex, int index, int noop) {
		
		this.setName(proposition.getName());
		this.setIndex(index);
		this.propositionIndex = propositionIndex;
		this.getMask().set(propositionIndex);
		this.setNoop(noop);
		this.supporterHeaders = new ArrayList<ActionHeader>();
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getIndex() {
		return index;
	}

	public int getPropositionIndex() {
		return propositionIndex;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}

	public BitSet getMask() {
		return mask;
	}

	public void setMask(BitSet mask) {
		this.mask = mask;
	}

	public int getNoop() {
		return noop;
	}

	public void setNoop(int noop) {
		this.noop = noop;
	}
	
	private int riskSize = 0;
	public int getRiskSize() {
		return riskSize;
	}
	
//	/**
//	 * Returns the last level of critical risks.
//	 * Same as "factHeader.getCriticalRisks(factHeader.getRiskSize() - 1)"
//	 * @param level
//	 * @return
//	 */
//	public Set<Risk> getLastCriticalRisks() {
//		if(riskSize <= 0) {
//			return new HashSet<Risk>();
//		}
//		return getCriticalRisks(riskSize - 1);
//	}
	
//	public Set<Risk> getCriticalRisks(int level) {
//		Set<Risk> critRisks = this.criticalRisks.get(level);
//		if(critRisks == null) {
//			return new HashSet<Risk>();
//		}
//		return critRisks;
//	}
//	
//	public void setCriticalRisks(int level, Set<Risk> criticalRisks) {
//		riskSize = Math.max(riskSize, level + 1);
//		this.criticalRisks.put(level, criticalRisks);
//	}

//	/**
//	 * Returns the last level of possible risks.
//	 * Same as "factHeader.getPossibleRisks(factHeader.getRiskSize() - 1)"
//	 * @return
//	 */
//	public Set<Risk> getLastPossibleRisks() {
//		if(riskSize <= 0) {
//			return new HashSet<Risk>();
//		}
//		return getPossibleRisks(riskSize - 1);
//	}
	
//	public Set<Risk> getPossibleRisks(int level) {
//		Set<Risk> possRisks = this.possibleRisks.get(level);
//		if(possRisks == null) {
//			return new HashSet<Risk>();
//		}
//		return possRisks;
//	}
//
//	public void setPossibleRisks(int level, Set<Risk> possibleRisks) {
//		riskSize = Math.max(riskSize, level + 1);
//		this.possibleRisks.put(level, possibleRisks);
//	}

	@Override
	public String toString() {
		return getIndex() + " " + getName();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof FactHeader)) {
			return false;
		}
		
		FactHeader otherFactHeader = (FactHeader) obj;
		
		if(this.getIndex() != otherFactHeader.getIndex()) {
			return false;
		}
		if(!this.getName().equals(otherFactHeader.getName())) {
			return false;
		}
		
		return true;
	}
	
	@Override
	public int hashCode() {
		return (getIndex() + " " + getName()).hashCode();
	}

	public void addSupporter(ActionHeader actionHeader) {
		supporterHeaders.add(actionHeader);
	}
}
