/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id$
 */
package edu.usu.cs.plangraph.test;

import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import edu.usu.cs.pddl.antlr.*;

public class RunANTLR {
	static String[] tokenNames;

	public static void main(String[] args) throws Exception {
        if (args.length != 1) {
            System.err.println("usage: java " + RunANTLR.class.getName() + " <PDDL-file-name>");
            System.exit(0);
        }
		CharStream input = new ANTLRFileStream(args[0]);
		PddlLexer lex = new PddlLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lex);

		//System.out.println("tokens="+tokens);
		PddlParser parser = new PddlParser(tokens);
		tokenNames = parser.getTokenNames();

        PddlParser.pddlDoc_return t = parser.pddlDoc();
		CommonTree tree = (CommonTree) t.getTree();
		//System.out.println("Tree class: " + tree.getClass());
		// System.out.println(tree.toStringTree());

		System.out.println("Tree:");
		printTree(tree, "");
        
        System.out.println("------------------------------------------------");
        System.out.println(tree.toStringTree());
        //System.out.println("Types: " + parser.types);

//        System.out.println("------------------------------------------------");
//        CommonTreeNodeStream nodes = new CommonTreeNodeStream(tree);
//        PddlTreeWalker walker = new PddlTreeWalker(nodes);
//        walker.pddlDoc();
	}

	private static void printTree(CommonTree t, String indent) {
		String tokenType = tokenNames[t.getType()];
		System.out.println(indent + tokenType + "\t" + t.getText());

		// Now print children
		String childIndent = indent + "  ";
		for (int i=0; i < t.getChildCount(); i++) {
			CommonTree c = (CommonTree) t.getChild(i);
			printTree(c, childIndent);
		}
	}
}
