/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: MethodDef.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Basic definition of a predicate or function, as in the PDDL domain description.
 */
public abstract class MethodDef
{
	private final String name;
	private final List<FormalArgument> arguments;
	private boolean dynamic = true;

	public boolean isDynamic() {
		return dynamic;
	}

	public void setDynamic(boolean dynamic) {
		this.dynamic = dynamic;
	}

	public MethodDef(String name, List<FormalArgument> arguments) {
		if (name == null) {
			throw new IllegalArgumentException("null name");
		}
		this.name = name;
		this.arguments = arguments;
	}

	public List<FormalArgument> getArguments() {
		return arguments;
	}

	public String getName() {
		return name;
	}

	public String toString() {
		//return getClass().getSimpleName() + ":" + name + arguments;
		return name + arguments;
	}

	@Override
	public int hashCode() {
		return name.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (!(obj instanceof MethodDef)) {
			return false;
		}
		final MethodDef other = (MethodDef) obj;
		if (Domain.CASE_SENSITIVE) {
			return name.equals(other.name);
		} else {
			return name.equalsIgnoreCase(other.name);            
		}
	}

	public Map<FormalArgument, PDDLObject> computeUnifier(
			LiteralInstance instance) {
		if(instance.getDefinition().equals(this)){
			Map<FormalArgument, PDDLObject> unifier = new HashMap<FormalArgument, PDDLObject>();

			for(int i = 0; i < arguments.size(); i++){
				unifier.put(arguments.get(i), instance.getArguments().get(i));
			}
			return unifier;	
		}
		return null;
	}
}
