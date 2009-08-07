package edu.usu.cs.plangraph;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import edu.usu.cs.pddl.domain.ActionInstance;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.domain.incomplete.IncompleteActionInstance;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.planner.pspffrisky.FFRiskyPSPSolver;
import edu.usu.cs.search.SearchStatistics;
import edu.usu.cs.search.plangraph.IllDefinedProblemException;

public class FFRiskyPSPTest {

	@Test
	public void testPlanner() {
		Assert.assertTrue(true);
	}




	@Test
	public void test_PSPDomainTest() {

		try {

			File domainFileOut = getFile("/incompletePSP/mable-control4.pddl");
			File problemFileOut = getFile("/incompletePSP/TBDName.pddl");

			//			if (!domainFileOut.exists()) 
			//				logger.debug("Unable to find PDDL domain file " + domainFileString);
			//			if (!problemFileOut.exists())
			//				logger.debug("Unable to find PDDL problem file " + problemFileString);

			ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFileOut);
			Domain domain = domBuilder.buildDomain();
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain, problemFileOut);
			Problem problem = probBuilder.buildProblem();

			SearchStatistics searchStatistics = new SearchStatistics();
			
			FFRiskyPSPSolver solver = new FFRiskyPSPSolver(domain, problem, searchStatistics);
			List<ActionInstance> plan = solver.solve();
			if (plan == null) {
				System.out.println("No plan found");
			} else {
				//System.out.println("Plan found in " + solver.getNumLevels() + " levels:");
				for (ActionInstance action : plan) {
					System.out.println(action.toString());
				}
			}

			Assert.assertNotNull(plan);

		} catch (IOException e) {
			e.printStackTrace();
		} catch (PDDLSyntaxException e) {
			e.printStackTrace();
		} catch (InvalidPDDLElementException e) {
			e.printStackTrace();
		} catch (IllDefinedProblemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	}
	
	
	//Utils
	private File getFile(String fileString){

		try {
			InputStream stream = Object.class.getResourceAsStream(fileString);

			BufferedReader fileStream = new BufferedReader(new InputStreamReader(stream));
			File fileOut = File.createTempFile("dom", "pddl");

			fileOut.deleteOnExit();
			FileWriter fw = new FileWriter(fileOut);
			while(fileStream.ready())
				fw.write(fileStream.readLine() + "\n");
			fw.close();
			return fileOut;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}