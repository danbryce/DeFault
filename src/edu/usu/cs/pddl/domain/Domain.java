/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: Domain.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/*
 * TODO: to get full(ish) PDDL implementation
 * - Constants: just objects defined at the domain level?
 * - Complete set of allowable GoalDescs: or, imply, exists, forall, not
 * - Complete set of allowable Effects: forall
 * - Analysis of requirements to see if we can deal with them all
 * - Support 'either' types
 * - Extend numeric support to non-integers
 * - Objects do not need to be declared, just appear in :init list? (p.18 PDDL 1.2)
 */
public class Domain
{
    /** PDDL is case-insensitive according to the specs */
    public static final boolean CASE_SENSITIVE = false;
    
    private final String name;
    private final List<String> requirements;
    private final List<PDDLType> types;
    private final List<FunctionDef> functions;
    private final List<PDDLObject> constants;
    private final List<PredicateDef> predicates;
    private final List<ActionDef> actions;
    private Set<PredicateDef> dynamicPredicates;
    private Set<ActionDef> closedPreconditions, closedAddEffects, closedDeleteEffects; //actions that are locally closed
    public Set<ActionDef> getClosedPreconditions() {
		return closedPreconditions;
	}

	public Set<ActionDef> getClosedAddEffects() {
		return closedAddEffects;
	}

	public Set<ActionDef> getClosedDeleteEffects() {
		return closedDeleteEffects;
	}

	private int maxUnknownPropositions;
    
    private final Map<String, FunctionDef> funcsByName;
    private final Map<String, PredicateDef> predsByName;

	private boolean strictSemantics;
	private boolean strictExponentCount;
    

    public void setStrictSemantics(boolean strictSemantics) {
		this.strictSemantics = strictSemantics;
	}

	public void setStrictExponentCount(boolean strictExponentCount) {
		this.strictExponentCount = strictExponentCount;
	}

	public Domain(final String name, 
                  final List<String> requirements, 
                       List<PDDLType> types, 
                       List<FunctionDef> functions, 
                  final List<PDDLObject> constants,
                  final List<PredicateDef> predicates, 
                  final List<ActionDef> actions,
                  int maxUnknownPropositions) {
        super();
        if (functions == null) {
            functions = Collections.emptyList();
        }
        
        this.name = name;
        this.requirements = requirements;
        this.types = types;
        this.functions = functions;
        this.constants = constants;
        this.predicates = predicates;
        this.actions = actions;
        this.maxUnknownPropositions = maxUnknownPropositions;
        this.strictSemantics = true;
        this.strictExponentCount = true;
        this.closedAddEffects = new HashSet<ActionDef>();
        this.closedDeleteEffects = new HashSet<ActionDef>();
        this.closedPreconditions = new HashSet<ActionDef>();
        
        // Make sure the implicit type 'object' is present
        if (types != null && !types.isEmpty()) {
            final PDDLType objType = new PDDLType("object");
            if (!types.contains(objType)) {
                types = new ArrayList<PDDLType>(types);
                types.add(objType);
            }
        }
        
        funcsByName = new HashMap<String, FunctionDef>();
        for (FunctionDef d : functions) {
            funcsByName.put(d.getName(), d);
        }
        predsByName = new HashMap<String, PredicateDef>();
        for (PredicateDef p : predicates) {
            predsByName.put(p.getName(), p);
        }
        
        dynamicPredicates = new HashSet<PredicateDef>();
        //Set which predicates are dynamic or static
        for(PredicateDef pd : predicates){
        	boolean dynamic = false;
        	for(ActionDef ad : actions){
        		Set<MethodDef> resultSet = new HashSet<MethodDef>();
//        		resultSet.addAll(ad.getPreconditionMethods());
        		ad.getEffect().getMethodDefs(resultSet);
        		ad.getPossEffect().getMethodDefs(resultSet);
        		ad.getPossPreCondition().getMethods(resultSet);
//        		ad.getEffect().getLiteralsUsed(resultSet);
        		if(resultSet.contains(pd)){
        			dynamic = true;
        			dynamicPredicates.add(pd);
        			break;
        		}
        	}
        	pd.setDynamic(dynamic);        	
        }
        
    }

    public List<ActionDef> getActions() {
        return actions;
    }

    public List<FunctionDef> getFunctions() {
        return functions;
    }
    
    public FunctionDef getFunctionByName(String name) {
        return funcsByName.get(name);
    }

    public String getName() {
        return name;
    }
    
    public List<PDDLObject> getConstants() {
    	return constants;
    }

    public List<PredicateDef> getPredicates() {
        return predicates;
    }
    
    public boolean isClosedPrecondition(ActionDef act){
    	return closedPreconditions.contains(act);
    }
    

    public boolean isClosedAddEffect(ActionDef act){
    	return closedAddEffects.contains(act);
    }
    public boolean isClosedDeleteEffect(ActionDef act){
    	return closedDeleteEffects.contains(act);
    }

    
    //Added in order to check what changes in a domain... cw 7/1/10
    public Set <PredicateDef> getDynamicPredicates() {
        return dynamicPredicates;
    }

    public PredicateDef getPredicateByName(String name) {
        return predsByName.get(name);
    }

    public List<String> getRequirements() {
        return requirements;
    }

    public List<PDDLType> getTypes() {
        return types;
    }
    
    public boolean isDynamic(PredicateDef p){
    	return dynamicPredicates.contains(p);
    }

	public int getMaxUnknownPropositions() {
		// TODO Auto-generated method stub
		return maxUnknownPropositions;
	}

	public boolean isStrictSemantics() {
		// TODO Auto-generated method stub
		return strictSemantics;
	}

	public boolean isStrictExponentCount() {
		// TODO Auto-generated method stub
		return strictExponentCount;
	}
    
}
