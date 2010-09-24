package edu.usu.cs.search.incomplete;

import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeSet;
import java.util.Set;

import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.search.FaultSet;

public class PIRiskSet implements FaultSet {

	private Set<Set<Fault>> set;
	private int maxEltSize;
	private Map<Integer, Integer> sizeMap;
	private boolean onlyEmpty;

	private boolean sizeMapStale;
	
	public PIRiskSet(int maxEltSize) {
		super();

		//this.set = new TreeSet<Set<Risk>>(new SetComparator());
		this.set = new HashSet<Set<Fault>>();
		this.maxEltSize = maxEltSize;
		this.sizeMap = new HashMap<Integer, Integer>();
		this.sizeMapStale = false;
		this.onlyEmpty = true;
//		this.updateSizeMap();
	}



	public PIRiskSet(FaultSet arisks) {
		PIRiskSet risks = (PIRiskSet)arisks;
		
		this.maxEltSize = risks.getMaxEltSize();
		//this.set = new TreeSet<Set<Risk>>(new SetComparator());
		this.set = new HashSet<Set<Fault>>();
		this.sizeMap = new HashMap<Integer, Integer>();
		
		for(Set<Fault> r : risks.getSet()){
			set.add(new TreeSet<Fault>(r));
			//set.add(new HashSet<Risk>(r));
		}
		this.sizeMapStale = true;
//		this.onlyEmpty = risks.onlyEmpty();
//		this.updateSizeMap();
	}





	protected Map<Integer, Integer> getSizeMap() {
		if(sizeMapStale)
			updateSizeMap();
		return sizeMap;
	}

	protected boolean isSizeMapStale() {
		return sizeMapStale;
	}


	protected void setSizeMapStale(boolean sizeMapStale) {
		this.sizeMapStale = sizeMapStale;
	}

	protected void updateSizeMap(){
		for(int i = 0; i <= maxEltSize; i++){
			this.sizeMap.put(i, 0);
		}
		for(Set<Fault> r : set){
			this.sizeMap.put(r.size(), this.sizeMap.get(r.size())+1);
		}
		this.sizeMapStale = false;
	}
	
	public Set<Set<Fault>> getSet() {
		return set;
	}

	public int getMaxEltSize() {
		return maxEltSize;
	}

	public void union(PIRiskSet set1){
		//union elements of set and set1 and remove subsumed sets
		for(Set<Fault> rs1 : set1.getSet()){
			if(!subsumes(this.set, rs1)){
				//remove sets from set that are subsumed by rs1
				removeSetsSubsumedBy(this.set, rs1);
				//add rs1 to set
				set.add(rs1);
				if(rs1.size()>0)
					onlyEmpty = false;
				this.sizeMapStale = true;
			}
		}	
	}

	

	private void removeSetsSubsumedBy(Set<Set<Fault>> mset, Set<Fault> rs1) {
		//Set<Set<Risk>> toRemove = new TreeSet<Set<Risk>>(new SetComparator());
		Set<Set<Fault>> toRemove = new HashSet<Set<Fault>>();
		
		for(Set<Fault> rs : set){
			if(rs.size() >= rs1.size() && rs.containsAll(rs1)){
				toRemove.add(rs);
			}
		}
		mset.removeAll(toRemove);		
		
	}


	public void crossProduct(PIRiskSet set1){
		//union all pairs of risk sets, removing those larger than maxEltSize and removing subsumed
		
		

		
		//Set<Set<Risk>> newRiskSet = new TreeSet<Set<Risk>>(new SetComparator());
		Set<Set<Fault>> newRiskSet = new HashSet<Set<Fault>>();
		
		
		
		for(Set<Fault> rs1 : set1.getSet()){
			for(Set<Fault> rs : set){
				Set<Fault> rs2 = new TreeSet<Fault>();
				//Set<Risk> rs2 = new HashSet<Risk>();
				rs2.addAll(rs1);
				rs2.addAll(rs);

				if(rs2.size() <= maxEltSize && !subsumes(newRiskSet, rs2)){
					removeSetsSubsumedBy(newRiskSet, rs2);
					newRiskSet.add(rs2);
					onlyEmpty = false;
				}
			}
		}
		set = newRiskSet;			
		this.sizeMapStale = true;

	}


	private boolean subsumes(Set<Set<Fault>> mset, Set<Fault> rs1) {
		for(Set<Fault> rs : mset){
			if(rs1.size() >= rs.size() && rs.size() > 0 && rs1.containsAll(rs)){
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
		for(int i = 0; i  <= maxEltSize; i++){
			b.append(i +":");
			for(Set<Fault> rs : set){
				if(rs.size() == i){
					b.append(rs.toString() + " ");
				}

			}
			b.append("\n");
		}
		//b.append(set.toString());
		return b.toString();
	}

	public boolean equals(FaultSet set1){
		if(set1 instanceof PIRiskSet){
			PIRiskSet set1p = (PIRiskSet)set1;
//			
//			for(Set<Fault> s : set){
//				if(!set1p.getSet().contains(s))
//					return false;
//			}
//			
//			return true;
			return set.equals(set1p.getSet());
		}
		return false;
	}


	public void add(Fault risk) {
		
		if(maxEltSize == 0)
			return;
		
		Set<Fault> s = new TreeSet<Fault>();
		//Set<Risk> s = new HashSet<Risk>();
		s.add(risk);
		removeSetsSubsumedBy(this.set, s);
		set.add(s);
		this.sizeMapStale = true;
		if(s.size()>0)
			onlyEmpty = false;
	}


	public void removeAll(PIRiskSet risks) {
		for(Set<Fault> r : risks.getSet()){
			set.remove(r);
			this.sizeMapStale = true;
		}
	}

	
	@Override
	public int compareTo(FaultSet o) {
		//compare based on the number of models of each.
		//model counting of prime implicants is NP-Hard, 
		//so compute the symmetric difference of the sets
		//and compare the number of increasing sized PIs 
		
		PIRiskSet grs = (PIRiskSet)o;
		
		
		Map<Integer, Integer> c1 = this.getSizeMap();
		Map<Integer, Integer> c2 = grs.getSizeMap();
		
		Set<Integer> sizes =  new TreeSet<Integer>();
//		sizes.addAll(c1.keySet());
//		sizes.addAll(c2.keySet());
		sizes.add(1);
		
		for(Integer i : sizes){
			Integer i1 = c1.get(i);
			Integer i2 = c2.get(i);
			
			if(i1 == null) i1 = 0;
			if(i2 == null) i2 = 0;
			
			
			int diff = i1 - i2;
			if(diff == 0){
				continue;
			}
			else
				return diff;
		}
		return 0;
	}


//	public void addEmpty() {
//		set.add(new TreeSet<Fault>());
//		
//	}






	@Override
	public void and(Fault riskFromIndex) {
		PIRiskSet set = new PIRiskSet(this.maxEltSize);
		set.add(riskFromIndex);
		this.crossProduct(set);	
	}



	@Override
	public void and(FaultSet riskSet) {
		this.crossProduct((PIRiskSet)riskSet);			
	}



	


	@Override
	public void or(FaultSet s1) {
		this.union((PIRiskSet)s1);	
	}






	@Override
	public FaultSet copy() {
		// TODO Auto-generated method stub
		return new PIRiskSet(this);
	}



	@Override
	public boolean empty() {
		// TODO Auto-generated method stub
		return this.set.size()==0;
	}



	@Override
	public void or(Fault r) {
		this.add(r);
		
	}



	@Override
	public void setFaults(int i) {
		if(i == 1){
			set.add(new HashSet<Fault>());
		}
	}





}


//
//
//class SetComparator implements Comparator{
//
//	public int compare(Object r1, Object r2){
//		int r1size = ((Set<Fault>) r1).size();
//		int r2size = ((Set<Fault>) r2).size();
//
//		if( r1size > r2size )
//			return 1;
//		else if( r1size < r2size )
//			return -1;
//		else if(((Set<Fault>) r1).equals(((Set<Fault>) r2)))
//			return 0;
//		else 
//			return 1;
//	}
//}