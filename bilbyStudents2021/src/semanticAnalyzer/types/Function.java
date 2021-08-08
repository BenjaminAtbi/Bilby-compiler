package semanticAnalyzer.types;

import java.util.Collection;

public class Function implements Type {

	private static final int REFERENCE_TYPE_SIZE = 4;
	Type returnType;
	
	public Function(Type returnType) {
		this.returnType = returnType;
	}
	
	@Override
	public int getSize() {
		return REFERENCE_TYPE_SIZE;
	}

	public Type getReturnType() {
		return returnType;
	}
	
	@Override
	public String infoString() {
		return "F{" + getReturnType().infoString() + "}";
	}
	
	@Override
	public Collection<TypeVariable> getTypeVariables() {
		return returnType.getTypeVariables();
	}
	
	@Override
	public Type concreteType() {
		return new Function(returnType.concreteType());
	}
	
	@Override
	public boolean isReference() {
		return true;
	}

	@Override
	public boolean equivalent(Type otherType) {
		if(otherType instanceof Function) {
			Function otherArray = (Function)otherType;
			return returnType.equivalent(otherArray.getReturnType());
		}
		return false;
	}
}
