package asmCodeGenerator;

import static asmCodeGenerator.Macros.*;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.GENERATES_VOID;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

public class PrintArraySubroutine {

	public static final String PRINT_ARRAY   					= "$print-array";
	private static final String PRINT_ARRAY_RETURN_ADDRESS  	= "$print-array-return-address";
	private static final String PRINT_ARRAY_DEPTH				= "$print-array-depth";
	private static final String PRINT_ARRAY_INDEX				= "$print-array-index";
	private static final String PRINT_ARRAY_TYPEID				= "$print-array-typeid";
	private static final String PRINT_ARRAY_ADDR 				= "$print-array-addr";
	private static final String PRINT_LOOP_START 				= "$print-array-loop-start";
	private static final String PRINT_LOOP_END 					= "$print-array-loop-end";
	
	/** SUBROUTINE ARGS
	 * array addr
	 * type identifier
	 * depth of current array (highest lvl is 0)
	 * @return
	 */
	
	
	public static ASMCodeFragment PrintArray() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(Label, PRINT_ARRAY);		// [... addr typeID depth (return)]
		
		declareI(frag, PRINT_ARRAY_RETURN_ADDRESS);
		declareI(frag, PRINT_ARRAY_DEPTH);
		declareI(frag, PRINT_ARRAY_INDEX);
		declareI(frag, PRINT_ARRAY_TYPEID);
		
		storeITo(frag, PRINT_ARRAY_RETURN_ADDRESS); // [.. addr typeID depth ]
		storeITo(frag, PRINT_ARRAY_DEPTH);			// [.. addr typeID  ]
		storeITo(frag, PRINT_ARRAY_TYPEID);			// [.. addr  ]
		storeITo(frag, PRINT_ARRAY_ADDR);			// [.. ]
		
		frag.add(PushD, RunTime.OPEN_SQUARE_PRINT_FORMAT);
		frag.add(Printf);
		
		//get length of array
		loadIFrom(frag, PRINT_ARRAY_ADDR);			// [.. addr ]
		getRecordField(frag, 3);					// [.. length ]
		
		//if length = 0, jump to loop end
		frag.add(JumpFalse, PRINT_LOOP_END);
		//set index to 0
		
		//loop label
		frag.add(Label, PRINT_LOOP_START);
		
		// if array depth is > 0, recursive call
		
		
		// else print according to type identifier
		
		// increment index
		// if index == length, break
		// else print delimiter, jump to loop start
		
		//loop end label
		frag.add(Label, PRINT_LOOP_END);
		
		frag.add(PushD, RunTime.CLOSE_SQUARE_PRINT_FORMAT);
		frag.add(Printf);
		
		return frag;
	}
	
	public static int getTypeID(Type type) {

		if(type instanceof Array) {
			type = ((Array)type).baseType();
		}
		
		if(type.equivalent(PrimitiveType.CHAR)) {
			return 0;
		}
		if(type.equivalent(PrimitiveType.INTEGER)) {
			return 1;
		}
		if(type.equivalent(PrimitiveType.FLOAT)) {
			return 2;
		}
		if(type.equivalent(PrimitiveType.STRING)) {
			return 3;
		}
		if(type.equivalent(PrimitiveType.BOOLEAN)) {
			return 4;
		}
		
		assert false : "Type " + type.infoString() + " unimplemented in PrintArraySubroutine.getTypeID()";
		return -1;
	}
}
