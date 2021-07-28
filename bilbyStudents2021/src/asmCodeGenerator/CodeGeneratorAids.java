package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.codeStorage.ASMOpcode;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

public class CodeGeneratorAids {
	public static ASMOpcode opcodeForStore(Type type) {
		if(type.isReference()) {
			return StoreI;
		}
		if(type.equals(PrimitiveType.CHAR)) {
			return StoreC;
		}
		if(type.equals(PrimitiveType.INTEGER)) {
			return StoreI;
		}
		if(type.equals(PrimitiveType.FLOAT)) {
			return StoreF;
		}
		if(type.equals(PrimitiveType.STRING)) {
			return StoreI;
		}
		if(type.equals(PrimitiveType.BOOLEAN)) {
			return StoreC;
		}
		assert false: "Type " + type + " unimplemented in opcodeForStore()";
		return null;
	}
	
	public static ASMOpcode opcodeForLoad(Type type) {
		if(type.isReference()) {
			return LoadI;
		}
		if(type.equals(PrimitiveType.CHAR)) {
			return LoadC;
		}
		if(type.equals(PrimitiveType.INTEGER)) {
			return LoadI;
		}
		if(type.equals(PrimitiveType.FLOAT)) {
			return LoadF;
		}
		if(type.equals(PrimitiveType.STRING)) {
			return LoadI;
		}
		if(type.equals(PrimitiveType.BOOLEAN)) {
			return LoadC;
		}
		assert false: "Type " + type + " unimplemented in opcodeForLoad()";
		return null;
	}
}
