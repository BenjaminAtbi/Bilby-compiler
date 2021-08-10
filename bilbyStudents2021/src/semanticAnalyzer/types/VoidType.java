package semanticAnalyzer.types;

import java.util.Collection;

public class VoidType implements Type {

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
