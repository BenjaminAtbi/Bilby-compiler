package asmCodeGenerator;

import asmCodeGenerator.codeStorage.ASMOpcode;
import semanticAnalyzer.types.Type;

public class CodeGeneratorAids {
	
	public static ASMOpcode opcodeForLoad(Type type) {
		switch(type.getSize()) {
			case 1: return ASMOpcode.LoadI;
			case 4: return ASMOpcode.LoadI;
			case 8: return ASMOpcode.LoadF;
			default: return null;
		}
	}
	
	public static ASMOpcode opcodeForStore(Type type) {
		switch(type.getSize()) {
			case 1: return ASMOpcode.StoreI;
			case 4: return ASMOpcode.StoreI;
			case 8: return ASMOpcode.StoreF;
			default: return null;
		}
	}
}
