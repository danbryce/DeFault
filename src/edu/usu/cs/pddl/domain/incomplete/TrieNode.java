package edu.usu.cs.pddl.domain.incomplete;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class TrieNode<S> {

	S value;
	List<TrieNode<S>> children;

	public TrieNode(S first){
		value = first;
		children = new LinkedList<TrieNode<S>>();
	}

	public void insert(List<S> list){
		if(list.size() == 0)
			return;

		S first = list.get(0);
		int index = 0;
		for(TrieNode<S> child : children){
			index++;
			int cmp = ((Comparable) first).compareTo(child.getValue());
			if(cmp == -1) continue;
			else if (cmp == 0 && list.size() > 1) child.insert(list.subList(1, list.size()));
			else{ 
				TrieNode<S> firstNode = new TrieNode<S>(first);
				children.add(index,firstNode);
				if(list.size() > 1){
					firstNode.insert(list.subList(1, list.size()));
				}
				break;
			}
		}
		if(children.size() == 0){
			TrieNode<S> firstNode = new TrieNode<S>(first);
			children.add(firstNode);
			if(list.size() > 1){
				firstNode.insert(list.subList(1, list.size()));
			}
		}
	} 

	public S getValue() {
		return value;
	}


	public boolean contains(List<S> elt){
		return false;

	}


	public boolean subsumes(List<S> elt){
		if(children.size() == 0)
			return false;

		int child = 0;
		TrieNode<S> firstChild = children.get(child);
		int startOfElt = 0;
		while(startOfElt < elt.size()){
			for(int i = startOfElt; i < elt.size(); i++){
				S e = elt.get(i);
				int cmp = ((Comparable) e).compareTo(firstChild.getValue());
				if(cmp < 1){
					break;
				}
				else{
					startOfElt++;
				}
			}
			if(startOfElt == elt.size()){
				return false;
			}
			else{
				for(int j = startOfElt; j < elt.size(); j++){					
					S e = elt.get(j);
					int cmp = ((Comparable) e).compareTo(firstChild.getValue());
					if(cmp == 1){
						break;
					}
					else if (cmp == 0){
						boolean success = firstChild.subsumes(elt.subList(startOfElt, elt.size()));
						if(success)
							return success;
					}
				}
				child++;
				if(child < children.size()){
					firstChild = children.get(child);
				}
				else{
					return false;
				}
			}
		}
		return false;
	}


	//returns true if there exists a child that was not removed
	public boolean removeSubsumed(List<S> elt){
		boolean notRemoved = false; //if there exists a child that was not removed
		//		if(elt.size() == 0){
		//			notRemoved = false;
		//		}
		
		if(elt.size() == 0){
			return false;
		}

		List<TrieNode<S>> toRemove = new LinkedList<TrieNode<S>>();
		for(TrieNode<S> child : children){
			int cmp = ((Comparable) elt.get(0)).compareTo(child.getValue());
			if(cmp == 0){
				boolean nRemoved = child.removeSubsumed(elt.subList(1, elt.size()));
				if(!nRemoved){ //all descendents were removed
					toRemove.add(child);
				}
				else{
					notRemoved = true; //a descendent was not removed
				}
			}	
			else if(cmp == 1){
				boolean nRemoved = child.removeSubsumed(elt);
				if(!nRemoved){ //all descendents were removed
					toRemove.add(child);
				}
				else{
					notRemoved = true; //a descendent was not removed
				}
			}
		}

		children.removeAll(toRemove);
		return notRemoved || (toRemove.size()==0);
	}


	//keep paths that are in both tries and one subsumes the other
	public void intersect(Trie<S> trie){
		
	}

	public void crossProduct(Trie<S> trie){
		
	}

	
	//keep all paths in either tries and remove subsumed
	public void union(Trie<S> trie){
		for(TrieIterator<S> i = trie.root.iterator(); i.hasNext();  ){
			List<S> e = (List<S>)i.next();
			if(!this.subsumes(e)){
				this.removeSubsumed(e);
				this.insert(e);
			}
		}
			
	}

	public TrieIterator<S> iterator(){
		return new TrieIterator<S>(this);
		
	}
	
	public String toString(String prefix){
		StringBuilder st = new StringBuilder(prefix);
		st.append(value).append("\n");
		String prefix1 = prefix + " ";
		for(TrieNode<S> child : children){
			st.append(child.toString(prefix1));
		}
		return st.toString();
	}
	public String toString(){
		return toString("");
	}

}

class TrieIterator<S> implements Iterator{
	TrieNode<S> root = null;
	boolean hasNext = true;
	List<S> current = null;
	List<Integer> children = null;
	public TrieIterator(TrieNode<S> trie){
		root = trie;
		if(root.getValue() == null && root.children.size() == 0){
			hasNext = false; 
		}
		else{
			current = new LinkedList<S>();
			children = (List<Integer>) new ArrayList<S>();
		}
	}
	
	@Override
	public boolean hasNext() {
		// TODO Auto-generated method stub
		return hasNext;
	}

	private void getPath(TrieNode<S> node, List<Integer> children, int depth){
		if(children.size() == 0){//pick first child
		
		}
//		else if(children.get(depth)){//exhausted last child
//			
//		}
	}
	
	@Override
	public Object next() {
		// TODO Auto-generated method stub
		if(!hasNext)
			return null;
		else{
			getPath(root, children, 0);
			return current;
		}
	}

	@Override
	public void remove() {
		// TODO Auto-generated method stub
		
	}
	
}
