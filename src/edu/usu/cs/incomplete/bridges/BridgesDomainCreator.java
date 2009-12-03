package edu.usu.cs.incomplete.bridges;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class BridgesDomainCreator {
	private static int gridSize;
	private static double density;
	private static String outputFileDestination;
	private static int fileCount = 1;
	private static Random random = new Random();
	private static int actionCount;
	
	public static void main(String[] args) {
		if(!IsInputValid(args)) {
			return;
		}
		
		createDomains(args);
		
		createProblem();
	}

	private static void createDomains(String[] args) {
		// The total number of actions
		actionCount = (gridSize * (gridSize - 1) * 4);
		
		// The total number of bridges
		// I halved it because if we find one action with 
		int bridgeCount = (int)(actionCount * density / 2 + 0.5);
		
		Set<String> bridges = new HashSet<String>();
				
		for(int fileIndex = 1; fileIndex <= fileCount; fileIndex++) {
			
			// Create the bridges
			bridges.clear();
			while(bridges.size() < bridgeCount) {
				// Pick a direction
				boolean xDirection = random.nextBoolean();
				
				if(xDirection) {
					// Get a value between 0 and size - 1 for the x value
					int xBridgeIndex = random.nextInt(gridSize - 1);
					
					// And a value between 0 and size for the y value
					int yBridgeIndex = random.nextInt(gridSize);
					
					String bridge = "bridge_" + xBridgeIndex + "_" + yBridgeIndex + "_" + (xBridgeIndex + 1) + "_" + yBridgeIndex;
					
					// If there is no bridge here, put it in
					if(!bridges.contains(bridge)) {
						bridges.add(bridge);
					}
				}
				else {
					// Get a value between 0 and size for the x value
					int xBridgeIndex = random.nextInt(gridSize);
					
					// And a value between 0 and size - 1 for the y value
					int yBridgeIndex = random.nextInt(gridSize - 1);
					
					String bridge = "bridge_" + xBridgeIndex + "_" + yBridgeIndex + "_" + xBridgeIndex + "_" + (yBridgeIndex + 1);
					
					// If there is no bridge here, put it in
					if(!bridges.contains(bridge)) {
						bridges.add(bridge);
					}
				}
			}
			
			StringBuilder output = new StringBuilder("(define (domain Bridges)\n(:requirements :fluents :incomplete-domain)\n\n");
			
			// Create the predicates
			output.append("(:predicates\n");
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					output.append(" (at_" + x + "_" + y + ")");
				}
				output.append("\n");
			}
			
			// Create the bridge predicates
			for(String bridge : bridges) {
				output.append(" (" + bridge + ")");
			}
			
			output.append(")\n\n");
			
			// Create the actions
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					// Create up to 4 actions
					StringBuilder prec = new StringBuilder("(at_" + x + "_" + y + ")");
					StringBuilder add = null;
					
					// Create a move up action
					if(x > 0) {
						add = new StringBuilder("(at_" + (x - 1) + "_" + y + ")");
						output.append("(:action move_" + x + "_" + y + "_" + (x - 1) + "_" + y + "\n");
						
						// Add parameters and preconditions
						output.append(" :parameters ()\n :precondition (and " + prec + ")\n");
						
						// Add possprec
						String bridge = "bridge_" + (x - 1) + "_" + y + "_" + x + "_" + y;
						if(bridges.contains(bridge)) {
							output.append(" :poss-precondition (and (" + bridge + "))\n");
						}
						
						// Add effect
						output.append(" :effect (and (not " + prec + ") " + add + ")");
						output.append("\n)\n\n");
					}
					
					// Create a move down action
					if(x < gridSize - 1) {
						add = new StringBuilder("(at_" + (x + 1) + "_" + y + ")");
						output.append("(:action move_" + x + "_" + y + "_" + (x + 1) + "_" + y + "\n");
						
						// Add parameters and preconditions
						output.append(" :parameters ()\n :precondition (and " + prec + ")\n");
						
						// Add possprec
						String bridge = "bridge_" + x + "_" + y + "_" + (x + 1) + "_" + y;
						if(bridges.contains(bridge)) {
							output.append(" :poss-precondition (and (" + bridge + "))\n");
						}
						
						// Add effect
						output.append(" :effect (and (not " + prec + ")" + add + ")");
						output.append("\n)\n\n");
					}
					
					// Create a move left action
					if(y > 0) {
						add = new StringBuilder("(at_" + x + "_" + (y - 1) + ")");
						output.append("(:action move_" + x + "_" + y + "_" + x + "_" + (y - 1) + "\n");
						
						// Add parameters and preconditions
						output.append(" :parameters ()\n :precondition (and " + prec + ")\n");
						
						// Add possprec
						String bridge = "bridge_" + x + "_" + (y - 1) + "_" + x + "_" + y;
						if(bridges.contains(bridge)) {
							output.append(" :poss-precondition (and (" + bridge + "))\n");
						}

						// Add effect
						output.append(" :effect (and (not " + prec + ")" + add + ")");
						output.append("\n)\n\n");
					}
					
					// Create a move right action
					if(y < gridSize - 1) {
						add = new StringBuilder("(at_" + x + "_" + (y + 1) + ")");
						output.append("(:action move_" + x + "_" + y + "_" + x + "_" + (y + 1) + "\n");
						
						// Add parameters and preconditions
						output.append(" :parameters ()\n :precondition (and " + prec + ")\n");
						
						// Add possprec
						String bridge = "bridge_" + x + "_" + y + "_" + x + "_" + (y + 1);
						if(bridges.contains(bridge)) {
							output.append(" :poss-precondition (and (" + bridge + "))\n");
						}

						// Add effect
						output.append(" :effect (and (not " + prec + ")" + add + ")");
						output.append("\n)\n\n");
					}
				}
			}
			
			// Close off the domain file
			output.append(")");
			
//			System.out.println(output);
			
			// Create the file
			try {
				String outputFile = args[2] + "/bridges_" + density + "_" + fileIndex + ".pddl";
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
		StringBuilder output = new StringBuilder("(define (problem bridges)\n");
		output.append("    (:domain Bridges)\n\n");
		output.append("    (:init (at_0_0))\n\n");
		output.append("    (:goal (and (at_" + (gridSize - 1) + "_" + (gridSize - 1) + ")))\n");
		output.append(")");
		
//		System.out.println(output);
		
		// Create the file
		try {
			String outputFile = outputFileDestination + "/bridges_" + density + "_problem.pddl";
			FileWriter fstream = new FileWriter(outputFile, false);
			BufferedWriter out = new BufferedWriter(fstream);
			out.write(output.toString());
			out.close();
			System.out.println("\nProblem file created at " + outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static boolean IsInputValid(String[] args) {
		if(args.length < 3 || args.length > 4) {
			usage();
			return false;
		}
		
		// Verify that args[0] is an integer > 0
		try {
			gridSize = Integer.parseInt(args[0]);
			if(gridSize <= 0) {
				throw new NumberFormatException();
			}
		} catch(NumberFormatException e) {
			System.out.println("Grid Size must be an integer value greater than 0.");
			usage();
			return false;
		}
		
		// Verify that args[1] is a double from between 0 and 1 inclusive
		try {
			density = Double.parseDouble(args[1]);
			if(density < 0 || density > 1) {
				throw new NumberFormatException();
			}
		} catch(NumberFormatException e) {
			System.out.println("Bridge Density must be a decimal value between 0 and 1 (can be 0 or 1).");
			usage();
			return false;
		}
		
		// Verify that the number of domain files is correct
		if(args.length == 4) {
			try {
				fileCount = Integer.parseInt(args[3]);
				if(fileCount < 1) {
					throw new NumberFormatException();
				}
			} catch(NumberFormatException e) {
				System.out.println("File count must be an integer value greater than 0.");
				usage();
				return false;
			}
		}
		
		outputFileDestination = args[2];
		
		return true;
	}
	
	private static void usage() {
		System.out.println("usage: java BridgesCreator [Grid Size] [Bridge Density] [Output File] [Optional: Number of Domain Files]");
		System.out.println("\tGrid Size\tInteger value from 1 to many.");
		System.out.println("\tBridge Density\tdecimal from 0 to 1 representing the percentage of connections that are bridges.");
		System.out.println("\tOutput Dir\tThe directory where the files will be created.");
		System.out.println("\tOptional\tNumber of domain files to be created. Integer value from 1 to many. Default is 1.");
	}
}
