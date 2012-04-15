package edu.usu.cs.pddl.domain.incomplete;

import java.util.Map;

public class TrueTrieNode extends DefaultTrieNode {

	public int updateSize(Map<Integer, Integer> sizeMap, int depth) {
		sizeMap.put(depth, sizeMap.get(depth-1)+1);
		return 1;
	} 
	public String toString(){
		return "T";
	}
	public String toString(int indent){
		StringBuilder b = new StringBuilder();
//		for(int i = 0; i < indent; i++)
//			b.append(" ");
		b.append("T");
		return b.toString();
	}
}
