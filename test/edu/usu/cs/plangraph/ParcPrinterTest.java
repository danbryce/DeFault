package edu.usu.cs.plangraph;

import org.junit.Test;

import edu.usu.cs.search.SearchTest;

public class ParcPrinterTest {
	private final int numFiles = 30;
	
	@Test
	public void RunParcPrinter() {
		String pathToDomains = "testfiles/classical/parcprinter/";
		String pathToProblems = "testfiles/classical/parcprinter/";
		String domainExtension = "-domain";
		String extension = ".pddl";
		String[] algorithms = {
//				"frisky",
//				"quadqueue",
//				"pode",
				"friskylength",
//				"friskyEHC",
//				"friskyMS"
		};

		String[] args = new String[4];
		for(int alg = 0; alg < algorithms.length; alg++) {
			for(int k = 1; k <= numFiles; k++) {
				args[0] = pathToDomains + "p" + (k < 10 ? "0" : "") + k + domainExtension + extension;
				args[1] = pathToProblems + "p" + (k < 10 ? "0" : "") + k + extension;
				args[2] = "output_parcprinter.txt";
				args[3] = algorithms[alg];
				SearchTest.main(args);
			}
		}
	}
}
