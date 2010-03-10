/**
 * 
 */
package edu.usu.cs.pddl.domain.translation;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.swing.DefaultDesktopManager;

import edu.usu.cs.pddl.domain.ActionDef;
import edu.usu.cs.pddl.domain.Domain;
import edu.usu.cs.pddl.domain.FormalArgument;
import edu.usu.cs.pddl.domain.LiteralInstance;
import edu.usu.cs.pddl.domain.PredicateDef;
import edu.usu.cs.pddl.domain.Problem;
import edu.usu.cs.pddl.parser.ANTLRDomainBuilder;
import edu.usu.cs.pddl.parser.ANTLRProblemBuilder;
import edu.usu.cs.pddl.parser.InvalidPDDLElementException;
import edu.usu.cs.pddl.parser.PDDLSyntaxException;

/**
 * @author dan
 *
 */
public class IncompleteToConformantProbabilistic {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		String domainFileOut = args[0];
		String problemFileOut = args[1];
		
		

		try {
			ANTLRDomainBuilder domBuilder = new ANTLRDomainBuilder(new File(domainFileOut));
			Domain domain = domBuilder.buildDomain();

			Domain translatedDomain = translate(domain);
			
			ANTLRProblemBuilder probBuilder = new ANTLRProblemBuilder(domain, new File(problemFileOut));
			Problem problem = probBuilder.buildProblem();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (PDDLSyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidPDDLElementException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private static Domain translate(Domain domain) {
		
		//add predicates that describe incompleteness
		List<PredicateDef> translatedPredicates = new ArrayList<PredicateDef>(domain.getPredicates());
		for(ActionDef act : domain.getActions()){
			Set<LiteralInstance> prePreds = new HashSet<LiteralInstance>();
			act.getPossPreCondition().getLiteralsUsed(prePreds);

			Set<LiteralInstance> addPreds = new HashSet<LiteralInstance>();			
			//act.getPossEffect().getPositiveMethods(addPreds);
			
			
			for(PredicateDef predicate : domain.getPredicates()){
				List<FormalArgument> riskPredicateArgs = new ArrayList<FormalArgument>(predicate.getArguments());
				
				if(prePreds.contains(predicate)){
					translatedPredicates.add(new PredicateDef("OP_"+act.getName()+"_"+predicate.getName(), riskPredicateArgs));
				}
				
				translatedPredicates.add(new PredicateDef("UL_"+act.getName()+"_"+predicate.getName(), riskPredicateArgs));
				translatedPredicates.add(new PredicateDef("PC_"+act.getName()+"_"+predicate.getName(), riskPredicateArgs));
			}
		}
		
		
		//rewrite each action
		List<ActionDef> translatedActions = new ArrayList<ActionDef>();
		
		
		Domain translatedDomain = new Domain(domain.getName() + "-tr", 
											 domain.getRequirements(),
											 domain.getTypes(),
											 domain.getFunctions(),
											 domain.getConstants(),
											 translatedPredicates,
											 translatedActions);
		
		return translatedDomain;
	}

}
