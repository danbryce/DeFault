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
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;



/**
 * Conceptually, this just stores a set of <code>Literal</code>s.
 */
public class ConsistentLiteralSet 
{
	private Map<FunctionInstance, FunctionLiteral> functionValues;
	private Map<PredicateInstance, PredicateLiteral> predicateValues;
//	private final int hashcode;

	public ConsistentLiteralSet() {
		functionValues = new HashMap<FunctionInstance, FunctionLiteral>();
		predicateValues = new HashMap<PredicateInstance, PredicateLiteral>();
//		hashcode = createHashCode();
	}

	public ConsistentLiteralSet(ConsistentLiteralSet source) {
		functionValues = new HashMap<FunctionInstance, FunctionLiteral>(source.functionValues);
		predicateValues = new HashMap<PredicateInstance, PredicateLiteral>(source.predicateValues);
//		hashcode = createHashCode();
	}

	public ConsistentLiteralSet(Collection<? extends Literal> literals) throws InconsistentLiteralException {
		functionValues = new HashMap<FunctionInstance, FunctionLiteral>();
		predicateValues = new HashMap<PredicateInstance, PredicateLiteral>();
//		hashcode = createHashCode();

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
//		LiteralInstance key = literal.getInstance();
//		if (predicateValues.containsKey(key)) {
//			throw new InconsistentLiteralException("literal " + key.getDefinition().getName());
//		}
//		predicateValues.put((PredicateInstance) key, literal);
		predicateValues.put((PredicateInstance)literal.getInstance(), literal);
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

	public Collection<PredicateLiteral> getPredicateLiterals() {
		return predicateValues.values();
//		return new HashSet<PredicateLiteral>(predicateValues.values());
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
			return false;
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
			if(pl.getValue()) {
				sw.append("   " + pl.toString());
				sw.append("\n");
			}
		}
		for(FunctionInstance fi : functionValues.keySet()){
			FunctionLiteral fl = functionValues.get(fi);
			sw.append("   " + fl.toString());
			sw.append("\n");
		}


		return sw.toString();
	}
	
	@Override
	public int hashCode() {
		int sum = 0;
		for(PredicateLiteral predicate : predicateValues.values()) {
			// Only add true predicate values to the hash
			if(predicate.getValue() == true)
				sum += predicate.hashCode();
		}
		for(FunctionLiteral function : functionValues.values()) {
			sum += function.hashCode();
		}
		return sum;
//		return hashcode;
	}
	
	private int createHashCode() {
		final int PRIME = 31;
		int result = 1;
		for(PredicateLiteral predicate : predicateValues.values()) {
			// Only add true predicate values to the hash
			if(predicate.getValue() == true) {
				result = PRIME * result + predicate.hashCode();
			}
		}
		for(FunctionLiteral function : functionValues.values()) {
			result = PRIME * result + function.hashCode();
		}
		return result;
	}

	@Override
	public boolean equals(Object obj){
		if(!(obj instanceof ConsistentLiteralSet)) {
			return false;
		}
		ConsistentLiteralSet other = (ConsistentLiteralSet)obj;
		
		// Make sure all predicates are in both states
		for(PredicateLiteral thisPredicate : predicateValues.values()) {
			if(thisPredicate.getValue() == false) {
				continue;
			}
			boolean predicateFoundInBothStates = false;
			for(PredicateLiteral otherPredicate : other.predicateValues.values()) {
				if(thisPredicate.equals(otherPredicate)) {
					predicateFoundInBothStates = true;
					break;
				}
			}
			if(!predicateFoundInBothStates) {
				return false;
			}
		}
		for(PredicateLiteral otherPredicate : other.predicateValues.values()) {
			if(otherPredicate.getValue() == false) {
				continue;
			}
			boolean equalFound = false;
			for(PredicateLiteral thisPredicate : predicateValues.values()) {
				if(otherPredicate.equals(thisPredicate)) {
					equalFound = true;
					break;
				}
			}
			if(!equalFound) {
				return false;
			}
		}
		
		return true;
	}

}
