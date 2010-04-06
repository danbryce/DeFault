package edu.usu.cs.incomplete.parcprinter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ParserTest {
	public static void main(String[] args) {
		if (args.length != 4) {
			usage();
			return;
		}
		for (String fileName : args) {
			// All files must be .pddl files
			if (!fileName.endsWith(".pddl")) {
				usage();
				return;
			}
		}

		// Open and parse the domain file
		File inputDomainFile = new File(args[0]);
		if (!inputDomainFile.exists()) {
			System.err.println("Unable to find input PDDL domain file " + args[0]);
			usage();
		}
		String domainOutput = null;
		try {
			FileReader fileReader = new FileReader(inputDomainFile);
			BufferedReader bufferedReader = new BufferedReader(fileReader);

			List<String> inputDomainlines = new ArrayList<String>();
			while (true) {
				String inputDomainLine = bufferedReader.readLine();
				if (inputDomainLine == null) {
					break;
				}
				inputDomainlines.add(inputDomainLine);
			}

			domainOutput = Parser.parseParcPrinterDomainFile(inputDomainlines);

			bufferedReader.close();
			fileReader.close();
		} catch (Exception e) {
			e.printStackTrace();
			return;
		}

		System.out.println(domainOutput);
		try {
			FileWriter fstream = new FileWriter(args[2]);
			fstream.write(domainOutput);
			fstream.close();
			System.out.println("Written to " + args[2]);
		} catch (IOException e) {
			e.printStackTrace();
			return;
		}

		// Open and parse the problem file
		File inputProblemFile = new File(args[1]);
		if (!inputProblemFile.exists()) {
			System.err.println("Unable to find input PDDL problem file "
					+ args[0]);
			usage();
		}
		String problemOutput = null;
		try {
			FileReader fileReader = new FileReader(inputProblemFile);
			BufferedReader bufferedReader = new BufferedReader(fileReader);

			List<String> inputProblemlines = new ArrayList<String>();
			while (true) {
				String inputProblemLine = bufferedReader.readLine();
				if (inputProblemLine == null) {
					break;
				}
				inputProblemlines.add(inputProblemLine);
			}

			problemOutput = Parser
					.parseParcPrinterProblemFile(inputProblemlines);

			bufferedReader.close();
			fileReader.close();
		} catch (Exception e) {
			e.printStackTrace();
			return;
		}

		System.out.println(problemOutput);
		try {
			FileWriter fstream = new FileWriter(args[3]);
			fstream.write(problemOutput);
			fstream.close();
			System.out.println("Written to " + args[3]);
		} catch (IOException e) {
			e.printStackTrace();
			return;
		}
	}

	private static void usage() {
		System.out.println("ParserTest [input domain file] [input problem file] [output domain file] [output problem file]");
	}
}
