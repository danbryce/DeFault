package edu.usu.cs.search.incomplete;

import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Risk;

public class GeneralizedRiskSet implements Comparable {

	private Set<Set<Risk>> set;
	private int maxEltSize;
	
	public GeneralizedRiskSet(int maxEltSize) {
		super();

		//this.set = new TreeSet<Set<Risk>>(new SetComparator());
		this.set = new HashSet<Set<Risk>>();
		this.maxEltSize = maxEltSize;
	}


	public GeneralizedRiskSet(GeneralizedRiskSet risks) {
		this.maxEltSize = risks.getMaxEltSize();
		//this.set = new TreeSet<Set<Risk>>(new SetComparator());
		this.set = new HashSet<Set<Risk>>();
		for(Set<Risk> r : risks.getSet()){
			set.add(new TreeSet<Risk>(r));
			//set.add(new HashSet<Risk>(r));
		}
	}

	public Set<Set<Risk>> getSet() {
		return set;
	}

	public int getMaxEltSize() {
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
		//Set<Set<Risk>> toRemove = new TreeSet<Set<Risk>>(new SetComparator());
		Set<Set<Risk>> toRemove = new HashSet<Set<Risk>>();
		
		for(Set<Risk> rs : set){
			if(rs.size() >= rs1.size() && rs.containsAll(rs1)){
				toRemove.add(rs);
			}
		}
		mset.removeAll(toRemove);
	}


	public void crossProduct(GeneralizedRiskSet set1){
		//union all pairs of risk sets, removing those larger than maxEltSize and removing subsumed
		
		

		
		//Set<Set<Risk>> newRiskSet = new TreeSet<Set<Risk>>(new SetComparator());
		Set<Set<Risk>> newRiskSet = new HashSet<Set<Risk>>();
		
		
		
		for(Set<Risk> rs1 : set1.getSet()){
			for(Set<Risk> rs : set){
				Set<Risk> rs2 = new TreeSet<Risk>();
				//Set<Risk> rs2 = new HashSet<Risk>();
				rs2.addAll(rs1);
				rs2.addAll(rs);

				if(rs2.size() <= maxEltSize && !subsumes(newRiskSet, rs2)){
					removeSetsSubsumedBy(newRiskSet, rs2);
					newRiskSet.add(rs2);
				}
			}
		}
		set = newRiskSet;			
		

	}


	private boolean subsumes(Set<Set<Risk>> mset, Set<Risk> rs1) {
		for(Set<Risk> rs : mset){
			if(rs1.size() >= rs.size() && rs1.containsAll(rs)){
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
		return set.equals(set1.getSet());
	}


	public void add(Risk risk) {
		Set<Risk> s = new TreeSet<Risk>();
		//Set<Risk> s = new HashSet<Risk>();
		s.add(risk);
		removeSetsSubsumedBy(this.set, s);
		set.add(s);
	}


	public void removeAll(GeneralizedRiskSet risks) {
		for(Set<Risk> r : risks.getSet()){
			set.remove(r);
		}
	}

	public Map<Integer, Integer> getSetSizeCounts(){
		Map<Integer, Integer> counts = new HashMap<Integer, Integer>();
		
		for(Set<Risk> r : set){
			int size = r.size();
			if(counts.get(size) == null){
				counts.put(size, 1);
			}
			else{
				counts.put(size, counts.get(size)+1);
			}
		}
		return counts;
	}
	
	@Override
	public int compareTo(Object o) {
		//compare based on the number of models of each.
		//model counting of prime implicants is NP-Hard, 
		//so compute the symmetric difference of the sets
		//and compare the number of increasing sized PIs 
		
		GeneralizedRiskSet grs = (GeneralizedRiskSet)o;
		
		GeneralizedRiskSet diff1 = new GeneralizedRiskSet(this);
		GeneralizedRiskSet diff2 = new GeneralizedRiskSet(grs);
		
//		diff1.removeAll(grs);
//		diff2.removeAll(this);
		
		Map<Integer, Integer> c1 = diff1.getSetSizeCounts();
		Map<Integer, Integer> c2 = diff2.getSetSizeCounts();
		
		Set<Integer> sizes =  new TreeSet<Integer>();
		sizes.addAll(c1.keySet());
		sizes.addAll(c2.keySet());
		
		
		for(Integer i : sizes){
			Integer i1 = c1.get(i);
			Integer i2 = c2.get(i);
			
			if(i1 == null) i1 = 0;
			if(i2 == null) i2 = 0;
			
			
			int diff = i1 - i2;
			if(diff == 0){
				continue;
			}
			else if(diff < 0){
				return -1; //there are more i-sized sets in grs, meaning less models, thus this is better
			}
			else if(diff > 0){
				return 1;
			}
		}
		return 0;
	}


	public void addEmpty() {
		set.add(new TreeSet<Risk>());
	}

}




class SetComparator implements Comparator{

	public int compare(Object r1, Object r2){
		int r1size = ((Set<Risk>) r1).size();
		int r2size = ((Set<Risk>) r2).size();

		if( r1size > r2size )
			return 1;
		else if( r1size < r2size )
			return -1;
		else if(((Set<Risk>) r1).equals(((Set<Risk>) r2)))
			return 0;
		else 
			return 1;
	}
}