package edu.usu.cs.heuristic.stanplangraph;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;

/**
 * An action header is a tuple of eight components:
 * - the name of the action
 * - an index, i, giving the position of the action in the action array
 * - a bit mask which is a spike vector in which the ith bit is set and all other bits are unset
 * - a flag indicating whether the action is a no-op
 * - precs: preconditions of the action
 * - adds: add effects of the action
 * - dels: delete effects of the action
 * - an action level package storing the layer-dependent information about that action.
 * @author student
 *
 */
public class ActionHeader {
	private String name;
	private int index;
	private BitSet mask = new BitSet();
	private boolean noop;
	private BitSet preconditions;
	private BitSet addEffects;
	private BitSet deleteEffects;
	private BitSet possPreconditions;
	private BitSet possAddEffects;
	private BitSet possDeleteEffects;
	private IncompleteActionInstance action;
	
	private List<FactHeader> addHeaders;
//	private Map<Integer,Set<Risk>> criticalRisks = new HashMap<Integer, Set<Risk>>();
//	private Map<Integer,Set<Risk>> possibleRisks = new HashMap<Integer, Set<Risk>>();
	
	
	
	public IncompleteActionInstance getAction() {
		return action;
	}

	public void setAction(IncompleteActionInstance action) {
		this.action = action;
	}

	private List<FactHeader> preconditionHeaders;
	public List<FactHeader> getPreconditionHeaders() {
		return preconditionHeaders;
	}

	public void setPreconditionHeaders(List<FactHeader> preconditionHeaders) {
		this.preconditionHeaders = preconditionHeaders;
	}

	public List<FactHeader> getAddHeaders() {
		return addHeaders;
	}

	public void setAddHeaders(List<FactHeader> addHeaders) {
		this.addHeaders = addHeaders;
	}

	public ActionHeader(
			IncompleteActionInstance action,
			String actionName,
			int index,
			boolean noop,
			BitSet preconditions,
			BitSet addEffects,
			BitSet deleteEffects
			) {
		this(action, actionName, index, noop, preconditions, addEffects, deleteEffects, null, null, null);
	}
	
	public ActionHeader(
			IncompleteActionInstance action,
			String actionName, 
			int index, 
			boolean noop,
			BitSet preconditions,
			BitSet addEffects,
			BitSet deleteEffects,
			BitSet possPreconditions,
			BitSet possAddEffects,
			BitSet possDeleteEffects
			) {
//		System.out.println("Creating header for " + index);
		
		this.action = action;
		this.setName(actionName);
		this.setIndex(index);
		this.getMask().set(index);
		this.setNoop(noop);
		this.setPreconditions(preconditions == null ? new BitSet() : preconditions);
		this.setAddEffects(addEffects == null ? new BitSet() : addEffects);
		this.setDeleteEffects(deleteEffects == null ? new BitSet() : deleteEffects);
		this.setPossPreconditions(possPreconditions == null ? new BitSet() : possPreconditions);
		this.setPossAddEffects(possAddEffects == null ? new BitSet() : possAddEffects);
		this.setPossDeleteEffects(possDeleteEffects == null ? new BitSet() : possDeleteEffects);
		this.preconditionHeaders = new ArrayList<FactHeader>();
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

	public void setIndex(int index) {
		this.index = index;
	}

	public BitSet getMask() {
		return mask;
	}

	public void setMask(BitSet mask) {
		this.mask = mask;
	}

	public boolean isNoop() {
		return noop;
	}

	public void setNoop(boolean noop) {
		this.noop = noop;
	}

	public BitSet getPreconditions() {
		return preconditions;
	}

	public void setPreconditions(BitSet preconditions) {
		this.preconditions = preconditions;
	}

	public BitSet getAddEffects() {
		return addEffects;
	}

	public void setAddEffects(BitSet addEffects) {
		this.addEffects = addEffects;
	}

	public BitSet getDeleteEffects() {
		return deleteEffects;
	}

	public void setDeleteEffects(BitSet deleteEffects) {
		this.deleteEffects = deleteEffects;
	}
	
	public BitSet getPossPreconditions() {
		return possPreconditions;
	}

	public void setPossPreconditions(BitSet possPreconditions) {
		this.possPreconditions = possPreconditions;
	}

	public BitSet getPossAddEffects() {
		return possAddEffects;
	}

	public void setPossAddEffects(BitSet possAddEffects) {
		this.possAddEffects = possAddEffects;
	}

	public BitSet getPossDeleteEffects() {
		return possDeleteEffects;
	}

	public void setPossDeleteEffects(BitSet possDeleteEffects) {
		this.possDeleteEffects = possDeleteEffects;
	}
	
	private int riskSize = 0;
	public int getRiskSize() {
		return riskSize;
	}
	
//	/**
//	 * Returns the last level of critical risks.
//	 * Same as "actionHeader.getCriticalRisks(actionHeader.getRiskSize() - 1)"
//	 * @param level
//	 * @return
//	 */
//	public Set<Risk> getLastCriticalRisks() {
//		if(riskSize <= 0) {
//			return new HashSet<Risk>();
//		}
//		return getCriticalRisks(riskSize - 1);
//	}
//	
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
//	
//	/**
//	 * Returns the last level of possible risks.
//	 * Same as "actionHeader.getPossibleRisks(actionHeader.getRiskSize() - 1)"
//	 * @return
//	 */
//	public Set<Risk> getLastPossibleRisks() {
//		if(riskSize <= 0) {
//			return new HashSet<Risk>();
//		}
//		return getPossibleRisks(riskSize - 1);
//	}
//	
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
		return getIndex() + " " + (isNoop() ? "(noop) " : "") + getName();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof ActionHeader)) {
			return false;
		}
		
		ActionHeader otherActionHeader = (ActionHeader) obj;
		
		if(this.getIndex() != otherActionHeader.getIndex()) {
			return false;
		}
		if(!this.getName().equals(otherActionHeader.getName())) {
			return false;
		}
		
		return true;
	}
	
	@Override
	public int hashCode() {
		return (getIndex() + " " + getName()).hashCode();
	}
}
