package semanticAnalyzer.types;

import java.util.Collection;

public class Array implements Type {

	private static final int REFERENCE_TYPE_SIZE = 4;
	Type subtype;
	
	public Array(Type subtype) {
		this.subtype = subtype;
	}
	@Override
	public int getSize() {
		return REFERENCE_TYPE_SIZE;
	}

	public Type getSubtype() {
		return subtype;
	}
	
	@Override
	public String infoString() {
		return "[" + getSubtype().infoString() + "]";
	}
	
	public boolean equivalent(Type otherType) {
		if(otherType instanceof Array) {
			Array otherArray = (Array)otherType;
			return subtype.equivalent(otherArray.getSubtype());
		}
		return false;
	}
	@Override
	public Collection<TypeVariable> getTypeVariables() {
		return subtype.getTypeVariables();
	}
	@Override
	public Type concreteType() {
		return new Array(subtype.concreteType());
	}
	@Override
	public boolean isReference() {
		return true;
	}

	//recursive array functions
	
	public Type baseType() {
		Array nextArray = this;
		while(nextArray.getSubtype() instanceof Array) {
			nextArray = (Array)nextArray.getSubtype();
		}
		return nextArray.getSubtype();
	}
	
	public int getDepth() {
		
		int depth = 0;
		Array nextArray = this;
		while(nextArray.getSubtype() instanceof Array) {
			depth++;
			nextArray = (Array)nextArray.getSubtype();
		}
		return depth;
	}
	
}
