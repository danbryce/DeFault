package edu.usu.cs.pddl.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.usu.cs.pddl.parser.ForAllGoalDesc;
import edu.usu.cs.pddl.parser.QuantifiedGoal;
import edu.usu.cs.pddl.parser.ThereExistsGoalDesc;

public class GoalUtils {

	//This method standardizes the variables across each quantfier in the input list of sentences and takes
	//an empty list in which to place the sentences without quantifiers
	//It returns a sentence with the standardized quantifiers with an empty sentence
	public static GoalDesc stripAndStandardizeQuantifiers(List<GoalDesc> dnfConjuncts, List<GoalDesc> dnfConjunctsWithoutQuantifiers) {

//		int varIndex = 0;
		List<GoalDesc> quantifiers = new ArrayList<GoalDesc>();
		for(GoalDesc c : dnfConjuncts){
//			GoalDesc cStandardized = renameQuantifiers(c, varIndex);
			GoalDesc cUnquantified = stripQuantifiers(c); //afterward c is only quantifiers, and cUnquantified is the nested formula
			if(cUnquantified != c){ //only keep track of quantifiers if there are any
				quantifiers.add(c);
			}
			dnfConjunctsWithoutQuantifiers.add(cUnquantified);
		}
		GoalDesc quantifiersGoal = combineQuantifiers(quantifiers, null);

		return quantifiersGoal;
	}



	public static GoalDesc combineQuantifiers(List<GoalDesc> quantifiers, GoalDesc quantifier) {
		if(quantifiers.size() == 0){
			return quantifier;
		}
		else {
			GoalDesc mQuantifier = quantifiers.remove(0);
			if(quantifier == null){
				quantifier = mQuantifier;
			}
			else{
				appendQuantifier(quantifier, mQuantifier);
			}
			return combineQuantifiers(quantifiers, quantifier);
		}

	}

	public static GoalDesc appendQuantifier(GoalDesc quantifier, GoalDesc quantifier2) {
		if(quantifier == null){
			return quantifier2;
		}
		else if(quantifier instanceof QuantifiedGoal){
			if(((QuantifiedGoal) quantifier).getGoal() == null){
				((QuantifiedGoal) quantifier).setGoal(quantifier2);
				return quantifier;
			}
			else{
				return appendQuantifier(((QuantifiedGoal) quantifier).getGoal(), quantifier2);
			}
		}
		return null;

	}

	public static GoalDesc stripQuantifiers(GoalDesc c) {
		if(c instanceof QuantifiedGoal){
			if(((QuantifiedGoal) c).getGoal() instanceof QuantifiedGoal){
				return stripQuantifiers(((QuantifiedGoal) c).getGoal());				
			}
			else{
				GoalDesc g = ((QuantifiedGoal) c).getGoal();
				((QuantifiedGoal) c).setGoal(null);
				return g;
			}

		}
		else{
			return c;
		}
	}

	public static GoalDesc renameQuantifiers(GoalDesc c, int varIndex) {
		Map<FormalArgument, FormalArgument> nameMap = new HashMap<FormalArgument, FormalArgument>();
		return renameQuantifiers(c, nameMap, varIndex);
	}

	public static GoalDesc renameQuantifiers(GoalDesc c, Map<FormalArgument, FormalArgument> nameMap, int varIndex) {
		if(c instanceof QuantifiedGoal){
			QuantifiedGoal g = (QuantifiedGoal)c;
			List<FormalArgument> newQuantifiers = new ArrayList<FormalArgument>();
			for(FormalArgument fa : g.getVariables()){
				FormalArgument newFA = new FormalArgument("?standardized"+(varIndex++), fa.getType());
				nameMap.put(fa, newFA);
				newQuantifiers.add(newFA);
			}
			g.setVariables(newQuantifiers);
			renameQuantifiers(g.getGoal(), nameMap, varIndex);
			return g;
		}
		else{ //assume no more quantifiers are nested in c
			try {
				c.renameVariables(nameMap);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return c;
		}
	}



	public static List<FormalArgument> getQuantifierVariables(
			GoalDesc g) {
		List<FormalArgument> variables = new ArrayList<FormalArgument>();
		if(g instanceof QuantifiedGoal){
			variables.addAll(((QuantifiedGoal) g).getVariables());
			variables.addAll(getQuantifierVariables(((QuantifiedGoal) g).getGoal()));
		}
		return variables;
	}



	public static List<FormalArgument> getExistentialQuantifierVariables(
			GoalDesc g) {
		// TODO Auto-generated method stub
		List<FormalArgument> variables = new ArrayList<FormalArgument>();
		if(g instanceof QuantifiedGoal){
			if(g instanceof ThereExistsGoalDesc){
				variables.addAll(((QuantifiedGoal) g).getVariables());
			}
			variables.addAll(getQuantifierVariables(((QuantifiedGoal) g).getGoal()));
		}
		return variables;
	}



	public static GoalDesc removeExistentialQuantifiers(GoalDesc g) {
		if(g instanceof QuantifiedGoal){
			if(g instanceof ThereExistsGoalDesc){
				return removeExistentialQuantifiers(((ThereExistsGoalDesc) g).getGoal());
			}
			else { //universal
				ForAllGoalDesc fg = (ForAllGoalDesc)g;
				GoalDesc rg = removeExistentialQuantifiers(fg.getGoal());
				if(rg instanceof ForAllGoalDesc){
					//combine variables in universal
					ForAllGoalDesc urg = (ForAllGoalDesc)rg;
					fg.getVariables().addAll(urg.getVariables());
					fg.setGoal(urg.getGoal());
				}
				else{
					fg.setGoal(rg);
				}
				return fg;
			}
		}
		else{
			return g;
		}
	}



}
