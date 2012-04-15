package edu.usu.cs.pddl.domain.incomplete;

import java.util.Map;

public class FaultLiteralTrieNode extends DefaultTrieNode {

	Fault fault = null;
	DefaultTrieNode pos = null, neg = null, rest = null;



	public FaultLiteralTrieNode(Fault fault, DefaultTrieNode pos,
			DefaultTrieNode neg, DefaultTrieNode rest) {
		super();
		this.fault = fault;
		this.pos = pos;
		this.neg = neg;
		this.rest = rest;
	}

	//builds a node for true value
	public FaultLiteralTrieNode(Fault fault) {
		super();
		this.fault = fault;
		this.pos = trueNode;
		this.neg = falseNode;
		this.rest = falseNode;
	}


	public FaultLiteralTrieNode(FaultLiteralTrieNode np) {
		this.fault = np.fault;
		this.pos = copy(np.getPos());
		this.neg = copy(np.getNeg());
		this.rest = copy(np.getRest());
	}



	public Fault getFault() {
		return fault;
	}
	public DefaultTrieNode getPos() {
		return pos;
	}
	public DefaultTrieNode getNeg() {
		return neg;
	}
	public DefaultTrieNode getRest() {
		return rest;
	}

	public int updateSize(Map<Integer, Integer> sizeMap, int depth) {
		int rs = rest.updateSize(sizeMap, depth);
		int ps = pos.updateSize(sizeMap, depth+1);
		int ns = neg.updateSize(sizeMap, depth+1);
		return rs+ps+ns;

	} 	

	public String toString(){
		return toString(0);
	}

	public String toString(int indent){
		StringBuilder b = new StringBuilder();
//		for(int i = 0; i < indent; i++)
//			b.append(" ");
		b.append(this.fault.toString()).append("\n");
		
		for(int i = 0; i < indent; i++)
			b.append(" ");
		b.append("P: ").append(pos.toString(indent+2)).append("\n");

		for(int i = 0; i < indent; i++)
			b.append(" ");
		b.append("N: ").append(neg.toString(indent+2)).append("\n");

		for(int i = 0; i < indent; i++)
			b.append(" ");
		b.append("R: ").append(rest.toString(indent+2)).append("\n");
		
		return b.toString();

	}

}
