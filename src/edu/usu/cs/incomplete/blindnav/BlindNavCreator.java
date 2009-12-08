package edu.usu.cs.incomplete.blindnav;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Random;

public class BlindNavCreator {
	
	private static int gridSize;
	private static String outputDir;
	private static int numFiles = 1;
	private static Random random = new Random();
	
	public static void main(String[] args) {
		if(!IsInputValid(args)) {
			usage();
			return;
		}
		
		createDomains();
		
		createProblem();
	}
	
	private static void createDomains() {
		
		for(int fileIndex = 1; fileIndex <= numFiles; fileIndex++) {
			
			List<String> predicates = new ArrayList<String>();
			
			StringBuilder output = new StringBuilder();
			output.append("(define (domain BlindNav)\n");
			output.append("(:requirements :fluents :incomplete-domain)\n\n");
			
			// Predicates
			output.append("(:predicates\n");
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					predicates.add("at_" + x + "_" + y);
					output.append(" (" + predicates.get(predicates.size() - 1) + ")");
				}
				output.append("\n");
			}
			output.append(" (at_bus_stop)\n");
			output.append(")\n\n");
			
			// Move Actions
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					if(x > 0) {
						output.append(createMoveAction(x, y, (x-1), y));
					}
					if(x < gridSize - 1) {
						output.append(createMoveAction(x, y, (x+1), y));
					}
					if(y > 0) {
						output.append(createMoveAction(x, y, x, (y-1)));
					}
					if(y < gridSize - 1) {
						output.append(createMoveAction(x, y, x, (y+1)));
					}
				}
			}
			
			// Move to bus stop action
			output.append("(:action move_bus_stop\n");
			output.append(" :parameters ()\n");
			output.append(String.format(" :precondition (and (at_%d_%d))\n", (gridSize-1),(gridSize-1)));
			output.append(String.format(" :effect (and (not (at_%d_%d)) (at_bus_stop))\n", (gridSize-1), (gridSize-1)));
			output.append(")\n\n");
			
			output.append(")");
			
			// Save to a file
			try {
				String outputFile = outputDir + "/blindnav_" + gridSize + "_" + fileIndex + ".pddl";
				FileWriter fstream = new FileWriter(outputFile, false);
				BufferedWriter out = new BufferedWriter(fstream);
				out.write(output.toString());
				out.close();
				System.out.println("\nDomain file created at " + outputFile);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	private static void createProblem() {
		StringBuilder output = new StringBuilder("(define (problem blindnav)\n");
		output.append("    (:domain BlindNav)\n\n");
		output.append("    (:init (and (at_0_0)))\n\n");
		output.append("    (:goal (and (at_bus_stop)))\n");
		output.append(")");
		
//		System.out.println(output);
		
		// Create the file
		try {
			String outputFile = outputDir + "/blindnav_problem.pddl";
			FileWriter fstream = new FileWriter(outputFile, false);
			BufferedWriter out = new BufferedWriter(fstream);
			out.write(output.toString());
			out.close();
			System.out.println("\nProblem file created at " + outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static StringBuilder createMoveAction(int x1, int y1, int x2, int y2) {
		StringBuilder output = new StringBuilder("");
		output.append(String.format("(:action move_%d_%d_%d_%d\n", x1, y1, x2, y2));
		output.append(" :parameters ()\n");
		
		output.append(String.format(" :precondition (and (at_%d_%d))\n", x1, y1));
		output.append(String.format(" :effect (and (not (at_%d_%d)) (at_%d_%d))\n", x1, y1, x2, y2));
		
		output.append(")\n\n");
		return output;
	}
	
	private static boolean IsInputValid(String[] args) {
		
		if(args.length < 2 || args.length > 3) {
			return false;
		}
		
		try {
			gridSize = Integer.parseInt(args[0]);
			if(gridSize < 1) {
				throw new NumberFormatException();
			}
		} catch (NumberFormatException e) {
			System.out.println("Grid Size must be an integer value greater than 0.");
			return false;
		}
		
		outputDir = args[1];
		
		if(args.length == 3) {
			try {
				numFiles = Integer.parseInt(args[2]);
				if(numFiles < 1) {
					throw new NumberFormatException();
				}
			} catch (NumberFormatException e) {
				System.out.println("File count must be an integer value greater than 0.");
				return false;
			}
		}
		
		return true;
	}
	
	private static void usage() {
		System.out.println("usage:\tjava BlindNavCreator [Grid Size] [Output Directory] [Optional: Number of Domain Files]");
		System.out.println("\tGrid Size\t\tInteger value from 1 to many.");
		System.out.println("\tOutput Dir\t\tThe directory where the files will be created.");
		System.out.println("\tNumber of domain \n\tfiles to be created\tInteger value from 1 to many. Default is 1.");
	}
}
