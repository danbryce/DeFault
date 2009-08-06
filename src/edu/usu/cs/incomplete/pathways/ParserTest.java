package edu.usu.cs.incomplete.pathways;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.CharBuffer;

public class ParserTest {
	
	public static final String action = ":action";
	
	public static void main(String[] args) {
		if(!(args.length == 2 || args.length == 3 || args.length == 8)) {
			usage();
		}
		
		File inputFile = new File(args[0]);
		File outputFile = new File(args[1]);
		if (!inputFile.exists()) {
			System.err.println("Unable to find input PDDL domain file " + args[0]);
			usage();
		}
		
		Parser parser = new Parser(inputFile);
		if(args.length == 3) {
			double probs = Double.parseDouble(args[2]);
			parser.setP(probs);
		}
		if(args.length == 8) {
			double[] probs = new double[6];
			for(int i = 2; i < 8; i++) {
				probs[i-2] = Double.parseDouble(args[i]);
			}
			parser.setP(probs);
		}
		
		String fileContents = parser.getFileContents();
		System.out.println(fileContents);
		try {
			FileWriter fstream = new FileWriter(outputFile);
			fstream.write(fileContents);
			fstream.close();
			System.out.println("Written to " + args[1]);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private static void usage() {
		System.err.println("usage: java ParserTest <input-domain-pddl-file> <output-domain-pddl-file>");
		System.exit(1);
	}
}
