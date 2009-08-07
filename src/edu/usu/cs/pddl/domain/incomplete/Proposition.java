package edu.usu.cs.pddl.domain.incomplete;

import java.util.HashMap;
import java.util.Map;

import edu.usu.cs.pddl.domain.LiteralInstance;

public class Proposition {
	
	private static int propositionIndex = 0; 
	private static Map<String, Integer> propositionIndices = new HashMap<String, Integer>();
	
	private String name;
	
	
	public Proposition(String name) {
		this.name = name;
		if(propositionIndices.get(name) == null)
			propositionIndices.put(name, propositionIndex++);
	}
	
	public static Integer getPropositionIndicex(String name) {
		Integer index =propositionIndices.get(name); 
		return index;
	}
	
	public Integer getIndex(){
		return getPropositionIndicex(name);
	}

	/**
	 * Creates a proposition from a literal instance.
	 * @param literalInstance
	 */
	public Proposition(LiteralInstance literalInstance) {
		this.setName(literalInstance.toString().replace('(', ' ').replace(')', ' ').trim());
		if(propositionIndices.get(this.name) == null)
			propositionIndices.put(this.name, propositionIndex++);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public boolean equals(Object o) {
		if(!(o instanceof Proposition)) {
			return false;
		}
		return getName().equals(((Proposition)o).getName());
	}
	
	@Override
	public String toString() {
		return getName();
	}
	
	@Override
	public int hashCode() {
		return getName().hashCode();
	}
}
