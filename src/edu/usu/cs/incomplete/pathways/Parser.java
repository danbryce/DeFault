package edu.usu.cs.incomplete.pathways;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.apache.log4j.Logger;

public class Parser {
	private static Logger logger = Logger.getLogger(Parser.class.getName());
	
	private static final String ASSOCIATE = "ASSOCIATE";
	private static final String ASSOCIATE_CATALYZE = "ASSOCIATE-WITH-CATALYZE";
	private static final String SYNTHESIZE = "SYNTHESIZE";
	private final File inputFile;
	private String outputFileContents = null;

	private double p1 = 0.5;
	private double p2 = 0.5;
	private double p3 = 0.5;
	private double p4 = 0.5;
	private double p5 = 0.5;
	private double p6 = 0.5;

	public Parser(File inputFile) {
		this.inputFile = inputFile;
//		try {
//			setFileContents();
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}

	private void setFileContents() throws FileNotFoundException, IOException {
		outputFileContents = "";
		String currentLine = "";

		FileReader fileReader = new FileReader(inputFile);
		BufferedReader bufferedReader = new BufferedReader(fileReader);

		currentLine = bufferedReader.readLine();
		int parameterCounter = 0;

		while (currentLine != null) {
			int actionIndex = currentLine.indexOf(":action");
			if (actionIndex == -1) {
				outputFileContents += currentLine + "\n";
			} else {
				outputFileContents += currentLine + "\n";
				
				// Get the action name
				String actionName = currentLine.substring(actionIndex + 7)
						.trim();

				// If the current action is a "Synthesize" action, then
				if (actionName.startsWith(SYNTHESIZE)) {
					// with probability P1 introduce a possible precondition for
					// an available substrate (sample which substrate uniformly
					// from all substrates not involved in the action)
					if (Math.random() < p1) {
						// Get to the :effect part and insert the possible
						// precondition before that
						currentLine = bufferedReader.readLine();
						while (!currentLine.startsWith(":precondition")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}

						outputFileContents += ":precondition\n(and )\n:poss-precondition\n";
					}
					// with probability P2 introduce a possible negative effect
					// for the true precondition available substrate
					String possClob = "";
					boolean hasPossClob = false;
					if (Math.random() < p2) {
						currentLine = bufferedReader.readLine();
						hasPossClob = true;
						// Get the next line that has the word available in it
						while (!currentLine.startsWith("(available")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}

						possClob = currentLine;
						outputFileContents += currentLine + "\n";
					}
					// with probability P3 introduce a possible positive effect
					// for a substrate (sample uniformly among substrates not
					// involved)
					if (Math.random() < p3) {
						currentLine = bufferedReader.readLine();
						while (!currentLine.startsWith(":effect")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						
						outputFileContents += ":effect\n(and )\n:poss-effect\n";
						
						// Add the "(and"
						currentLine = bufferedReader.readLine();
						outputFileContents += currentLine + "\n";
						
						if(hasPossClob) {
							outputFileContents += "(not " + possClob + ")\n";
						}
					} else if (hasPossClob) {
						// It doesn't have the unlisted effect so we need to add
						// the poss-precondition thing
						currentLine = bufferedReader.readLine();
						while (!currentLine.startsWith(":effect")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						while (!currentLine.startsWith(")")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						outputFileContents += currentLine + "\n";
						currentLine = bufferedReader.readLine();

						outputFileContents += ":poss-effect\n(and \n(not " + possClob + ")\n)\n";
						outputFileContents += currentLine + "\n";
					}
				} else if (actionName.startsWith(ASSOCIATE_CATALYZE)) {
					// With probability P6 make the positive precondition that is not a
					// negative effect into a possible precondition (the first one)
					if(Math.random() < p6) {
						String possPrec = "";
						String prec = "";
						// Find the precondition and switch it to a poss-precondition
						currentLine = bufferedReader.readLine();
						while(!currentLine.startsWith(":precondition")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						possPrec += ":poss-precondition\n";
						
						// Next, find the first available precondition
						currentLine = bufferedReader.readLine();
						while(!currentLine.startsWith("(available")) {
							possPrec += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						possPrec += currentLine + "\n)\n";
						prec += ":precondition\n(and\n";
						
						while(!currentLine.startsWith(")")) {
							prec += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						prec += currentLine + "\n";
						
						outputFileContents += prec;
						outputFileContents += possPrec;
					}

					// with probability P5 make the negative effect a possible negative
					// effect
					if(Math.random() < p5) {
						currentLine = bufferedReader.readLine();
						while(!currentLine.startsWith(":effect")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						while(!currentLine.startsWith("(not")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						outputFileContents += ")\n:poss-effect\n(and\n";
						outputFileContents += currentLine + "\n";
					}
				} else if (actionName.startsWith(ASSOCIATE)) {
					if(Math.random() < p4) {
						currentLine = bufferedReader.readLine();
						while(!currentLine.startsWith(":effect")) {
							outputFileContents += currentLine + "\n";
							currentLine = bufferedReader.readLine();
						}
						outputFileContents += ":effect\n(and )\n:poss-effect\n";
					}
				}
			}
			currentLine = bufferedReader.readLine();
		}
		outputFileContents = outputFileContents.trim();

		// Loop through the ground actions,
		// if the current action is a "Synthesize" action, then
		// with probability P1 introduce a possible precondition for an
		// available
		// substrate (sample which substrate uniformly from all substrates not
		// involved
		// in the action)
		// with probability P2 introduce a possible negative effect for the true
		// precondition available substrate
		// with probability P3 introduce a possible positive effect for a
		// substrate
		// (sample uniformly among substrates not involved)
		// if the current action is an "Associate" action, then
		// with probability P4 make all effects positive and negative possible
		// if the current action is a "Associate-Catalyze" action, then
		// with probability P5 make the negative effect a possible negative
		// effect
		// with probability P6 make the positive precondition that is not a
		// negative effect into a possible precondition

		fileReader.close();
		logger.debug("parameterCounter: " + parameterCounter);
	}

	public String getFileContents() {
		if(outputFileContents == null) {
			try {
				setFileContents();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return outputFileContents;
	}

	/**
	 * Returns all P values in an array.
	 * 
	 * @return
	 */
	public double[] getP() {
		double[] p = new double[6];
		p[0] = p1;
		p[1] = p2;
		p[2] = p3;
		p[3] = p4;
		p[4] = p5;
		p[5] = p6;
		return p;
	}

	/**
	 * Sets the specified length 6 array values to the corresponding P values.
	 * 
	 * @param p
	 */
	public void setP(double[] p) {
		if (p.length != 6)
			return;

		p1 = p[0];
		p2 = p[1];
		p3 = p[2];
		p4 = p[3];
		p5 = p[4];
		p6 = p[5];
	}

	/**
	 * Sets all P values to the specified value.
	 * 
	 * @param value
	 */
	public void setP(double value) {
		p1 = value;
		p2 = value;
		p3 = value;
		p4 = value;
		p5 = value;
		p6 = value;
	}

	public double getP1() {
		return p1;
	}

	public void setP1(double p1) {
		this.p1 = saturate(p1);
	}

	public double getP2() {
		return p2;
	}

	public void setP2(double p2) {
		this.p2 = saturate(p2);
	}

	public double getP3() {
		return p3;
	}

	public void setP3(double p3) {
		this.p3 = saturate(p3);
	}

	public double getP4() {
		return p4;
	}

	public void setP4(double p4) {
		this.p4 = saturate(p4);
	}

	public double getP5() {
		return p5;
	}

	public void setP5(double p5) {
		this.p5 = saturate(p5);
	}

	public double getP6() {
		return p6;
	}

	public void setP6(double p6) {
		this.p6 = saturate(p6);
	}

	/**
	 * Clamps the specified value between 0 and 1
	 * 
	 * @param value
	 * @return
	 */
	private double saturate(double value) {
		if (value < 0)
			return 0;
		if (value > 1)
			return 1;
		return value;
	}
}
