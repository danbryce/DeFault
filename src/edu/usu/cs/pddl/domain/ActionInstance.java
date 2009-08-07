package edu.usu.cs.pddl.domain;

import java.util.Map;

public interface ActionInstance {

	double getCost();

	String getName();
	   ActionDef getDefinition();
	   Map<FormalArgument, PDDLObject> getArgMapping();

		   
}
