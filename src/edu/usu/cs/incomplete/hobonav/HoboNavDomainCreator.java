package edu.usu.cs.incomplete.hobonav;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class HoboNavDomainCreator {
	
	private static String outputDomainFile;
	private static String outputProblemFile;
	private static int gridSize;			// Width and height of the grid
	private static int itemCount;			// Number of items that exist in the domain
	private static double tollDensity;		// density of locations where a hobo must have an item to traverse
	private static double gambleDensity;	// density of locations where a hobo may get an item
	private static double easyMarkDensity;	// density of locations where a hobo will get an item
	
	private static Random random = new Random(1);
	
	private static String[] items = {
		"bindle",				// collection of belongings wrapped in cloth and tied around a stick
		"california blankets",	// newspapers, intended to be used for bedding
		"glad rags",			// one's best clothes
		"road stake",			// the small amount of money a hobo may have in case of an emergency
		"snipes",				// cigarette butts "sniped" (eg. in ashtrays)
		"banjo",				// (1) a small portable frying pan. (2) a short, "D" handled shovel
		"mulligan stew", 		// a type of community stew, created by several hobos combining whatever food they have or can collect
		"gump",					// a scrap of meat
		"crumbs",				// lice
		};
	
	public static void main(String[] args) {
		if (!isInputValid(args)) {
			return;
		}
		
		createDomain();
		createProblem();
	}
	
	private static void createDomain() {
		
		StringBuilder output = new StringBuilder();
		
		// Create the preliminary stuff
		output.append("(define (domain HoboNav)\n");
		output.append("(:requirements :fluents :incomplete-domain)\n");
		output.append("\n");
		
		// Create predicates
		output.append("(:predicates\n");
		List<String> atPredicates = new ArrayList<String>();
		List<String> havePredicates = new ArrayList<String>();
		for (int x = 0; x < gridSize; x++) {
			for (int y = 0; y < gridSize; y++) {
				atPredicates.add("(at_" + x + "_" + y + ")");
				output.append(" " + atPredicates.get(atPredicates.size() - 1));
			}
			output.append("\n");
		}
		
		for (int i = 0; i < itemCount; i++) {
			havePredicates.add("(have_" + items[i] + ")");
			output.append(" " + havePredicates.get(havePredicates.size() - 1));
		}
		
		output.append("\n)\n");
		
		// Create actions
		for (int x = 0; x < gridSize; x++) {
			for (int y = 0; y < gridSize; y++) {
				
				if (x != gridSize - 1) {
					
					// Get any possible preconditions to these actions
					List<String> possPrecs = new ArrayList<String>();
					for (int i = 0; i < itemCount; i++) {
						if (random.nextDouble() < tollDensity) {
							possPrecs.add(items[i]);
						}
					}
					
					output.append(getMoveAction(x, y, x + 1, y, possPrecs));
					output.append(getMoveAction(x + 1, y, x, y, possPrecs));
				}
				
				if (y != gridSize - 1) {
					
					// Get any possible preconditions to these actions
					List<String> possPrecs = new ArrayList<String>();
					for (int i = 0; i < itemCount; i++) {
						if (random.nextDouble() < tollDensity) {
							possPrecs.add(items[i]);
						}
					}
					
					output.append(getMoveAction(x, y, x, y + 1, possPrecs));
					output.append(getMoveAction(x, y + 1, x, y, possPrecs));
				}
			}
		}
		
		// Create the gamble actions
		for (int x = 0; x < gridSize; x++) {
			for (int y = 0; y < gridSize; y++) {
				for (int item = 0; item < itemCount; item++) {
					if (random.nextDouble() < gambleDensity) {
						output.append(getGambleAction(x, y, items[item]));
					}
				}
			}
		}
		
		// Create the easy mark actions
		for (int x = 0; x < gridSize; x++) {
			for (int y = 0; y < gridSize; y++) {
				for (int item = 0; item < itemCount; item++) {
					if (random.nextDouble() < easyMarkDensity) {
						output.append(getEasyMarkAction(x, y, items[item]));
					}
				}
			}
		}
		
		// Close domain file
		output.append(")\n");
		
		// Write out to the file
		try {
			FileWriter fileWriter = new FileWriter(outputDomainFile);
			BufferedWriter out = new BufferedWriter(fileWriter);
			
			out.write(output.toString());
			System.out.println("Domain written to: " + outputDomainFile);
			
			out.close();
			fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static String getMoveAction(int fromX, int fromY, int toX, int toY, List<String> possPrecs) {
		StringBuilder output = new StringBuilder();
		output.append("\n(:action move_" + fromX + "_" + fromY + "_" + toX + "_" + toY + "\n");
		output.append(" :parameters ()\n");
		output.append(" :precondition (and (at_" + fromX + "_" + fromY + "))\n");
		if (possPrecs.size() > 0) {
			output.append( " :poss-precondition (and");
			for (String possPrec : possPrecs) {
				output.append(" (have_" + possPrec + ")");
			}
			output.append(")\n");
		}
		output.append(" :effect (and (not (at_" + fromX + "_" + fromY + ")) (at_" + toX + "_" + toY + "))\n");
		output.append(")\n");
		return output.toString();
	}
	
	private static String getGambleAction(int x, int y, String item) {
		StringBuilder output = new StringBuilder();
		
		output.append("\n(:action gamble_" + item + "_" + x + "_" + y + "\n");
		output.append(" :parameters ()\n");
		output.append(" :precondition (and (at_" + x + "_" + y + "))\n");
		output.append(" :effect (and )\n");
		output.append(" :poss-effect (and (have_" + item + "))\n");
		output.append(")\n");
		
		return output.toString();
	}
	
	private static String getEasyMarkAction(int x, int y, String item) {
		StringBuilder output = new StringBuilder();
		
		output.append("\n(:action easymark_" + item + "_" + x + "_" + y + "\n");
		output.append(" :parameters ()\n");
		output.append(" :precondition (and (at_" + x + "_" + y + "))\n");
		output.append(" :effect (and (have_" + item + "))\n");
		output.append(")\n");
		
		return output.toString();
	}
	
	private static void createProblem() {
		
		StringBuffer output = new StringBuffer();
		
		output.append("(define (problem hobonav" + gridSize + ")\n");
		output.append("    (:domain HoboNav)\n");
		output.append("\n");
		output.append("    (:init (at_0_0))\n");
		output.append("\n");
		output.append("    (:goal (and (at_" + (gridSize - 1) + "_" + (gridSize - 1) + ")))\n");
		output.append(")");
		
		// Write out to the file
		try {
			FileWriter fileWriter = new FileWriter(outputProblemFile);
			BufferedWriter out = new BufferedWriter(fileWriter);
			
			out.write(output.toString());
			System.out.println("Problem written to: " + outputProblemFile);
			
			out.close();
			fileWriter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private static boolean isInputValid(String[] args) {
		if (args.length != 7) {
			usage();
			return false;
		}
		
		outputDomainFile = args[0];
		outputProblemFile = args[1];
		gridSize = Integer.parseInt(args[2]);
		itemCount = Integer.parseInt(args[3]);
		tollDensity = Double.parseDouble(args[4]);
		gambleDensity = Double.parseDouble(args[5]);
		easyMarkDensity = Double.parseDouble(args[6]);
		
		return true;
	}
	
	private static void usage() {
		System.out.println("usage: java HoboNavDomainCreator " +
				"[Domain Output File] [Problem Output File] " +
				"[Grid Size] [Item Count] " +
				"[Toll Density] [Gamble Density] [Easy Mark Density]");
	}
}
