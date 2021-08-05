package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.GENERATES_VOID;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.GENERATES_VALUE;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import semanticAnalyzer.types.*;

public class CodeGeneratorAids {
	private static final String RANGE_STORE_OUTER_VAL = "$range-move-outer-val";
	private static final String RANGE_STORE_INNER_VAL = "$range-move-inner-val";
	private static final String RANGE_LOAD_OUTER_VAL  = "$range-load-outer-val";

	public static void opcodeForStore(ASMCodeFragment code, Type type) {

		if(type.isReference()) {
			code.add(StoreI);
		}
		else if(type.equals(PrimitiveType.CHAR)) {
			code.add(StoreC);
		}
		else if(type.equals(PrimitiveType.INTEGER)) {
			code.add(StoreI);
		}
		else if(type.equals(PrimitiveType.FLOAT)) {
			code.add(StoreF);
		}
		else if(type.equals(PrimitiveType.STRING)) {
			code.add(StoreI);
		}
		else if(type.equals(PrimitiveType.BOOLEAN)) {
			code.add(StoreC);
		}
		else if(type instanceof Range) {
			ASMCodeFragment subtypeStore = new ASMCodeFragment(CodeType.GENERATES_VOID);
			opcodeForStore(subtypeStore, ((Range) type).getSubtype());
			code.append(rangeStore(type));
		}
		else {
			assert false: "Type " + type + " unimplemented in opcodeForStore()";
		}
	}

	public static void opcodeForLoad(ASMCodeFragment code, Type type) {
		if(type.isReference()) {
			code.add(LoadI);
		}
		else if(type.equals(PrimitiveType.CHAR)) {
			code.add(LoadC);
		}
		else if(type.equals(PrimitiveType.INTEGER)) {
			code.add(LoadI);
		}
		else if(type.equals(PrimitiveType.FLOAT)) {
			code.add(LoadF);
		}
		else if(type.equals(PrimitiveType.STRING)) {
			code.add(LoadI);
		}
		else if(type.equals(PrimitiveType.BOOLEAN)) {
			code.add(LoadC);
		}
		else if(type instanceof Range) {
			ASMCodeFragment subtypeLoad = new ASMCodeFragment(CodeType.GENERATES_VOID);
			opcodeForLoad(subtypeLoad, ((Range) type).getSubtype());
			code.append(rangeLoad(type));
		}
		else {
			assert false: "Type " + type + " unimplemented in opcodeForLoad()";
		}
	}
	
	public static ASMOpcode opcodeForPush(Type type) {
		if(type.isReference()) {
			return PushI;
		}
		if(type.equals(PrimitiveType.CHAR)) {
			return PushI;
		}
		if(type.equals(PrimitiveType.INTEGER)) {
			return PushI;
		}
		if(type.equals(PrimitiveType.FLOAT)) {
			return PushF;
		}
		if(type.equals(PrimitiveType.STRING)) {
			return PushI;
		}
		if(type.equals(PrimitiveType.BOOLEAN)) {
			return PushI;
		}		
		assert false: "Type " + type + " unimplemented in opcodeForPush()";
		return null;
	}
	
	private static ASMCodeFragment rangeStore(Type type) {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		ASMCodeFragment subtypeStore = new ASMCodeFragment(CodeType.GENERATES_VOID);
		opcodeForStore(subtypeStore, ((Range) type).getSubtype());
		ASMCodeFragment subtypeLoad = new ASMCodeFragment(CodeType.GENERATES_VOID);
		opcodeForLoad(subtypeLoad, ((Range) type).getSubtype());
		
		frag.add(DLabel, RANGE_STORE_OUTER_VAL);
		frag.add(DataZ, 8);
		frag.add(DLabel, RANGE_STORE_INNER_VAL);
		frag.add(DataZ, 8);
		
		frag.add(PushD, RANGE_STORE_OUTER_VAL);
		frag.add(Exchange);
		frag.append(subtypeStore);				//store outer value
		frag.add(PushD, RANGE_STORE_INNER_VAL);
		frag.add(Exchange);
		frag.append(subtypeStore);				//store inner value
		
		frag.add(Duplicate);					//duplicate address
		
		frag.add(PushD, RANGE_STORE_INNER_VAL);
		frag.append(subtypeLoad);
		frag.append(subtypeStore);				//store inner val at address
		
		frag.add(PushI, type.getSize());
		frag.add(Add);							//shift address 
		
		frag.add(PushD, RANGE_STORE_OUTER_VAL);
		frag.append(subtypeLoad);
		frag.append(subtypeStore);				//store outer val at address
		
		return frag;
	}
	
	private static ASMCodeFragment rangeLoad(Type type) {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VALUE);
		ASMCodeFragment subtypeStore = new ASMCodeFragment(CodeType.GENERATES_VOID);
		opcodeForStore(subtypeStore, ((Range) type).getSubtype());
		ASMCodeFragment subtypeLoad = new ASMCodeFragment(CodeType.GENERATES_VOID);
		opcodeForLoad(subtypeLoad, ((Range) type).getSubtype());
		
		frag.add(DLabel, RANGE_LOAD_OUTER_VAL);
		frag.add(DataZ, 8);
		
		frag.add(Duplicate);					//duplicate address
		
		frag.append(subtypeLoad);
		frag.add(PushD, RANGE_STORE_OUTER_VAL);
		frag.add(Exchange);
		frag.append(subtypeStore);				//load and store inner value
		
		frag.add(PushI, type.getSize());
		frag.add(Add);							//shift address 
		
		frag.append(subtypeLoad);				//load outer value
		frag.add(PushD, RANGE_STORE_OUTER_VAL);
		frag.append(subtypeLoad); 				//load inner again
		frag.add(Exchange); 					//reorder inner and outer
		
		return frag;
	}
}
