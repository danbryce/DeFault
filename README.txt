READ ME - DeFault planner & Goalie agent
4.21.11

Create an Eclipse project from the source in order to test the DeFault planner and/or the Goalie agent.
Many jars are required - not least, JUnit.
The project is here named "graphplanner".

As of today, the JUnit domain builders and planner testers need updating...

------------------------------------------------------------------------------------
BUILDING THE DOMAINS

*Bridges
Go to graphplanner.test.edu.usu.cs.plangraph/BridgesTest.java
Right-click the method CreateBridges().
Click Run As -> JUnit Test.

*HoboNav
Go to graphplanner.test.edu.usu.cs.plangraph/HoboNavTest.java
Right-click the method CreateHoboNavDomainsTest().
Click Run As -> JUnit Test.

*ParcPrinter
Get domains & problems from IPC6 (2008) - http://ipc.informatik.uni-freiburg.de/Domains
Place them in "graphplanner/testfiles/classical/parcprinter"
Go to graphplanner.test.edu.usu.cs.plangraph/TranslateParcPrinter.java
Right-click the method TranslateToIncomplete().
Click Run As -> JUnit Test.

*Pathways
Get domains & problems from IPC5 (2006) - http://ipc.icaps-conference.org/ //Needs to be built??
Place them in "graphplanner/testfiles/classical/pathways"
Go to graphplanner.test.edu.usu.cs.plangraph/TranslatePathways.java
Right-click the method translateToIncomplete().
Click Run As -> JUnit Test.

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
RUNNING THE PLANNERS - use JVM args "-Xmx2048M -Xms256M"

*Bridges
Go to graphplanner.test.edu.usu.cs.plangraph/BridgesTest.java
Right-click the method RunBridges().
Click Run As -> JUnit Test.

*HoboNav
Go to graphplanner.test.edu.usu.cs.plangraph/HoboNavTest.java
Right-click the method RunHoboNav(). //Missing!!!
Click Run As -> JUnit Test.

*ParcPrinter
Go to graphplanner.test.edu.usu.cs.plangraph/ParcPrinterTest.java
Right-click the method RunParcPrinter().
Click Run As -> JUnit Test.

*Pathways
Go to graphplanner.test.edu.usu.cs.plangraph/PathwaysTest.java //Missing!!
Right-click the method RunPathways().
Click Run As -> JUnit Test.
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
RUNNING THE GOALIE AGENT - use JVM args "-Xmx2048M -Xms256M"

*Bridges
Go to graphplanner.src.edu.usu.cs.ka.batchtesters/BatchTester_SimulationPL.java
Uncomment the main method testBridges().
Run BatchTester_SimulationPL.java

*HoboNav
Go to graphplanner.src.edu.usu.cs.ka.batchtesters/BatchTester_SimulationPL.java
Uncomment the main method testHoboNav().
Run BatchTester_SimulationPL.java

*ParcPrinter
Go to graphplanner.src.edu.usu.cs.ka.batchtesters/BatchTester_SimulationPL.java
Uncomment the main method testParcPrinter().
Run BatchTester_SimulationPL.java

*Pathways
Go to graphplanner.src.edu.usu.cs.ka.batchtesters/BatchTester_SimulationPL.java
Uncomment the main method testPathways().
Run BatchTester_SimulationPL.java
------------------------------------------------------------------------------------












 