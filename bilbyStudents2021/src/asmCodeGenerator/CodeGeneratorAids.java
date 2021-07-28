package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

import asmCodeGenerator.codeStorage.ASMOpcode;
import semanticAnalyzer.types.Type;

public class CodeGeneratorAids {
	
	public static ASMOpcode opcodeForStore(Type type) {
		if(type.isReference()) {
			return StoreI;
		} else {
			switch(type.getSize()) {
			case 1: return StoreC;
			case 4: return StoreI;
			case 8: return StoreF;
			default: assert false: "Type " + type + " unimplemented in opcodeForStore()";
					 return null;
			}
		}
	}
	
	public static ASMOpcode opcodeForLoad(Type type) {
		if(type.isReference()) {
			return LoadI;
		} else {
			switch(type.getSize()) {
			case 1: return LoadC;
			case 4: return LoadI;
			case 8: return LoadF;
			default: assert false: "Type " + type + " unimplemented in opcodeForLoad()";
					 return null;
			}
		}
	}
	
	public static ASMOpcode opcodeForPush(Type type) {
		if(type.isReference()) {
			return PushI;
		} else {
			switch(type.getSize()) {
			case 1: return PushI;
			case 4: return PushI;
			case 8: return PushF;
			default: assert false: "Type " + type + " unimplemented in opcodeForLoad()";
					 return null;
			}
		}
	}
}
