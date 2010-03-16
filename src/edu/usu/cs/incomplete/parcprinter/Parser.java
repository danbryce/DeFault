package edu.usu.cs.incomplete.parcprinter;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Parser {
	private static String[] paperSizes = { "Letter", "Legal", "A4" };
	private static Random random = new Random(0);
	private static final double prob = 0.5;

	public static String parseParcPrinterDomainFile(List<String> fileContents) {
		StringBuilder output = new StringBuilder(
				";; Domain file modified by FFrisky incomplete parcprinter translator\n");

		for (int lineIndex = 0; lineIndex < fileContents.size(); lineIndex++) {
			String currentLine = fileContents.get(lineIndex);

			// If currentLine is the constant Letter, add A4 and Legal
			if (currentLine.contains("Letter - size_t")) {
				output.append("\t\tLetter\n\t\tLegal\n\t\tA4 - size_t\n");
				continue;
			}

			// Add the predicate (clear)
			if (currentLine.contains(":predicates")) {
				output.append(currentLine + "\n");
				output.append("\t\t(clear)\n");
				continue;
			}
			
			// Now for the hard part - if it's an action
			if (currentLine.contains("(:action")
					&& !currentLine.contains("initialize")) {

				List<String> action = new ArrayList<String>();
				// Grab the entire action
				while (!")".equals(currentLine)) {
					action.add(currentLine);
					lineIndex++;
					currentLine = fileContents.get(lineIndex);
				}

				action.add(currentLine);

				output.append(parseAction(action));
				continue;
			}

			// If it's a plain old boring line, just put it in output
			output.append(currentLine + "\n");
		}

		return output.toString();
	}

	private static String parseAction(List<String> action) {
		StringBuilder output = new StringBuilder();

		// Remove "Letter" from the action name
		action.set(0, action.get(0).substring(0, action.get(0).length() - 6));

		// Find :precondition and add (clear)

		for (String paperSize : paperSizes) {

			output.append(action.get(0) + paperSize + "\n");

			for (int i = 1; i < action.size(); i++) {

				// Add (clear) as the first precondition
				if (action.get(i).contains(":precondition")) {
					output.append(action.get(i) + "\n");
					output.append("\t\t(clear)\n");
					continue;
				}

				// Replace (Sheetsize ?sheet Letter) with (Sheetsize ?sheet
				// paperSize)
				if (action.get(i).contains("Sheetsize")) {
					output.append("\t\t(Sheetsize ?sheet " + paperSize + ")\n");
					continue;
				}

				// With some probability, add a poss-effect of (not (clear))
				if (action.get(i).equals(")") && random.nextDouble() < prob) {
					output.append(" :poss-effect (and\n\t\t(not (clear)))\n");
				}

				output.append(action.get(i) + "\n");
			}
			
			output.append("\n");
		}

		return output.toString();
	}

	public static String parseParcPrinterProblemFile(List<String> fileContents) {
		StringBuilder output = new StringBuilder(
				";; Problem file modified by FFrisky incomplete parcprinter translator\n");
		boolean clearPropositionInInitialState = false;
		boolean sheetSizeSetAtLeastOnce = false;

		for (int lineIndex = 0; lineIndex < fileContents.size(); lineIndex++) {
			String currentLine = fileContents.get(lineIndex);

			// If currentLine is initial state, add (clear)
			if (currentLine.contains("(:init")) {
				output.append(currentLine + "\n");
				output.append("\t\t(clear)\n");
				clearPropositionInInitialState = true;
				continue;
			}

			// If currentLine is Sheetsize, make some changes
			if (currentLine.contains("(Sheetsize")) {
				String paperSize = paperSizes[random.nextInt(paperSizes.length)];
				String[] split = currentLine.split(" ");
				output.append(split[0] + " " + split[1] + " " + paperSize
						+ ")\n");
				sheetSizeSetAtLeastOnce = true;
				continue;
			}
			
			// Add (clear) to the goal
			if (currentLine.contains(":goal")) {
				output.append(currentLine + "\n");
				output.append("\t\t(clear)\n");
				continue;
			}

			// If it's a plain old boring line, just put it in output
			output.append(currentLine + "\n");
		}

		if (!clearPropositionInInitialState) {
			return "Clear not initialized";
		} else if (!sheetSizeSetAtLeastOnce) {
			return "Sheetsize propositions never set";
		}

		return output.toString();
	}
}
