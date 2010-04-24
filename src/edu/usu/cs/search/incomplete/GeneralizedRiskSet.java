package edu.usu.cs.search.incomplete;

import java.util.HashSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;

public class GeneralizedRiskSet {

	private Set<Set<Risk>> set;
	private int maxEltSize;
	
	public GeneralizedRiskSet(int maxEltSize) {
		super();

		this.set = new HashSet<Set<Risk>>();
		this.maxEltSize = maxEltSize;
	}
	
	
	public GeneralizedRiskSet(GeneralizedRiskSet risks) {
		this.maxEltSize = risks.getMaxEltSize();
		this.set = new HashSet<Set<Risk>>();
		for(Set<Risk> r : risks.getSet()){
			set.add(new HashSet<Risk>(r));
		}
	}

	public Set<Set<Risk>> getSet() {
		return set;
	}

	private int getMaxEltSize() {
		return maxEltSize;
	}

	public void union(GeneralizedRiskSet set1){
		//union elements of set and set1 and remove subsumed sets
		for(Set<Risk> rs1 : set1.getSet()){
			if(!subsumes(this.set, rs1)){
				//remove sets from set that are subsumed by rs1
				removeSetsSubsumedBy(this.set, rs1);
				//add rs1 to set
				set.add(rs1);
			}
		}	
	}
	



	private void removeSetsSubsumedBy(Set<Set<Risk>> mset, Set<Risk> rs1) {
		Set<Set<Risk>> toRemove = new HashSet<Set<Risk>>();
		for(Set<Risk> rs : set){
			if(rs.containsAll(rs1)){
				toRemove.add(rs);
			}
		}
		mset.removeAll(toRemove);
	}


	public void crossProduct(GeneralizedRiskSet set1){
		//union all pairs of risk sets, removing those larger than maxEltSize and removing subsumed
		Set<Set<Risk>> newRiskSet = new HashSet<Set<Risk>>();
		
		for(Set<Risk> rs1 : set1.getSet()){
			for(Set<Risk> rs : set){
				Set<Risk> rs2 = new HashSet<Risk>();
				rs2.addAll(rs1);
				rs2.addAll(rs);
				
				if(rs2.size() <= maxEltSize && !subsumes(newRiskSet, rs2)){
					removeSetsSubsumedBy(newRiskSet, rs2);
					newRiskSet.add(rs2);
				}
			}
		}
		if(set1.size() > 0){
			set = newRiskSet;			
		}
		
		
	}


	private boolean subsumes(Set<Set<Risk>> mset, Set<Risk> rs1) {
		for(Set<Risk> rs : mset){
			if(rs1.containsAll(rs)){
				return true;
			}
		}
		return false;
	}


	public int size() {
		return set.size();
	}
	
	public String toString(){
		StringBuilder b = new StringBuilder();
/*		b.append("{");
		for(Set<Risk> rs : set){
			b.append("{");
			for(Risk r : rs){
				b.append(r.toString() + " ");
			}
			b.append("}\n");
		}
		b.append("}\nSize: ").append(set.size());
*/
		for(int i = 1; i  <= maxEltSize; i++){
			b.append(i +":");
			for(Set<Risk> rs : set){
				if(rs.size() == i){
					b.append(rs.toString() + " ");
				}
					
			}
			b.append("\n");
		}
		//b.append(set.toString());
		return b.toString();
	}
	
	public boolean equals(GeneralizedRiskSet set1){
		return set.equals(set1);
	}


	public void add(Risk risk) {
		Set<Risk> s = new HashSet<Risk>();
		s.add(risk);
		removeSetsSubsumedBy(this.set, s);
		set.add(s);
	}


	public void removeAll(GeneralizedRiskSet risks) {
		for(Set<Risk> r : risks.getSet()){
			set.remove(r);
		}
	}
	
}
