/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id$
 */
package edu.usu.cs.plangraph;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CharStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.tree.CommonTree;
import org.apache.log4j.Logger;

import edu.usu.cs.pddl.antlr.PddlLexer;
import edu.usu.cs.pddl.antlr.PddlParser;

public class RunANTLR {
	static String[] tokenNames;
	
	private static Logger logger = Logger.getLogger(RunANTLR.class.getName());

	public static void main(String[] args) throws Exception {
        if (args.length != 1) {
            System.err.println("usage: java " + RunANTLR.class.getName() + " <PDDL-file-name>");
            System.exit(0);
        }
		CharStream input = new ANTLRFileStream(args[0]);
		PddlLexer lex = new PddlLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lex);

		//logger.debug("tokens="+tokens);
		PddlParser parser = new PddlParser(tokens);
		tokenNames = parser.getTokenNames();

        PddlParser.pddlDoc_return t = parser.pddlDoc();
		CommonTree tree = (CommonTree) t.getTree();
		//logger.debug("Tree class: " + tree.getClass());
		// logger.debug(tree.toStringTree());

		logger.debug("Tree:");
		printTree(tree, "");
        
        logger.debug("------------------------------------------------");
        logger.debug(tree.toStringTree());
        //logger.debug("Types: " + parser.types);

//        logger.debug("------------------------------------------------");
//        CommonTreeNodeStream nodes = new CommonTreeNodeStream(tree);
//        PddlTreeWalker walker = new PddlTreeWalker(nodes);
//        walker.pddlDoc();
	}

	private static void printTree(CommonTree t, String indent) {
		String tokenType = tokenNames[t.getType()];
		logger.debug(indent + tokenType + "\t" + t.getText());

		// Now print children
		String childIndent = indent + "  ";
		for (int i=0; i < t.getChildCount(); i++) {
			CommonTree c = (CommonTree) t.getChild(i);
			printTree(c, childIndent);
		}
	}
}
