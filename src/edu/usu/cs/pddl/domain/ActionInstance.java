package edu.usu.cs.pddl.domain;

import java.util.List;
import java.util.Map;

import edu.usu.cs.pddl.domain.incomplete.Proposition;
import edu.usu.cs.search.ConditionalAction;

public interface ActionInstance extends ConditionalAction{

	double getCost();

	String getName();
	   ActionDef getDefinition();
	   Map<FormalArgument, PDDLObject> getArgMapping();

	   
}
