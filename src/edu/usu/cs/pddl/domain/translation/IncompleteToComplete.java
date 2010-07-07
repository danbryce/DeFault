package edu.usu.cs.pddl.domain.translation;

import java.io.File;
import java.io.IOException;
import java.util.*;

import org.apache.log4j.Logger;

import edu.usu.cs.pddl.goalseffects.*;
import edu.usu.cs.pddl.domain.*;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;
import edu.usu.cs.search.SearchTest;


//This is only built to handle preconditions of class ConjunctionGoalDesc or ConjunctionEffect - 
//where might other types of pre's and effects be used?
//should i make a hard copy of new domain - a new domainfile?
public class IncompleteToComplete 
{
	private static Logger logger = Logger.getLogger(SearchTest.class);
	
	private static Random random;
	private static Double probability;
	private static Integer seed;
	
	Domain originalIncompleteDomain;
	Domain modifiedCompleteDomain;
	Problem problem;
	
	boolean debug;
	
	public IncompleteToComplete(String[] args) 
	{
		debug = false;
		
		//will be 4: domainfile, problemfile, 
		//           probability (of making a possible a real), seed for probability 
		if (args.length != 4) { usage();}
		else
		{
			probability = new Double(args[2]);
			seed = new Integer(args[3]);
			
			System.out.println("domain:      " + args[0]);
			System.out.println("problem:     " + args[1]);
			System.out.println("probability: " + args[2]);
			System.out.println("seed:        " + args[3]);
			System.out.println();
		}
		
		random = new Random(seed);
		
		File domainFile = new File(args[0]);
		if (!domainFile.exists()) {
			System.err.println("Unable to find PDDL domain file " + args[0]);
			usage();
		}
		File problemFile = new File(args[1]);
		if (!problemFile.exists()) {
			System.err.println("Unable to find PDDL problem file " + args[1]);
			usage();
		}
		
		originalIncompleteDomain = null;
		problem = null;
		try {
			ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(domainFile);
			originalIncompleteDomain = domBuilder.buildDomain();
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(originalIncompleteDomain,
					problemFile);
			problem = probBuilder.buildProblem();

		} catch (IOException e) {
			System.err.println("Error reading PDDL file(s): " + e);
			e.printStackTrace();
		} catch (PDDLSyntaxException e) {
			System.err.println("Syntax errors found in the PDDL file(s).");
		} catch (InvalidPDDLElementException e) {
			System.err.println("Invalid semantics in the PDDL file(s): " + e);
			e.printStackTrace();
		}

		modifiedCompleteDomain = null;
		modifiedCompleteDomain = translateToCompleteDomain(originalIncompleteDomain);
	}
		
	private static void usage() {
		System.err.println("Incomplete to Complete Domain usage:");
		System.err.println("\t<domain-pddl-file> <problem-pddl-file> <probability(double)> <seed(int)>");
		System.exit(1);
	}
	
	public static void printDomain(Domain d)
	{			
		System.out.print("domain.getName(): ");
		System.out.println(d.getName());
		
		System.out.print("domain.getRequirements(): ");
		System.out.println(d.getRequirements());
		System.out.println();
				
		System.out.print("domain.getConstants(): ");
		System.out.println(d.getConstants());
		
		System.out.print("domain.getTypes(): ");
		System.out.println(d.getTypes());
		
		System.out.print("domain.getFunctions(): ");
		System.out.println(d.getFunctions());
		System.out.println();
		
		System.out.println("domain.getPredicates(): ");
		System.out.println(d.getPredicates());
		
		System.out.println("domain.getDynamicPredicates(): ");
		System.out.println(d.getDynamicPredicates());
				
		System.out.println("\n----------------------------------------------");
		System.out.println("BEGIN - ACTIONS");
		
		List<ActionDef> actions = d.getActions();
		for(ActionDef a : actions)
		{
			System.out.println();
			System.out.print("a.getName(): ");
			System.out.println(a.getName());
			System.out.print("a.getArguments(): ");
			System.out.println(a.getArguments());
	
			System.out.print("a.getPreCondition(): ");
			System.out.println(a.getPreCondition());
			System.out.print("a.getPossPreCondition(): ");
			System.out.println(a.getPossPreCondition());
					
			System.out.print("a.getEffect(): ");
			System.out.println(a.getEffect());
			System.out.print("a.getPossEffect(): ");
			System.out.println(a.getPossEffect());

			System.out.print("a.getPreconditionMethods(): ");
			System.out.println(a.getPreconditionMethods());
			
			System.out.print("a.getQuantifiedVariablesMap(): ");
			System.out.println(a.getQuantifiedVariablesMap());
		}
			
		System.out.println("\nEND - ACTIONS");
		System.out.println("----------------------------------------------");
	}
	
	private Domain translateToCompleteDomain(Domain d)
	{		
		List<ActionDef> actions = d.getActions();
		List<ActionDef> actionsNew = new ArrayList<ActionDef>();
		
		for(ActionDef a : actions)
		{
			if(debug) System.out.println("-------------------------------------------------------------------------------");
			if(debug) System.out.println("BEGIN - ACTIONS (TRANSLATING TO COMPLETE DOMAIN)\n");
			
			if(debug) System.out.print("a.getName(): ");
			if(debug) System.out.println(a.getName());
			if(debug) System.out.print("a.getArguments(): ");
			if(debug) System.out.println(a.getArguments());
			
			if(debug) System.out.println("\n-------------");
			if(debug) System.out.println("PRE'S\n");
		
			if(debug) System.out.print("a.getPreCondition(): ");
			GoalDesc gd = a.getPreCondition();
			if(debug) System.out.println(gd);
			if(debug) System.out.println("CLASS TYPE: " + gd.getClass());
			
			List<GoalDesc> newPreconditionsList = null;
			
			//isEvaluable seems to mean that the goal description is empty...
			//Changed conjunctive goal description print method.  Notice how the format is different for singletons pre's
			// from effects singletons.  Why? 
			if(gd instanceof edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc)
			{
				if(debug) System.out.println("INSTANCE OF class edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc");
			
				ConjunctionGoalDesc temp = (ConjunctionGoalDesc) gd;
				List<GoalDesc> l = temp.getSubGoals();
				
				if(l != null)
				{
					newPreconditionsList = new ArrayList<GoalDesc>();
					for (GoalDesc g : l)
					{
						if(debug) System.out.println(g);
						newPreconditionsList.add(g);
						
						//List<MethodDef> tempList = new ArrayList<MethodDef>();
						//System.out.println("PRE METHODS: ");
						//g.getMethods(tempList);
						//System.out.println(tempList);	
					}
				}
			}

			if(debug) System.out.print("\na.getPossPreCondition(): ");
			gd = a.getPossPreCondition();
			if(debug) System.out.println(gd);
			if(debug) System.out.println("CLASS TYPE: " + gd.getClass());
			
			if(gd instanceof edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc)
			{
				if(debug) System.out.println("INSTANCE OF class edu.usu.cs.pddl.goalseffects.ConjunctionGoalDesc");
			
				ConjunctionGoalDesc temp = (ConjunctionGoalDesc) gd;
				List<GoalDesc> l = temp.getSubGoals();
				
				if(l != null)
				{
					
						if(newPreconditionsList == null)
							newPreconditionsList = new ArrayList<GoalDesc>();
						for (GoalDesc g : l)
						{
							if(debug) System.out.print(g);
							
							//if the rand gen yield a double higher than the probability, then add this
							//possible as a real precondition, else discard
							if(random.nextDouble() < probability) 
							{
								newPreconditionsList.add(g);
								if(debug) System.out.println(" added to known pre's list.");
							}
							else
								if(debug) System.out.println(" not added to known pre's list.");
						}
				}
			}
	
			if(debug) System.out.println("\n-------------");
			if(debug) System.out.println("EFFECTS\n");
			
			if(debug) System.out.print("a.getEffect(): ");			
			Effect e = a.getEffect();
			if(debug) System.out.println(e);
			if(debug) System.out.println("CLASS TYPE: " + e.getClass());
			
			List<Effect> newEffectsList = null;
			
			if(e instanceof ConjunctionEffect)
			{
				if(debug) System.out.println("INSTANCE OF class edu.usu.cs.pddl.goalseffects.ConjunctionEffect");
				
				ConjunctionEffect temp = (ConjunctionEffect) e;	
				List<Effect> l = temp.getSubEffects();
				
				if(l != null)
				{
					newEffectsList = new ArrayList<Effect>();
					for(Effect ef : l)
					{
						if(debug) System.out.println(ef);
						newEffectsList.add(ef);
					}
				}
			}
						
			if(debug) System.out.print("\na.getPossEffect(): ");			
			e = a.getPossEffect();
			if(debug) System.out.println(e);
			if(debug) System.out.println("CLASS TYPE: " + e.getClass());
			
			if(e instanceof ConjunctionEffect)
			{
				if(debug) System.out.println("INSTANCE OF class edu.usu.cs.pddl.goalseffects.ConjunctionEffect");
				
				ConjunctionEffect temp = (ConjunctionEffect) e;	
				List<Effect> l = temp.getSubEffects();
			
				if(l != null)
				{
					
						if(newEffectsList == null)
							newEffectsList = new ArrayList<Effect>();
						for (Effect ef : l)
						{
							if(debug) System.out.print(ef);
							
							//if the rand gen yield a double higher than the probability, then add this
							//possible as a real effect, else discard
							if(random.nextDouble() < probability) 
							{
								newEffectsList.add(ef);
								if(debug) System.out.println(" added to effects list.");
							}
							else
								if(debug) System.out.println(" not added to effects list.");
						}
				}
			}

			//All pre methods seem to be of type PredicateDef
			if(debug) System.out.println("\n-------------");
			if(debug) System.out.println("PRE METHODS\n");
			//New preconditions will need to be added to precondition methods? Answer: happens automatically
			//Below is a way of looking as what's in a precondition method
			if(debug) System.out.println("a.getPreconditionMethods(): ");
//			List<MethodDef> l = a.getPreconditionMethods();			
//			for (MethodDef md : l)
//			{
//				System.out.println(md + " -> " + md.getClass());
//				System.out.println(md.getName());
//				System.out.println(md.getArguments());
//				System.out.println(md.isDynamic());
//				
//				List<FormalArgument> fa = md.getArguments();
//				
//				for(FormalArgument f : fa)
//				{
//					System.out.println(f.getClass());
//					System.out.println(f.getName());
//					System.out.println(f.getType());			
//				}
//				
//				PredicateDef pd = (PredicateDef) md;
//			}

			if(debug) System.out.println("\n-------------\n");
			if(debug) System.out.print("a.getQuantifiedVariablesMap(): ");
			if(debug) System.out.println(a.getQuantifiedVariablesMap());
			if(debug) System.out.println();
				
			ActionDef newAction = makeNewActionVersion_deepCopy(a, newPreconditionsList, newEffectsList);
			actionsNew.add(newAction);
			
			if(debug) System.out.println("\nEND - ACTIONS (TRANSLATING TO COMPLETE DOMAIN).");
			if(debug) System.out.println("-------------------------------------------------------------------------------\n");
		}
		
		//MAKE COMPLETE DEEP COPY?
		//Add to precondition methods as well, I believe...
		Domain cd = new Domain(	d.getName(), d.getRequirements(), d.getTypes(), d.getFunctions(), 
								d.getConstants(), d.getPredicates(), actionsNew);
		
		return cd;
	}
	
	//Make full deep copy - new copies of all the items in the lists?
	private ActionDef makeNewActionVersion_deepCopy(ActionDef a, List<GoalDesc> newPreconditionList, List<Effect> newEffectsList)
	{		
		String newName = new String(a.getName());
		
		List<FormalArgument> newArgs = new ArrayList<FormalArgument>();			
		for(FormalArgument f : a.getArguments())
			newArgs.add(f);
		
		GoalDesc newPreconditions = new ConjunctionGoalDesc(newPreconditionList);
		GoalDesc newPPreconditions = null;
		
		Effect newEffects = new ConjunctionEffect(newEffectsList); 
		Effect newPEffects = null;

		ActionDef newAction = new ActionDef(newName, newArgs, newPreconditions, newPPreconditions, newEffects, newPEffects);
		
		return newAction;
	}
	
	public Domain getOriginalIncompleteDomain() {return originalIncompleteDomain;}
	public Domain getModifiedCompleteDomain() 	{return modifiedCompleteDomain;}
	public Problem getProblem() 				{return problem;}
}
