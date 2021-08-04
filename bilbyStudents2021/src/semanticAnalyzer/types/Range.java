package semanticAnalyzer.types;

import java.util.Collection;

public class Range implements Type {

	Type subtype;
	
	public Range(Type subtype) {
		this.subtype = subtype;
	}
	
	@Override
	public int getSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String infoString() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean equivalent(Type otherType) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isReference() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Collection<TypeVariable> getTypeVariables() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Type concreteType() {
		// TODO Auto-generated method stub
		return null;
	}

}
