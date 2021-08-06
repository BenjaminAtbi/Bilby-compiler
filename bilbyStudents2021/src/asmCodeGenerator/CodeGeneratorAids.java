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

	public static ASMCodeFragment opcodeForStore(Type type) {
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VOID);
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
			code.append(rangeStore(type));
		}
		else {
			assert false: "Type " + type + " unimplemented in opcodeForStore()";
		}
		return code;
	}

	public static ASMCodeFragment opcodeForLoad(Type type) {
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VOID);
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
			code.append(rangeLoad(type));
		}
		else {
			assert false: "Type " + type + " unimplemented in opcodeForLoad()";
		}
		return code;
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
		Type subtype = ((Range) type).getSubtype();
		

		
		frag.add(PushD, RANGE_STORE_OUTER_VAL);
		frag.add(Exchange);
		frag.append(opcodeForStore(subtype));				//store outer value
		
		frag.add(PushD, RANGE_STORE_INNER_VAL);
		frag.add(Exchange);
		frag.append(opcodeForStore(subtype));				//store inner value
		
		frag.add(Duplicate);								//duplicate address
		
		frag.add(PushD, RANGE_STORE_INNER_VAL);
		frag.append(opcodeForLoad(subtype));				//load inner again
		frag.append(opcodeForStore(subtype));				//store inner val at address
		
		frag.add(PushI, subtype.getSize());
		frag.add(Add);										//shift address 
		frag.add(PushD, RANGE_STORE_OUTER_VAL);
		frag.append(opcodeForLoad(subtype));
		frag.append(opcodeForStore(subtype));				//store outer val at address
		
		return frag;
	}
	
	private static ASMCodeFragment rangeLoad(Type type) {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VALUE);
		Type subtype = ((Range) type).getSubtype();
		
		
		frag.add(Duplicate);								// [.. address address ]
		
		frag.append(opcodeForLoad(subtype));				// [.. address value1 ]			
		frag.add(Exchange);									// [.. value1 address ]
		frag.add(PushI, subtype.getSize());
		frag.add(Add);										// [.. value1 address2 ]
		
		frag.append(opcodeForLoad(subtype));				// [.. value1 value2 ]
		
		return frag;
	}
	
	public static ASMCodeFragment rangeRecordSpace() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(DLabel, RANGE_STORE_OUTER_VAL);
		frag.add(DataZ, 8);
		frag.add(DLabel, RANGE_STORE_INNER_VAL);
		frag.add(DataZ, 8);
		frag.add(DLabel, RANGE_LOAD_OUTER_VAL);
		frag.add(DataZ, 8);
		return frag;
	}
}
