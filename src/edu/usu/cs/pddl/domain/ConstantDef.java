package edu.usu.cs.pddl.domain;

import java.util.List;

public class ConstantDef extends FormalArgument {

	public ConstantDef(String name) {
		super(name);
	}
	
	public ConstantDef(String name, PDDLType type) {
		super(name, type);
	}
	
//	public ConstantDef(String name, List<FormalArgument> args) {
//		super(name, args);
//	}
//	
//	@Override
//	public boolean equals(Object obj) {
//        if (this == obj)
//            return true;
//        if (obj == null)
//            return false;
//        if (getClass() != obj.getClass())
//            return false;
//        return super.equals(obj);
//	}
}
