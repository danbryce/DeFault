package edu.usu.cs.ka.oldsystems.oct_28_10.bddtesting;

import org.apache.log4j.Logger;

import jdd.bdd.BDD;

public class JDDTest {
	private static Logger logger = Logger.getLogger(JDDTest.class.getName());
	public static void main(String[] args) {
		
//		tutorial();
		
		BDD bdd = new BDD(5);
		int bddRef = bdd.ref(bdd.getOne());
		
		int a = bdd.createVar();
		int b = bdd.createVar();
		int c = bdd.createVar();
		
		int failSentence = bdd.ref(bdd.getZero());
		
		int refTempFS = bdd.ref(bdd.or(a, failSentence));
		bdd.deref(failSentence);
		failSentence = refTempFS;
		
		int refTemp = bdd.ref(bdd.and(bddRef, failSentence));
		bdd.deref(bddRef);
		bddRef = refTemp;
		
		System.out.println(bdd.and(bddRef, bdd.not(a)));
		System.out.println(bdd.and(bddRef, a));
		
		bdd.printSet(bddRef);

/*		
 		int tree1 = bdd.ref(bdd.and(bdd.or(a, b),bdd.or(bdd.not(b),c)));
		bdd.printSet(tree1);
		logger.debug(bdd.getSetCount(tree1) + "\n");
		
		int x1 = bdd.createVar();
		int x2 = bdd.createVar();
		int x3 = bdd.createVar();
		
		int tree2 = bdd.ref(bdd.or(bdd.and(bdd.not(x1), bdd.not(x2), bdd.not(x3)), bdd.and(x1, x2), bdd.and(x2, x3)));
		bdd.printSet(tree2);
		logger.debug(bdd.getSetCount(tree2) + "\n");

		BDD jdd = new BDD(10);
		int x = jdd.createVar();
		int xtree = jdd.ref(jdd.or(x, jdd.not(x)));
		jdd.printSet(xtree);
		logger.debug(jdd.getSetCount(xtree));
*/
	}
	
/*  
  	011
	10-
	111

	4

	---000
	---011
	---11-

	32

	TRUE
	2	
*/
	
	
//	private static void tutorial() {
//		// Create a BDD object
//		BDD bdd = new BDD(1000, 1000);
//		
//		// Allocating variables
//		int v1 = bdd.createVar();
//		int v2 = bdd.createVar();
//		int v3 = bdd.createVar();
//		
//		// BDD operations (x, y, and z are all trees)
//		int x = bdd.or(v1, v2);
//		int y = bdd.xor(v1, v3);
//		int z = bdd.not(v2);
//		
//		// Reference trees as soon as you get them, then de-reference them when you don't need them anymore.
//		bdd.ref(x);
//		bdd.ref(y);
//		bdd.ref(z);
//		
//		bdd.printSet(x);
//		bdd.printCubes(x);
//		
//		// At the end, do this
//		bdd.deref(x);
//		bdd.deref(y);
//		bdd.deref(z);
//	}
}
