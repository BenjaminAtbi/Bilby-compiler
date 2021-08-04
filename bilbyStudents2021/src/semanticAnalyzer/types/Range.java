package semanticAnalyzer.types;

import java.util.Collection;

public class Range implements Type {

	Type subtype;
	
	public Range(Type subtype) {
		this.subtype = subtype;
	}
	
	@Override
	public int getSize() {
		return subtype.getSize() * 2;
	}

	public Type getSubtype() {
		return subtype;
	}
	
	@Override
	public String infoString() {
		return "<"+ subtype.infoString()+">";
	}

	@Override
	public boolean equivalent(Type otherType) {
		if(otherType instanceof Range) {
			Range otherRange = (Range)otherType;
			return subtype.equivalent(otherRange.getSubtype());
		}
		return false;
	}

	@Override
	public boolean isReference() {
		return false;
	}

	@Override
	public Collection<TypeVariable> getTypeVariables() {
		return subtype.getTypeVariables();
	}

	@Override
	public Type concreteType() {
		return new Range(subtype.concreteType());
	}

}
