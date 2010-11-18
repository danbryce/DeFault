package edu.usu.cs.ka.currentsystem.utilities;

import jdd.bdd.BDD;

public class BDD_ScratchPad 
{
	public static void main(String[] args)
	{
		System.out.println(  "WITH TRIVIAL PAST TESTS//////////////////////////");
		
		runVersion1(true, false);
		runVersion2(true, false);
		runVersion3(true, false);
		
		System.out.println("\nWITHOUT TRIVIAL PAST TESTS///////////////////////");
		runVersion1(false, false);
		runVersion2(false, false);
		runVersion3(false, false);
		
		System.out.println("\nWITH TRIVIAL PAST TESTS & (S v F) SENTENCE///////");
		
		runVersion1(true, true);
		runVersion2(true, true);
		runVersion3(true, true);
		
		System.out.println("\nWITHOUT TRIVIAL PAST TESTS & (S v F) SENTENCE////");
		runVersion1(false, true);
		runVersion2(false, true);
		runVersion3(false, true);
	}
	
	//Data members
	
	static BDD bdd;
	static int bddRef;
	
	static int trivialPast;
	static int a;
	static int b;
	static int fail;
	static int F;
	static int S;
	
	static boolean withTrivialPast;
	static int numVars;
	
	//Constructor
	BDD_ScratchPad(boolean wTrivialPast)
	{
		this.withTrivialPast = wTrivialPast;
		
		bdd = new BDD(10000, 10000);
		bddRef = bdd.ref(bdd.getOne());
		
		if(withTrivialPast)
		{
			numVars = 4;
			
			includeTrivialPast();
			System.out.print("\nPHI With Trivial Past: ");
			bdd.printSet(bddRef);
		}
		else
		{
			numVars = 3;
			
			System.out.print("\nPHI Without Trivial Past: ");
			bdd.printSet(bddRef);
		}

		a = bdd.createVar();
		b = bdd.createVar();
		fail = bdd.createVar();
	}
	
	//Methods///////////////////////////////////////////////////////////////////////////////////
	
	static void includeTrivialPast()
	{
		trivialPast = bdd.createVar();
		int temp = bdd.ref(bdd.and(bddRef, trivialPast));
		bdd.deref(bddRef);
		bddRef = temp;
	}
		
	static void buildAndReferenceFailureAndSuccessSentences()
	{
		F = bdd.ref(bdd.or(a, b));
		S = bdd.ref(bdd.and(bdd.not(a), bdd.not(b)));
	}
		
	static void includeSuccessOrFailureSentenceWithoutFailVar()
	{
		int temp = bdd.ref(bdd.or(S, F));
		bdd.ref(bdd.and(bddRef, temp));
		bdd.deref(bddRef);
		bddRef = temp;
	}
	
	static void derefFailureAndSuccessSentences()
	{
		bdd.deref(F);
		bdd.deref(S);
	}
		
	//Original - 
	//DNF: (fail ^ F) v (~fail ^ S)
	//CNF: (fail v S) ^ (F ^ ~fail) ^ (F v S)
	//With literals: 
	// DNF: (fail ^ (a v b)) v (~fail ^ (~a ^ ~b)) 							= (fail ^ a) v (fail ^ b) v (~fail ^ ~a ^ ~b)
	// CNF: (fail v (~a ^ ~b)) ^ ((a v b) ^ ~fail)) ^ ((a v b) v (~a ^ ~b)) = (fail v ~a) ^ (fail v ~b) ^ (~fail v a v b)
	static void runVersion1(boolean withTrivialPast, boolean withSuccessOrFailureSentenceWithoutFailVar)
	{	
		BDD_ScratchPad withTrivialPast_Test = new BDD_ScratchPad(withTrivialPast);
		
		if(!withTrivialPast){System.out.println();}
		System.out.println("Version 1:\n");
		
		buildAndReferenceFailureAndSuccessSentences();
		
		int temp1 = bdd.ref(bdd.and(fail, F));
		int temp2 = bdd.ref(bdd.and(bdd.not(fail), S));
		int temp3 = bdd.ref(bdd.or(temp1, temp2));
		int	temp = bdd.ref(bdd.and(temp3, bddRef));
		
		bdd.deref(temp1);
		bdd.deref(temp2);
		bdd.deref(temp3);
		bdd.deref(bddRef);
		bddRef = temp;
		
		if(withSuccessOrFailureSentenceWithoutFailVar)
			includeSuccessOrFailureSentenceWithoutFailVar();
		
		derefFailureAndSuccessSentences();
		
		printResults();
		
		bdd.deref(bddRef);
		bdd = null;
	}

	//Revised -
	// DNF: fail v (~F ^ S)
	// CNF: (fail v ~F) ^ (fail v S)
	//With literals: 
	// DNF: fail v ((~(a v b)) ^ (~a ^ ~b)) 		= fail v (~a ^ ~b)
	// CNF: (fail v ~(a v b)) ^ (fail v (~a ^ ~b)) 	= (fail v ~a) ^ (fail v ~b)
	static void runVersion2(boolean withTrivialPast, boolean withSuccessOrFailureSentenceWithoutFailVar)
	{
		BDD_ScratchPad withTrivialPast_Test = new BDD_ScratchPad(withTrivialPast);
		
		if(!withTrivialPast){System.out.println();}
		System.out.println("Version 2:\n");
		
		buildAndReferenceFailureAndSuccessSentences();
		
		int temp1 = bdd.ref(bdd.and(bdd.not(F), S));
		int temp2 = bdd.ref(bdd.or(fail, temp1));
		int	temp = bdd.ref(bdd.and(temp2, bddRef));
				
		bdd.deref(temp1);
		bdd.deref(temp2);
		bdd.deref(bddRef);
		bddRef = temp;
		
		if(withSuccessOrFailureSentenceWithoutFailVar)
			includeSuccessOrFailureSentenceWithoutFailVar();
		
		derefFailureAndSuccessSentences();
		
		printResults();
		
		bdd.deref(bddRef);
		bdd = null;
	}
	
	//Newest version - 
	// DNF: (fail ^ F) v S
	// CNF: (fail v S) ^ (F v S)
	//With literals: 
	// DNF: (fail ^ (a v b)) v (~a ^ ~b) 				= (fail ^ a) v (fail ^ b) v (a ^ b)
	// CNF: (fail v (~a ^ ~b)) ^ ((a v b) v (~a ^ ~b)) 	= (fail v ~a) ^ (fail v ~b)
	static void runVersion3(boolean withTrivialPast, boolean withSuccessOrFailureSentenceWithoutFailVar)
	{
		BDD_ScratchPad withTrivialPast_Test = new BDD_ScratchPad(withTrivialPast);
		
		if(!withTrivialPast){System.out.println();}
		System.out.println("Version 3:\n");
		
		buildAndReferenceFailureAndSuccessSentences();
		
		int temp = bdd.ref(bdd.and(fail, F));
		int temp2 = bdd.ref(bdd.or(temp, S));
		int temp3 = (bdd.ref(bdd.and(temp2, bddRef)));
		
		bdd.deref(temp);
		bdd.deref(temp2);
		bdd.deref(bddRef);
		bddRef = temp3;
		
		if(withSuccessOrFailureSentenceWithoutFailVar)
			includeSuccessOrFailureSentenceWithoutFailVar();

		derefFailureAndSuccessSentences();
		
		printResults();
		
		bdd.deref(bddRef);
		bdd = null;
	}
	
	static void removeFailVar()
	{	
		boolean[] v = new boolean[numVars];
		v[v.length-1] = true;
		
		//for(int i = 0; i < v.length; i++)
		//	v[i] = true;
		//v[v.length - 1] = false;

		
		int cube = bdd.cube(v);
		
		//Should be the current KB's clauses minus all failVar references
		int removed = bdd.exists(bddRef, cube); 		
		bdd.deref(bddRef);
		bddRef = removed;
	}
	
	static void printResults()
	{
		System.out.println("BEFORE");
		bdd.printSet(bddRef);
		
		removeFailVar();
		
		System.out.println("AFTER");
		bdd.printSet(bddRef);
	}
}

//WITH TRIVIAL PAST TESTS//////////////////////
//	PHI With Trivial Past: 1

//  Version 1:

//	BEFORE
//	1000 (trivialPast ^ ~a ^ ~b ^ ~fail) v
//	1011 (trivialPast ^ ~a ^ b ^ fail) v
//	11-1 (trivialPast ^ a ^ fail)

//	AFTER
//  1--- (trivialPast)

//	Version 2:

//	BEFORE
//	100- (trivialPast ^ ~a ^ ~b) v
//	1011 (trivialPast ^ ~a ^ b ^ fail) v
//	11-1 (trivialPast ^ a ^ fail)

//	AFTER
//  1--- (trivialPast)

//	Version 3:

//	BEFORE
//  100- (trivialPast ^ ~a ^ ~b) v
//  1011 (trivialPast ^ ~a ^ b ^ fail) v
//  11-1 (trivialPast ^ a ^ fail)

//	AFTER
//  1--- (trivialPast)

//	WITHOUT TRIVIAL PAST TESTS///////////////////
//	PHI Without Trivial Past: TRUE

//	Version 1:

//	BEFORE
//	000 (~a ^ ~b ^ ~fail) v
//	011 (~a ^ b ^ fail) v
//	1-1 (a ^ fail)

//	AFTER
//	TRUE

//	Version 2:

//	BEFORE
//	00- (~a ^ ~b) v
//	011 (~a ^ b ^ fail) v
//	1-1 (a ^ fail)

//	AFTER
//	TRUE

//	Version 3:

//	BEFORE
//  00- (~a ^ ~b) v
//  011 (~a ^ b ^ fail) v
//  1-1 (a ^ fail)

//	AFTER
//	TRUE

//	WITH TRIVIAL PAST TESTS & (S v F) SENTENCE///////
//	
//	PHI With Trivial Past: 1
//	
//	Version 1:
//	
//	BEFORE
//	TRUE
//	AFTER
//	TRUE
//	
//	PHI With Trivial Past: 1
//	
//	Version 2:
//	
//	BEFORE
//	TRUE
//	AFTER
//	TRUE
//	
//	PHI With Trivial Past: 1
//	
//	Version 3:
//	
//	BEFORE
//	TRUE
//	AFTER
//	TRUE
//	
//	WITHOUT TRIVIAL PAST TESTS & (S v F) SENTENCE////
//	
//	PHI Without Trivial Past: TRUE
//	
//	Version 1:
//	
//	BEFORE
//	TRUE
//	AFTER
//	TRUE
//	
//	PHI Without Trivial Past: TRUE
//	
//	Version 2:
//	
//	BEFORE
//	TRUE
//	AFTER
//	TRUE
//	
//	PHI Without Trivial Past: TRUE
//	
//	Version 3:
//	
//	BEFORE
//	TRUE
//	AFTER
//	TRUE

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//F = (a v b)
//S = (~a ^ ~b)

//Original - 
//DNF: (fail ^ F) v (~fail ^ S)
//CNF: (fail v S) ^ (F ^ ~fail) ^ (F v S)
//With literals: 
// DNF: (fail ^ (a v b)) v (~fail ^ (~a ^ ~b)) 								= (fail ^ a) v (fail ^ b) v (~fail ^ ~a ^ ~b)
// CNF: (fail v (~a ^ ~b)) ^ ((a v b) ^ ~fail)) ^ ((a v b) v (~a ^ ~b)) 	= (fail v ~a) ^ (fail v ~b) ^ (~fail v a v b)

//Revised -
// DNF: fail v (~F ^ S)
// CNF: (fail v ~F) ^ (fail v S)
//With literals: 
// DNF: fail v ((~(a v b)) ^ (~a ^ ~b)) 									= fail v (~a ^ ~b) 
// CNF: (fail v ~(a v b)) ^ (fail v (~a ^ ~b)) 								= (fail v ~a) ^ (fail v ~b) resolves to above in DNF

//Newest version - 
// DNF: (fail ^ F) v S
// CNF: (fail v S) ^ (F v S)
//With literals: 
// DNF: (fail ^ (a v b)) v (~a ^ ~b) 										= (fail ^ a) v (fail ^ b) v (~a ^ ~b)
// CNF: (fail v (~a ^ ~b)) ^ ((a v b) v (~a ^ ~b)) 							= (fail v ~a) ^ (fail v ~b) resolves to revised in DNF
