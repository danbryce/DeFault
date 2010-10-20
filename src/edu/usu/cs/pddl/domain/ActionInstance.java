package edu.usu.cs.pddl.domain;

import java.util.List;
import java.util.Map;

import edu.usu.cs.pddl.domain.incomplete.Proposition;

public interface ActionInstance {

	double getCost();

	String getName();
	   ActionDef getDefinition();
	   Map<FormalArgument, PDDLObject> getArgMapping();

	   
}
