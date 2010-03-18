package edu.usu.cs.jdd;

import jdd.bdd.BDD;

public class JDDTest {
	public static void main(String[] args) {
		
//		tutorial();
		
		BDD bdd = new BDD(5);
		
		int a = bdd.createVar();
		int b = bdd.createVar();
		int c = bdd.createVar();
		
		int x1 = bdd.createVar();
		int x2 = bdd.createVar();
		int x3 = bdd.createVar();
		
		int tree1 = bdd.ref(bdd.and(
				bdd.or(a, b),
				bdd.or(bdd.not(b),c)
				));
		int tree2 = bdd.ref(bdd.or(
				bdd.and(bdd.not(x1), bdd.not(x2), bdd.not(x3)),
				bdd.and(x1, x2),
				bdd.and(x2, x3)
		));
		int tree3 = bdd.ref(bdd.or(tree1, tree2));
		
		bdd.printSet(tree1);
		bdd.printSet(tree2);
		bdd.printSet(tree3);
	}
	
	private static void tutorial() {
		// Create a BDD object
		BDD bdd = new BDD(1000, 1000);
		
		// Allocating variables
		int v1 = bdd.createVar();
		int v2 = bdd.createVar();
		int v3 = bdd.createVar();
		
		// BDD operations (x, y, and z are all trees)
		int x = bdd.or(v1, v2);
		int y = bdd.xor(v1, v3);
		int z = bdd.not(v2);
		
		// Reference trees as soon as you get them, then de-reference them when you don't need them jamas.
		bdd.ref(x);
		bdd.ref(y);
		bdd.ref(z);
		
		bdd.printSet(x);
		bdd.printCubes(x);
		
		// At the end, do this
		bdd.deref(x);
		bdd.deref(y);
		bdd.deref(z);
	}
}
