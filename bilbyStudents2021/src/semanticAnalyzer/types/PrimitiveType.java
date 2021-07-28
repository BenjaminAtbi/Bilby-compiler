package semanticAnalyzer.types;

import java.util.ArrayList;
import java.util.Collection;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

import tokens.LextantToken;

public enum PrimitiveType implements Type {
	BOOLEAN(1),
	CHAR(1),
	INTEGER(4),
	FLOAT(8),
	STRING(4),
	ERROR(0),			// use as a value when a syntax error has occurred
	NO_TYPE(0, "");		// use as a value when no type has been assigned.
	
	private int sizeInBytes;
	private String infoString;
	
	private PrimitiveType(int size) {
		this.sizeInBytes = size;
		this.infoString = toString();
	}
	private PrimitiveType(int size, String infoString) {
		this.sizeInBytes = size;
		this.infoString = infoString;
	}
	public int getSize() {
		return sizeInBytes;
	}
	public String infoString() {
		return infoString;
	}
	
	public static PrimitiveType fromToken(LextantToken token) {
		switch(token.getLextant().getLexeme()) {
			case "bool": return PrimitiveType.BOOLEAN;
			case "char": return PrimitiveType.CHAR;
			case "string": return PrimitiveType.STRING;
			case "int": return PrimitiveType.INTEGER;
			case "float": return PrimitiveType.FLOAT;
		}
		return null;
	}
}
