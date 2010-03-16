package edu.usu.cs.plangraph;

import org.junit.Test;

public class TranslateParcPrinter {

	@Test
	public void TranslateToIncomplete() {

		final int domainCount = 30;
		final int instanceCount = 10; // Make instanceCount versions of the problem

		// For every domain and problem file
		for (int problemNumber = 1; problemNumber <= domainCount; problemNumber++) {

			// Make instanceCount instances of each
			for (int i = 1; i <= instanceCount; i++) {
				String inputPath = "testfiles/classical/parcprinter/";
				String outputPath = "testfiles/incomplete/parcprinter/";

				String lt10 = problemNumber < 10 ? "0" : "";
				String inputDomain = "p" + lt10 + problemNumber + "-domain.pddl";
				String inputProblem = "p" + lt10 + problemNumber + ".pddl";

				String outputDomain = "p" + lt10 + problemNumber + "_" + i + "-domain-incomplete.pddl";
				String outputProblem = "p" + lt10 + problemNumber + "_" + i + "-problem-incomplete.pddl";

				String[] args = new String[4];
				args[0] = inputPath + inputDomain;
				args[1] = inputPath + inputProblem;
				args[2] = outputPath + outputDomain;
				args[3] = outputPath + outputProblem;

				edu.usu.cs.incomplete.parcprinter.ParserTest.main(args);
			}
		}
	}
}

// testfiles/classical/parcprinter/p01-domain.pddl
// testfiles/classical/parcprinter/p01.pddl
// testfiles/incomplete/parcprinter/p01-domain-incomplete.pddl
// testfiles/incomplete/parcprinter/p01-problem-incomplete.pddl