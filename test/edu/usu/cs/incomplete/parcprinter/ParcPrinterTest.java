package edu.usu.cs.incomplete.parcprinter;

import org.junit.Test;

import edu.usu.cs.Default;

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
				//SearchTest.main(args);
			}
		}
	}

	@Test
	public void toCPPTest() {
		String pathToDomains = "testfiles/incomplete/parcprinter/";
		String pathToProblems = "testfiles/incomplete/parcprinter/";
		String pathToCpp = "testfiles/conformant/parcprinter/pond";

		String domainExtension = "-domain";
		String problemExtension = "-problem";
		String extension = "-incomplete.pddl";
		String translationType = "pond";
		

		String[] args = new String[5];
	//	for(int alg = 0; alg < algorithms.length; alg++) {
		for(int i = 1; i < 11; i++){
			for(int k = 1; k <= numFiles; k++) {
//				args[0] = String.format("%s/domain_p%s_%s_%d%s", pathToDomains, problem, density, i, extension);
				//args[1] = String.format("%s/p%s%s", pathToProblems, problem, extension);
//				args[2] = String.format("%s/cpp_domain_p%s_%s_%d%s", pathToCpp, problem, density, i, extension);
//				args[3] = String.format("%s/cpp_problem_p%s_%s_%d%s", pathToCpp, problem, density, i, extension);
				args[4] = translationType;

				args[0] = pathToDomains + "p" + (k < 10 ? "0" : "") + k + "_" + i + domainExtension + extension;
				args[1] = pathToProblems + "p" + (k < 10 ? "0" : "") + k+ "_" + i + problemExtension + extension;
				args[2] = pathToCpp + "/cpp_domain_p" + (k < 10 ? "0" : "") + k+ "_" + i + domainExtension + extension;
				args[3] = pathToCpp + "/cpp_problem_p" + (k < 10 ? "0" : "") + k+ "_" + i + problemExtension+ extension;
//				args[2] = "output_parcprinter.txt";
//				args[3] = algorithms[alg];
				Default.main(args);
			}
		}
		//}
	}
}
