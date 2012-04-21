package edu.usu.cs.pddl.domain.incomplete;

public class FalseTrieNode extends DefaultTrieNode {

	public String toString(){
		return "F";
	}
	public String toString(int indent){
		StringBuilder b = new StringBuilder();
//		for(int i = 0; i < indent; i++)
//			b.append(" ");
		b.append("F");
		return b.toString();
	}

}
