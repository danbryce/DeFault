package edu.usu.cs.search.incomplete;

import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeSet;
import java.util.Set;

import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.pddl.domain.incomplete.Fault;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.search.DefaultFaultSet;
import edu.usu.cs.search.FaultSet;

public class PIFaultSet extends DefaultFaultSet implements FaultSet {

	private Set<Set<FaultLiteral>> set;
	private int maxEltSize;
	private Map<Integer, Integer> sizeMap;
	private boolean onlyEmpty;

	private boolean sizeMapStale;

	public PIFaultSet(int maxEltSize) {
		super();

		//this.set = new TreeSet<Set<Risk>>(new SetComparator());
		this.set = new HashSet<Set<FaultLiteral>>();
		this.maxEltSize = maxEltSize;
		this.sizeMap = new HashMap<Integer, Integer>();
		this.sizeMapStale = false;
		this.onlyEmpty = true;
		set.add(new HashSet<FaultLiteral>()); //single empty term signifies logical true
		//		this.updateSizeMap();
	}



	public PIFaultSet(FaultSet arisks) {
		PIFaultSet risks = (PIFaultSet)arisks;

		this.maxEltSize = risks.getMaxEltSize();
		//this.set = new TreeSet<Set<Risk>>(new SetComparator());
		this.set = new HashSet<Set<FaultLiteral>>();
		this.sizeMap = new HashMap<Integer, Integer>();

		for(Set<FaultLiteral> r : risks.getSet()){
			set.add(new TreeSet<FaultLiteral>(r));
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
		for(Set<FaultLiteral> r : set){
			this.sizeMap.put(r.size(), this.sizeMap.get(r.size())+1);
		}
		this.sizeMapStale = false;
	}

	public Set<Set<FaultLiteral>> getSet() {
		return set;
	}

	public int getMaxEltSize() {
		return maxEltSize;
	}

	public void union(PIFaultSet set1){
		//union elements of set and set1 and remove subsumed sets
		for(Set<FaultLiteral> rs1 : set1.getSet()){
			if(!subsumes(this.set, rs1)){
				//remove sets from set that are subsumed by rs1
				removeSetsSubsumedBy(this.set, rs1);
				if(checkTautology(this.set, rs1)){
					set.clear();
					set.add(new HashSet<FaultLiteral>());
					onlyEmpty = true;
					return;
				}
				//add rs1 to set
				set.add(rs1);
				if(rs1.size()>0)
					onlyEmpty = false;
				this.sizeMapStale = true;
			}
		}	
		
		
		
	}



	private boolean checkTautology(Set<Set<FaultLiteral>> set2,
			Set<FaultLiteral> rs1) {
		//check if the logical "or" of rs1 and set2 is a tautology
		//currently works for unit literals
		
		if(rs1.size() == 0){
			//rs1 is logical true
			return true;
		}
		
		for(Set<FaultLiteral> s1 : set2){
			if(s1.size()==0){
				//s1 is logical true
				return true;
			}
			if(rs1.size() == 1 && s1.size() == 1){
				FaultLiteral f1 = s1.iterator().next();
				FaultLiteral f2 = rs1.iterator().next();
				if(f1.getFault().equals(f2.getFault()) &&
					f1.isTrue() != f2.isTrue())
					return true;
			}
			   
		
		}
		
		return false;
	}



	private void removeSetsSubsumedBy(Set<Set<FaultLiteral>> mset, Set<FaultLiteral> rs1) {
		//Set<Set<Risk>> toRemove = new TreeSet<Set<Risk>>(new SetComparator());
		Set<Set<FaultLiteral>> toRemove = new HashSet<Set<FaultLiteral>>();

		for(Set<FaultLiteral> rs : set){
			if(rs.size() >= rs1.size() && rs.containsAll(rs1)){
				toRemove.add(rs);
			}
		}
		mset.removeAll(toRemove);		

	}


	public void and(PIFaultSet set1){
		//union all pairs of risk sets, removing those larger than maxEltSize and removing subsumed




		//Set<Set<Risk>> newRiskSet = new TreeSet<Set<Risk>>(new SetComparator());
		Set<Set<FaultLiteral>> newRiskSet = new HashSet<Set<FaultLiteral>>();

		boolean addedEmpty = false;

		for(Set<FaultLiteral> rs1 : set1.getSet()){
			for(Set<FaultLiteral> rs : set){
				if(isContradiction(rs1, rs))
					continue;
				Set<FaultLiteral> rs2 = new TreeSet<FaultLiteral>();
				//Set<Risk> rs2 = new HashSet<Risk>();
				rs2.addAll(rs1);
				rs2.addAll(rs);

				
				if(rs2.size() <= maxEltSize && !subsumes(newRiskSet, rs2)){
					
					if(rs2.size() == 0){
						addedEmpty = true;
					}
					else{
					removeSetsSubsumedBy(newRiskSet, rs2);
					newRiskSet.add(rs2);
					onlyEmpty = false;
					}
				}
			}
		}
		if(addedEmpty && newRiskSet.size() == 0){
			newRiskSet.add(new TreeSet<FaultLiteral>());
		}
		
		set = newRiskSet;			
		this.sizeMapStale = true;

	}


	private boolean isContradiction(Set<FaultLiteral> rs1, Set<FaultLiteral> rs) {
		//check if the logical "and" is contradiction
		for(FaultLiteral l1 : rs1){
			for(FaultLiteral l : rs){
				if(l1.getFault().equals(l.getFault()) && l1.isTrue() != l.isTrue())
					return true;
			}
		}
		
		return false;
	}



	private boolean subsumes(Set<Set<FaultLiteral>> mset, Set<FaultLiteral> rs1) {
		for(Set<FaultLiteral> rs : mset){
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
			for(Set<FaultLiteral> rs : set){
				if(rs.size() == i){
					b.append(rs.toString() + " ");
				}

			}
			b.append("\n");
		}
		//b.append(set.toString());
		return b.toString();
	}

	public boolean equals(Object set1){
		return equals((FaultSet)set1);
	}
		
	public boolean equals(FaultSet set1){
		if(set1 instanceof PIFaultSet){
			PIFaultSet set1p = (PIFaultSet)set1;
			//			
			//			for(Set<Fault> s : set){
			//				if(!set1p.getSet().contains(s))
			//					return false;
			//			}
			//			
			//			return true;
			boolean eq =  set.equals(set1p.getSet());
			return eq;
		}
		return false;
	}


	public void add(FaultLiteral risk) {

		if(maxEltSize == 0)
			return;

		Set<FaultLiteral> s = new TreeSet<FaultLiteral>();
		//Set<Risk> s = new HashSet<Risk>();
		s.add(risk);
		removeSetsSubsumedBy(this.set, s);
		set.add(s);
		this.sizeMapStale = true;
		if(s.size()>0)
			onlyEmpty = false;
	}


	public void removeAll(PIFaultSet risks) {
		for(Set<FaultLiteral> r : risks.getSet()){
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

		PIFaultSet grs = (PIFaultSet)o;


		Map<Integer, Integer> c1 = this.getSizeMap();
		Map<Integer, Integer> c2 = grs.getSizeMap();

		Set<Integer> sizes =  new TreeSet<Integer>();
		sizes.addAll(c1.keySet());
		sizes.addAll(c2.keySet());
		//sizes.add(1);

		
		for(Integer i : sizes){
			Integer i1 = c1.get(i);
			Integer i2 = c2.get(i);

			if(i1 == null) i1 = 0;
			if(i2 == null) i2 = 0;

			if(i == 0 && (i1 > 0 || i2 > 0)){
				//if either set has an empty element, then the set respresents true
				return i1 - i2;
			}

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
	public void and(FaultLiteral riskFromIndex) {
		PIFaultSet set = new PIFaultSet(this.maxEltSize);
		set.add(riskFromIndex);
		this.and(set);	
	}



	@Override
	public void and(FaultSet riskSet) {
		this.and((PIFaultSet)riskSet);			
	}






	@Override
	public void or(FaultSet s1) {
		this.union((PIFaultSet)s1);	
	}


	@Override
	public boolean isTrue() {
		return set.size()==1 && set.iterator().next().size()==0;
	}



	@Override
	public FaultSet copy() {
		// TODO Auto-generated method stub
		return new PIFaultSet(this);
	}



//	@Override
//	public boolean empty() {
//		// TODO Auto-generated method stub
//		return this.set.size()==0;
//	}



	@Override
	public void or(FaultLiteral r) {
		this.add(r);

	}


//
//	@Override
//	public void setFaults(int i) {
//		if(i == 1){
//			set.add(new HashSet<FaultLiteral>());
//		}
//	}
//
//
//
//	@Override
//	public void and(int possibleDomains) {
//		// TODO Auto-generated method stub
//
//	}
//
//
//
//	@Override
//	public void or(int nadd) {
//		// TODO Auto-generated method stub
//
//	}
//
//
//
	@Override
	public void andNot(FaultSet criticalAndGoal) {
		removeAll((PIFaultSet) criticalAndGoal);
	}



	public void intersect(FaultSet failures) {
		set.retainAll(((PIFaultSet) failures).getSet());
	}

	public boolean isFalse(){
		return set.size() == 0;
	}

	@Override
	public void not() {
		//Negate a DNF 
		//1. negate every literal of every term, terms become clauses
		//2. Distribute or's over ands

		if(set.size() == 0){
			//it is false
			set.add(new HashSet<FaultLiteral>()); //signifies true
			return;
		}
		
		
		Set<Set<FaultLiteral>> resultSet = new HashSet<Set<FaultLiteral>>();
		Set<Set<FaultLiteral>> tmpResultSet;
		
		for(Set<FaultLiteral> clause : set){
			if(resultSet.size() == 0){
				//first clause
				for(FaultLiteral l : clause){
					//negate literal and start new term
					FaultLiteral nl = Fault.getFaultLiteral(l.getFault(), !l.isTrue());
					Set<FaultLiteral> term = new HashSet<FaultLiteral>();
					term.add(nl);
					resultSet.add(term);
				}
			}
			else{
				
				//extend each term with negated literals in clause
				
				tmpResultSet = new HashSet<Set<FaultLiteral>>();
				for(FaultLiteral l : clause){
					FaultLiteral nl = Fault.getFaultLiteral(l.getFault(), !l.isTrue());
					for(Set<FaultLiteral> term : resultSet){
						Set<FaultLiteral> extendedTerm = new HashSet<FaultLiteral>(term);
						extendedTerm.add(nl);						
						if(extendedTerm.size() <= maxEltSize && !subsumes(tmpResultSet, extendedTerm))
								tmpResultSet.add(extendedTerm);
					}
				}
				resultSet = tmpResultSet;
			}
		}
		set = resultSet;
		//updateSizeMap();
	}

	public PlanMetric getFaultPlanMetric(){
		return new PIMetric(this);
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