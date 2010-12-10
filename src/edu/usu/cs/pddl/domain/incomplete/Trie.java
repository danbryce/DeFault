package edu.usu.cs.pddl.domain.incomplete;

import java.util.List;

public class Trie<S> {

	TrieNode<S> root;
	
	public Trie(){
		root = new TrieNode<S>(null);
	}
	
	public void insert(List<S> elt){
		root.insert(elt);
	}
	
	public boolean contains(List<S> elt){
		return false;
		
	}
	
	public boolean subsumes(List<S> elt){
		return root.subsumes(elt);
		
	}
	
	public void intersect(Trie<S> trie){
		
	}
	
	public void union(Trie<S> trie){
	
	}
	
	public String toString(){
		return root.toString("");
	}

	public void removeSubsumed(List<S> list2) {
		root.removeSubsumed(list2);
		
	}
	
}
