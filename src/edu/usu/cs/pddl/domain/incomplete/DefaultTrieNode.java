package edu.usu.cs.pddl.domain.incomplete;

import java.util.Map;

import edu.usu.cs.search.incomplete.FaultLiteral;

public class DefaultTrieNode {

	public static TrueTrieNode trueNode = new TrueTrieNode(); //logical true
	public static FalseTrieNode falseNode = new FalseTrieNode(); //logical false



	public DefaultTrieNode() {}

	public static DefaultTrieNode copy(DefaultTrieNode np) {
		if(np instanceof TrueTrieNode)
			return np;
		else if (np instanceof FalseTrieNode)
			return np;
		else 
			return new FaultLiteralTrieNode((FaultLiteralTrieNode)np);

	}


	/*
	 * How to 'or' two trie's and remove subsumed terms
	 *  - remove subsumed terms from each tree, then or
	 *  - 
	 */


	public DefaultTrieNode removeSubsumed(DefaultTrieNode t1, DefaultTrieNode t2){
		//recurse t2, and then t1

		if(t2 == falseNode){
			return t1; //t2 not a term
		}
		else if(t2 == trueNode){
			//t2 is the end of a term
			//did t2 subsume t1? yes, otherwise would have failed earlier
			return falseNode;
		}
		else{//t2 is a literal node
			//need to check of pos, neg, or rest subsumes t1
			FaultLiteralTrieNode flt2 = (FaultLiteralTrieNode)t2;

			if(t1 == falseNode){
				return t1; //nothing to remove
			}
			else if(t1 == trueNode){
				return t1; //not subsumed, because reached end of term w/o removing
			}

			FaultLiteralTrieNode flt1 = (FaultLiteralTrieNode)t1;

			DefaultTrieNode rrs, prs, nrs;

			if(flt1.getFault() == flt2.getFault()){
				//same fault, so agree on term up to this point

				//flt2 rest can subsume flt1
				DefaultTrieNode flt1r = removeSubsumed(flt1, flt2.getRest());
				//FaultLiteralTrieNode flt1rl;
				if(flt1r instanceof FaultLiteralTrieNode)
					flt1 = (FaultLiteralTrieNode)flt1r;
				else
					return flt1r;

				
				
				
				//flt2 pos can only subsume flt1 pos
				prs = removeSubsumed(flt1.getPos(), flt2.getPos());
				

				//flt2 neg can only subsume flt1 neg
				nrs = removeSubsumed(flt1.getNeg(), flt2.getNeg());
				

//				prs = flt1.getPos();
//				nrs = flt1.getNeg();
				rrs = flt1.getRest();
				

		}
		else if(flt1.getFault().compareTo(flt2.getFault()) == -1){
			//flt1 comes before flt2

			//flt2  can subsume flt1 rest
			rrs = removeSubsumed(flt1.getRest(), flt2);
			//flt2 can subsume flt1 pos
			prs = removeSubsumed(flt1.getPos(), flt2);
			//flt2 can subsume flt1 neg
			nrs = removeSubsumed(flt1.getNeg(), flt2);



		}
		else{
			//flt1 comes after flt2
			
			
			return removeSubsumed(flt1, flt2.getRest()); 

//			//flt2  can subsume flt1 rest
//			rrs = removeSubsumed(flt1, flt2.getRest());
//			//flt2 can subsume flt1 pos
//			prs = removeSubsumed(flt1, flt2.getPos());
//			//flt2 can subsume flt1 neg
//			nrs = removeSubsumed(flt1, flt2.getNeg());


		}

		if(prs == falseNode && nrs == falseNode)
			return rrs;
		else
			return new FaultLiteralTrieNode(flt1.getFault(), prs, nrs, rrs);





	}
}








//Logical Or of this and t, returns new Trie
public DefaultTrieNode or(DefaultTrieNode t){
	if(this instanceof TrueTrieNode || t instanceof TrueTrieNode)
		return trueNode;  //True.or(t) = true, this.or(True) = True
	else if (this instanceof FalseTrieNode)
		return t; //False.or(t) = t 
	else if (t instanceof FalseTrieNode)
		return this; //this.or(True) = True 

	FaultLiteralTrieNode t1 = (FaultLiteralTrieNode)this;
	FaultLiteralTrieNode t2 = (FaultLiteralTrieNode)t;

	if(t1.getFault() == t2.getFault())
		return new FaultLiteralTrieNode(t1.getFault(),
				t1.getPos().or(t2.getPos()), 
				t1.getNeg().or(t2.getNeg()), 
				t1.getRest().or(t2.getRest()));
	else if (t1.getFault().compareTo(t2.getFault()) == -1)
		return new FaultLiteralTrieNode(t1.getFault(), 
				t1.getPos(),
				t1.getNeg(), 
				t1.getRest().or(t2));
	else 
		return new FaultLiteralTrieNode(t2.getFault(), 
				t2.getPos(), 
				t2.getNeg(), 
				t2.getRest().or(t1));

}


//Logical And of this and t, returns new Trie
public DefaultTrieNode and(DefaultTrieNode t, int depth, int depthLimit){

	if(depth == depthLimit){
		return falseNode;
	}

	if(this instanceof FalseTrieNode || t instanceof FalseTrieNode)
		return falseNode;  //False.and(t) = False, this.or(False) = False
	else if (this instanceof TrueTrieNode)
		return t; //True.and(t) = t 
	else if (t instanceof TrueTrieNode)
		return this; //this.and(True) = this 

	FaultLiteralTrieNode t1 = (FaultLiteralTrieNode)this;
	FaultLiteralTrieNode t2 = (FaultLiteralTrieNode)t;

	Fault fault;
	DefaultTrieNode pos, neg, rest;

	if(t1.getFault() == t2.getFault()){
		fault = t1.getFault();
		pos = t1.getPos().and(t2.getPos(), depth+1, depthLimit); 
		neg = t1.getNeg().and(t2.getNeg(), depth+1, depthLimit); 
		rest = t1.getRest().and(t2.getRest(), depth, depthLimit);
	}
	else if (t1.getFault().compareTo(t2.getFault()) == -1) {
		fault = t1.getFault();
		pos = t1.getPos().and(t2, depth+1, depthLimit); 
		neg = t1.getNeg().and(t2, depth+1, depthLimit); 
		rest = t1.getRest().and(t2, depth+1, depthLimit);
	}
	else{
		fault = t2.getFault();
		pos = t2.getPos().and(t1, depth+1, depthLimit); 
		neg = t2.getNeg().and(t1, depth+1, depthLimit); 
		rest = t2.getRest().and(t1, depth+1, depthLimit);
	}

	if(pos == falseNode && neg == falseNode)
		return rest;
	else
		return new FaultLiteralTrieNode(fault, pos, neg, rest);

}

//Logical negation that returns to PI form
public DefaultTrieNode not(int depthLimit){
	//create result and initialize as logical true

	if(depthLimit == 0)
		return falseNode;
	else if(this instanceof FalseTrieNode)
		return trueNode; //not(False) = True
	else if(this instanceof TrueTrieNode)
		return falseNode; //not(True) = False

	FaultLiteralTrieNode f = (FaultLiteralTrieNode)this;
	DefaultTrieNode nrest = f.getRest().not(depthLimit-1);
	DefaultTrieNode np, nn, nr = falseNode;

	if(f.getPos() == falseNode){
		//there are no terms with f true, so there are none with f false in not
		nn = falseNode;
	}
	else{
		//there is a term with f true, so there are terms with f false in not
		//these terms are where rest is false
		nn = nrest;
		if(nrest == falseNode){
			nr = falseNode;
		}
		else{
			nr = f.getPos().not(depthLimit).and(nrest, 0, depthLimit);
		}
	}

	if(f.getNeg() == falseNode){
		//there are no terms with f false, so there are none with f true in not
		np = falseNode;
	}
	else{
		//there is a term with f false, so there are terms with f true
		//these terms are where rest is false
		np = nrest;
		if(nrest == falseNode){
			nr = falseNode;
		}
		else{
			nr = nr.or(f.getPos().not(depthLimit).and(nrest, 0, depthLimit));
		}
	}

	DefaultTrieNode result;	
	if(np == falseNode && nn == falseNode){
		result = nr;
	}
	else {
		result = new FaultLiteralTrieNode(f.getFault(), np, nn, nr);
	}
	return result;
}

public int updateSize(Map<Integer, Integer> sizeMap) {
	return updateSize(sizeMap, 0);
} 
public int updateSize(Map<Integer, Integer> sizeMap, int depth) {
	//abstract decl.
	return 0;
}

public String toString(){
	return "def";
}
public String toString(int indent){
	return "def";
}
}
