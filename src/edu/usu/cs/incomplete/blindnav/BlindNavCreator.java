package edu.usu.cs.incomplete.blindnav;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.Random;

public class BlindNavCreator {
	
	private static enum ObsType {
		None,
		Highly,
		Lowly,
		LowlyLowly,
	}
	
	private static int gridSize;
	private static String outputDir;
	private static int numFiles = 1;
	private static Random random = new Random();
	
	private static final String at_bus_stop = "at_bus_stop";
	private static final String found = "found";
	
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
			
			StringBuilder output = new StringBuilder();
			output.append("(define (domain BlindNav)\n");
			output.append("(:requirements :fluents :incomplete-domain)\n\n");
			
			// Predicates
			
			// Initialize at_x1_y1
			output.append("(:predicates\n");
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					output.append(String.format(" (%s)", at(x, y)));
				}
				output.append("\n");
			}
			
			// Initialize near_x1_y1
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					output.append(String.format(" (%s)", near(x, y)));
				}
				output.append("\n");
			}
			
			// found, at_bus_stop
			output.append(String.format(" (%s) (%s)\n", found, at_bus_stop));
			output.append(")\n\n");
			
			// MoveToward Actions
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					if(x > 0) {
						output.append(createMoveTowardAction(x, y, (x-1), y));
					}
					if(x < gridSize - 1) {
						output.append(createMoveTowardAction(x, y, (x+1), y));
					}
					if(y > 0) {
						output.append(createMoveTowardAction(x, y, x, (y-1)));
					}
					if(y < gridSize - 1) {
						output.append(createMoveTowardAction(x, y, x, (y+1)));
					}
				}
			}
			
			// ArriveAt Actions
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					if(x > 0) {
						output.append(createArriveAtAction(x, y, (x-1), y));
					}
					if(x < gridSize - 1) {
						output.append(createArriveAtAction(x, y, (x+1), y));
					}
					if(y > 0) {
						output.append(createArriveAtAction(x, y, x, (y-1)));
					}
					if(y < gridSize - 1) {
						output.append(createArriveAtAction(x, y, x, (y+1)));
					}
				}
			}
			
			// Observe Actions
			for(int x = 0; x < gridSize; x++) {
				for(int y = 0; y < gridSize; y++) {
					
					int ot = random.nextInt(4);
					ObsType obsType;
					switch(ot) {
					case 0: obsType = ObsType.None; break;
					case 1: obsType = ObsType.Highly; break;
					case 2: obsType = ObsType.Lowly; break;
					case 3: obsType = ObsType.LowlyLowly; break;
					default: obsType = null;
					}
					
//					if(x > 0) {
//						output.append(createObserveAction(x, y, (x-1), y));
//					}
					if(x < gridSize - 1) {
						output.append(createObserveAction(x, y, (x+1), y, obsType));
					}
//					if(y > 0) {
//						output.append(createObserveAction(x, y, x, (y-1)));
//					}
					if(y < gridSize - 1) {
						output.append(createObserveAction(x, y, x, (y+1), obsType));
					}
				}
			}
			
			// Move to bus stop action
			output.append("(:action move_bus_stop\n");
			output.append(" :parameters ()\n");
			output.append(String.format(" :precondition (and (%s))\n", at(gridSize-1, gridSize-1)));
			output.append(String.format(" :effect (and (not (%s)) (%s))\n", at(gridSize-1, gridSize-1), at_bus_stop));
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
		output.append(String.format("    (:init (%s) (%s) (%s))\n\n", at(0, 0), near(0, 0), found));
		output.append(String.format("    (:goal (and (%s)))\n", at_bus_stop));
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
	
	private static StringBuilder createMoveTowardAction(int x1, int y1, int x2, int y2) {
		StringBuilder output = new StringBuilder();
		output.append(String.format("(:action move_toward_%d_%d_%d_%d\n", x1, y1, x2, y2));
		output.append(" :parameters ()\n");
		
		output.append(String.format(" :precondition (and (%s) (%s))\n", at(x1, y1), found));
		output.append(String.format(" :effect (and (not (%s)) (%s))\n", at(x1, y1), near(x2, y2)));
		output.append(String.format(" :poss-effect (and (not (%s)))\n", found));
		
		output.append(")\n\n");
		return output;
	}
	
	private static StringBuilder createArriveAtAction(int x1, int y1, int x2, int y2) {
		StringBuilder output = new StringBuilder();
		output.append(String.format("(:action arrive_at_%d_%d_%d_%d\n", x1, y1, x2, y2));
		output.append(" :parameters ()\n");
		
		output.append(String.format(" :precondition (and (%s) (%s))\n", near(x1, y1), near(x2, y2)));
		output.append(String.format(" :poss-precondition (and (%s))\n", found));
		output.append(String.format(" :effect (and (not (%s)) (%s))\n", near(x1, y1), at(x2, y2)));
		
		output.append(")\n\n");
		return output;
	}
	
	private static StringBuilder createObserveAction(int x1, int y1, int x2, int y2, ObsType obsType) {
		switch(obsType) {
		case None:
			return new StringBuilder();
		case Highly:
			return createHighlyObservableAction(x1, y1, x2, y2);
		case Lowly:
			return createLowlyObservableAction(x1, y1, x2, y2, 1);
		case LowlyLowly:
			return createLowlyObservableAction(x1, y1, x2, y2, 2);
		}
		return null;
	}
	
	private static StringBuilder createHighlyObservableAction(int x1, int y1, int x2, int y2) {
		StringBuilder output = new StringBuilder();
		
		output.append(String.format("(:action observe_high_%d_%d_%d_%d\n", x1, y1, x2, y2));
		output.append(String.format(" :parameters ()\n"));
		
		output.append(String.format(" :precondition (and (%s) (%s))\n", near(x1, y1), near(x2, y2)));
		output.append(String.format(" :effect (and (%s))\n", found));
		
		output.append(")\n\n");
		return output;
	}
	
	private static StringBuilder createLowlyObservableAction(int x1, int y1, int x2, int y2, int count) {
		StringBuilder output = new StringBuilder();
		
		for(int i = 1; i <= count; i++) {
			output.append(String.format("(:action observe_low_%d_%d_%d_%d_%d\n", x1, y1, x2, y2, i));
			output.append(String.format(" :parameters ()\n"));
			
			output.append(String.format(" :precondition (and (%s) (%s))\n", near(x1, y1), near(x2, y2)));
			output.append(" :effect (and )\n");
			output.append(String.format(" :poss-effect (and (%s))\n", found));
			
			output.append(")\n\n");
		}
		
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
	
	private static StringBuilder at(int x, int y) {
		return new StringBuilder(String.format("at_%d_%d", x, y));
	}
	
	private static StringBuilder near(int x, int y) {
		return new StringBuilder(String.format("near_%d_%d", x, y));
	}
	
	private static void usage() {
		System.out.println("usage:\tjava BlindNavCreator [Grid Size] [Output Directory] [Optional: Number of Domain Files]");
		System.out.println("\tGrid Size\t\tInteger value from 1 to many.");
		System.out.println("\tOutput Dir\t\tThe directory where the files will be created.");
		System.out.println("\tNumber of domain \n\tfiles to be created\tInteger value from 1 to many. Default is 1.");
	}
}
