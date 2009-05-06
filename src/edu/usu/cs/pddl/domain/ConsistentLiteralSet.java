/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: ConsistentLiteralSet.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.io.StringWriter;
import java.util.*;



/**
 * Conceptually, this just stores a set of <code>Literal</code>s.
 */
public class ConsistentLiteralSet 
{
	private Map<FunctionInstance, FunctionLiteral> functionValues;
	private Map<PredicateInstance, PredicateLiteral> predicateValues;

	public ConsistentLiteralSet() {
		functionValues = new HashMap<FunctionInstance, FunctionLiteral>();
		predicateValues = new HashMap<PredicateInstance, PredicateLiteral>();
	}

	public ConsistentLiteralSet(ConsistentLiteralSet source) {
		functionValues = new HashMap<FunctionInstance, FunctionLiteral>(source.functionValues);
		predicateValues = new HashMap<PredicateInstance, PredicateLiteral>(source.predicateValues);
	}

	public ConsistentLiteralSet(Collection<? extends Literal> literals) throws InconsistentLiteralException {
		functionValues = new HashMap<FunctionInstance, FunctionLiteral>();
		predicateValues = new HashMap<PredicateInstance, PredicateLiteral>();

		for (Literal l : literals) {
			if (l instanceof PredicateLiteral) {
				addPredicate((PredicateLiteral) l);
			} else {
				addFunction((FunctionLiteral) l);
			}
		}
	}

	public void addLiteral(Literal l) throws InconsistentLiteralException {
		if (l instanceof PredicateLiteral) {
			addPredicate((PredicateLiteral) l);
		} else {
			addFunction((FunctionLiteral) l);
		}
	}

	public void addPredicate(PredicateLiteral literal) throws InconsistentLiteralException {
		LiteralInstance key = literal.getInstance();
		if (predicateValues.containsKey(key)) {
			throw new InconsistentLiteralException("literal " + key.getDefinition().getName());
		}
		predicateValues.put((PredicateInstance) key, literal);
	}

	public void addFunction(FunctionLiteral literal) throws InconsistentLiteralException {
		LiteralInstance key = literal.getInstance();
		if (functionValues.containsKey(key)) {
			throw new InconsistentLiteralException("literal " + key.getDefinition().getName());
		}
		functionValues.put((FunctionInstance) key, literal);
	}

	public void addOrReplacePredicate(PredicateLiteral literal) {
		LiteralInstance key = literal.getInstance();
		predicateValues.put((PredicateInstance) key, literal);
	}

	public void addOrReplaceFunction(FunctionLiteral literal) {
		LiteralInstance key = literal.getInstance();
		functionValues.put((FunctionInstance) key, literal);
	}

	public Set<FunctionLiteral> getFunctionLiterals() {
		return new HashSet<FunctionLiteral>(functionValues.values());
	}

	public Set<PredicateLiteral> getPredicateLiterals() {
		return new HashSet<PredicateLiteral>(predicateValues.values());
	}

	public Set<Literal> getLiterals()
	{
		Set<Literal> result = new HashSet<Literal>(functionValues.values());
		result.addAll(predicateValues.values());
		return result;
	}

	public int getFunctionValue(FunctionInstance f) {
		FunctionLiteral literal = functionValues.get(f);
		if (literal == null) {
			throw new NoSuchElementException();
		}
		return literal.getValue();
	}

	public boolean getPredicateValue(PredicateInstance p) {
		PredicateLiteral literal = predicateValues.get(p);
		if (literal == null) {
			throw new NoSuchElementException();
		}
		return literal.getValue();
	}

	public boolean inconsistentWith(ConsistentLiteralSet other)
	{
		for (Map.Entry<FunctionInstance, FunctionLiteral> func : functionValues.entrySet()) {
			final FunctionLiteral lit = other.functionValues.get(func.getKey());
			if (lit != null && !lit.equals(func.getValue())) {
				return true;
			}
		}
		for (Map.Entry<PredicateInstance, PredicateLiteral> pred : predicateValues.entrySet()) {
			final PredicateLiteral lit = other.predicateValues.get(pred.getKey());
			if (lit != null && !lit.equals(pred.getValue())) {
				return true;
			}
		}
		return false;
	}

	public String toString(){
		StringWriter sw = new StringWriter();

		for(PredicateInstance pi : predicateValues.keySet()){
			PredicateLiteral pl = predicateValues.get(pi);
			sw.append("   " + pl.toString());
			sw.append("\n");
		}
		for(FunctionInstance fi : functionValues.keySet()){
			FunctionLiteral fl = functionValues.get(fi);
			sw.append("   " + fl.toString());
			sw.append("\n");
		}


		return sw.toString();
	}

}
