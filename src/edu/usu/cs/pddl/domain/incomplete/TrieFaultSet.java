package edu.usu.cs.pddl.domain.incomplete;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import edu.usu.cs.heuristic.stanplangraph.incomplete.PIMetric;
import edu.usu.cs.planner.PlanMetric;
import edu.usu.cs.search.DefaultFaultSet;
import edu.usu.cs.search.FaultSet;
import edu.usu.cs.search.incomplete.FaultLiteral;

public class TrieFaultSet extends DefaultFaultSet implements FaultSet {

	
		private DefaultTrieNode set;
		private int maxEltSize;
		private Map<Integer, Integer> sizeMap;
		private boolean sizeMapStale;
		int size;

		public TrieFaultSet(int maxEltSize) {
			super();

			//this.set = new TreeSet<Set<Risk>>(new SetComparator());
			this.set = DefaultTrieNode.falseNode;
			this.maxEltSize = maxEltSize;
			this.sizeMap = new HashMap<Integer, Integer>();
			this.sizeMapStale = false;
			this.size = 0;
		}



		public TrieFaultSet(FaultSet arisks) {
			TrieFaultSet risks = (TrieFaultSet)arisks;

			this.maxEltSize = risks.getMaxEltSize();
			this.set = DefaultTrieNode.copy(risks.getSet());
			this.sizeMap = new HashMap<Integer, Integer>();		
			this.sizeMapStale = true;
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
			size = set.updateSize(sizeMap);
			this.sizeMapStale = false;
		}

		public DefaultTrieNode getSet() {
			return set;
		}

		public int getMaxEltSize() {
			return maxEltSize;
		}

//		public void union(PIFaultSet set1){
//			//union elements of set and set1 and remove subsumed sets
//			for(Set<FaultLiteral> rs1 : set1.getSet()){
//				if(!subsumes(this.set, rs1)){
//					//remove sets from set that are subsumed by rs1
//					removeSetsSubsumedBy(this.set, rs1);
//					//add rs1 to set
//					set.add(rs1);
//					if(rs1.size()>0)
//						onlyEmpty = false;
//					this.sizeMapStale = true;
//				}
//			}	
//		}



//		private void removeSetsSubsumedBy(Set<Set<FaultLiteral>> mset, Set<FaultLiteral> rs1) {
//			//Set<Set<Risk>> toRemove = new TreeSet<Set<Risk>>(new SetComparator());
//			Set<Set<FaultLiteral>> toRemove = new HashSet<Set<FaultLiteral>>();
//
//			for(Set<FaultLiteral> rs : set){
//				if(rs.size() >= rs1.size() && rs.containsAll(rs1)){
//					toRemove.add(rs);
//				}
//			}
//			mset.removeAll(toRemove);		
//
//		}
//
//
//		public void crossProduct(PIFaultSet set1){
//			//union all pairs of risk sets, removing those larger than maxEltSize and removing subsumed
//
//
//
//
//			//Set<Set<Risk>> newRiskSet = new TreeSet<Set<Risk>>(new SetComparator());
//			Set<Set<FaultLiteral>> newRiskSet = new HashSet<Set<FaultLiteral>>();
//
//
//
//			for(Set<FaultLiteral> rs1 : set1.getSet()){
//				for(Set<FaultLiteral> rs : set){
//					Set<FaultLiteral> rs2 = new TreeSet<FaultLiteral>();
//					//Set<Risk> rs2 = new HashSet<Risk>();
//					rs2.addAll(rs1);
//					rs2.addAll(rs);
//
//					if(rs2.size() <= maxEltSize && !subsumes(newRiskSet, rs2)){
//						removeSetsSubsumedBy(newRiskSet, rs2);
//						newRiskSet.add(rs2);
//						onlyEmpty = false;
//					}
//				}
//			}
//			set = newRiskSet;			
//			this.sizeMapStale = true;
//
//		}


//		private boolean subsumes(Set<Set<FaultLiteral>> mset, Set<FaultLiteral> rs1) {
//			for(Set<FaultLiteral> rs : mset){
//				if(rs1.size() >= rs.size() && rs.size() > 0 && rs1.containsAll(rs)){
//					return true;
//				}
//			}
//			return false;
//		}


//		public int size() {
//			return set.size();
//		}

		public String toString(){
			return set.toString();
		}

//		public boolean equals(FaultSet set1){
//			if(set1 instanceof PIFaultSet){
//				PIFaultSet set1p = (PIFaultSet)set1;
//				//			
//				//			for(Set<Fault> s : set){
//				//				if(!set1p.getSet().contains(s))
//				//					return false;
//				//			}
//				//			
//				//			return true;
//				return set.equals(set1p.getSet());
//			}
//			return false;
//		}


//		public void add(FaultLiteral risk) {
//
//			if(maxEltSize == 0)
//				return;
//
//			Set<FaultLiteral> s = new TreeSet<FaultLiteral>();
//			//Set<Risk> s = new HashSet<Risk>();
//			s.add(risk);
//			removeSetsSubsumedBy(this.set, s);
//			set.add(s);
//			this.sizeMapStale = true;
//			if(s.size()>0)
//				onlyEmpty = false;
//		}


//		public void removeAll(PIFaultSet risks) {
//			for(Set<FaultLiteral> r : risks.getSet()){
//				set.remove(r);
//				this.sizeMapStale = true;
//			}
//		}


		@Override
		public int compareTo(FaultSet o) {
			//compare based on the number of models of each.
			//model counting of prime implicants is NP-Hard, 
			//so compute the symmetric difference of the sets
			//and compare the number of increasing sized PIs 

			TrieFaultSet grs = (TrieFaultSet)o;


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
		public void and(FaultLiteral literal) {
			DefaultTrieNode node = new FaultLiteralTrieNode(literal.getFault());
			if(!literal.isTrue()){
				node = node.not(maxEltSize);
			}
			set = set.and(node, 0, maxEltSize);
			sizeMapStale = true;
		}



		@Override
		public void and(FaultSet riskSet) {
			set = set.and(((TrieFaultSet)riskSet).getSet(), 0, maxEltSize);
			sizeMapStale = true;			
		}






		@Override
		public void or(FaultSet riskSet) {
			set = set.or(((TrieFaultSet)riskSet).getSet());
			sizeMapStale = true;			
	
		}






		@Override
		public FaultSet copy() {
			// TODO Auto-generated method stub
			return new TrieFaultSet(this);
		}


//
//		@Override
//		//is logical true
//		public boolean empty() {
//			// TODO Auto-generated method stub
//			return this.set == DefaultTrieNode.trueNode;
//		}



		@Override
		public void or(FaultLiteral literal) {
			DefaultTrieNode node = new FaultLiteralTrieNode(literal.getFault());
			if(!literal.isTrue()){
				node = node.not(maxEltSize);
			}
			set = set.or(node);
			sizeMapStale = true;
		}



//		@Override
//		public void setFaults(int i) {
//			if(i == 1){
//				set.add(new HashSet<FaultLiteral>());
//			}
//		}



//		@Override
//		public void and(int possibleDomains) {
//			// TODO Auto-generated method stub
//
//		}
//
//
//
//		@Override
//		public void or(int nadd) {
//			// TODO Auto-generated method stub
//
//		}
//
//
//
//		@Override
//		public void andNot(FaultSet criticalAndGoal) {
//			removeAll((PIFaultSet) criticalAndGoal);
//		}
//
//
//
//		public void intersect(FaultSet failures) {
//			set.retainAll(((PIFaultSet) failures).getSet());
//		}



		@Override
		public void not() {
			set = set.not(maxEltSize);
		}



		@Override
		public void andNot(FaultSet criticalAndGoal) {
			set = set.and(((TrieFaultSet)criticalAndGoal).getSet().not(maxEltSize), 0, maxEltSize);
			
		}



		@Override
		public boolean isFalse() {
			// TODO Auto-generated method stub
			return set == DefaultTrieNode.falseNode;
		}

		@Override
		public PlanMetric getFaultPlanMetric() {
			// TODO Auto-generated method stub
			return new PIMetric(this);
		}



		public int getSize() {
			// TODO Auto-generated method stub
			return size;
		}
		
		
		
	}




