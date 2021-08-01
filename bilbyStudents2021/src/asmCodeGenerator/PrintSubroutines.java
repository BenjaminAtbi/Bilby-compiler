package asmCodeGenerator;

import static asmCodeGenerator.Macros.*;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.GENERATES_VOID;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

public class PrintSubroutines {

	public static final String PRINT_ARRAY   					= "$print-array";
	private static final String PRINT_ARRAY_RETURN_ADDRESS  	= "$print-array-return-address";
	private static final String PRINT_ARRAY_DEPTH				= "$print-array-depth";
	private static final String PRINT_ARRAY_TYPEID				= "$print-array-typeid";
	private static final String PRINT_ARRAY_ADDRESS 			= "$print-array-address";
	private static final String PRINT_LOOP_INDEX				= "$print-array-index";
	private static final String PRINT_LOOP_START 				= "$print-array-loop-start";
	private static final String PRINT_LOOP_END 					= "$print-array-loop-end";
	private static final String PRINT_ARRAY_VALUE_START 		= "$print-array-value-start";
	private static final String PRINT_ARRAY_VALUE_END 			= "$print-array-value-end";
	
	public static final String PRINT_VALUE 						= "$print-value";
	private static final String PRINT_VALUE_RETURN_ADDRESS 		= "$print-value-return-address";
	private static final String PRINT_VALUE_TYPEID 				= "$print-value-typeid";
	private static final String PRINT_VALUE_ADDRESS 			= "$print-value-address";
	
	
	public static ASMCodeFragment codeForGeneration() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.append(printArraySubroutine());
		frag.append(printValueSubroutine());
		
		return frag;
	}
	
	
	/** Print Array args:
	 * array addr
	 * type identifier
	 * depth of current array (highest lvl is 0)
	 * @return
	 */
	private static ASMCodeFragment printArraySubroutine() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(Label, PRINT_ARRAY);		// [... addr typeID depth (return)]
		
		declareI(frag, PRINT_ARRAY_RETURN_ADDRESS);
		declareI(frag, PRINT_ARRAY_DEPTH);
		declareI(frag, PRINT_ARRAY_TYPEID);
		declareI(frag, PRINT_ARRAY_ADDRESS);
		declareI(frag, PRINT_LOOP_INDEX);
		
		storeITo(frag, PRINT_ARRAY_RETURN_ADDRESS); // [.. addr typeID depth ]
		storeITo(frag, PRINT_ARRAY_DEPTH);			// [.. addr typeID  ]
		storeITo(frag, PRINT_ARRAY_TYPEID);			// [.. addr  ]
		storeITo(frag, PRINT_ARRAY_ADDRESS);			// [.. ]
		
		
		frag.add(PushD, RunTime.OPEN_SQUARE_PRINT_FORMAT);
		frag.add(Printf);
		
		//get length of array
		loadIFrom(frag, PRINT_ARRAY_ADDRESS);			// [.. addr ]
		getRecordField(frag, 3);					// [.. length ]
		
		//if length = 0, jump to loop end
		frag.add(JumpFalse, PRINT_LOOP_END);
		
		//set index to 0
		frag.add(PushI, 0);
		storeITo(frag, PRINT_LOOP_INDEX);
		
		//loop label
		frag.add(Label, PRINT_LOOP_START);
		
		// if array depth is > 0, recursive call
		loadIFrom(frag, PRINT_ARRAY_DEPTH);
		frag.add(JumpFalse, PRINT_ARRAY_VALUE_START);
		
		//push "register" vals to stack
		loadIFrom(frag, PRINT_LOOP_INDEX);			 
		loadIFrom(frag, PRINT_ARRAY_ADDRESS);		
		loadIFrom(frag, PRINT_ARRAY_TYPEID);
		loadIFrom(frag, PRINT_ARRAY_DEPTH);	
		loadIFrom(frag, PRINT_ARRAY_RETURN_ADDRESS); // [.. index addr typeID depth returnAddr ]
		
		//push args
		loadIFrom(frag, PRINT_LOOP_INDEX);
		loadIFrom(frag, PRINT_ARRAY_ADDRESS);
		getArrayIndexAddr(frag);					// [.. index ]
		frag.add(LoadI);							// [.. indexAddress ]	
		loadIFrom(frag, PRINT_ARRAY_TYPEID);		// [.. indexAddress typeID ]
		loadIFrom(frag, PRINT_ARRAY_DEPTH);			// [.. indexAddress typeID parentDepth ]
		frag.add(PushI, 1);
		frag.add(Subtract);							// [.. indexAddress typeID childDepth ]
		
		
		//recursive call
		frag.add(Call, PRINT_ARRAY);
		
		//unload val to "registers"
		storeITo(frag, PRINT_ARRAY_RETURN_ADDRESS); // [.. index addr typeID depth ]
		storeITo(frag, PRINT_ARRAY_DEPTH);			
		storeITo(frag, PRINT_ARRAY_TYPEID);			
		storeITo(frag, PRINT_ARRAY_ADDRESS);			
		storeITo(frag, PRINT_LOOP_INDEX);			// [.. ]
		
		frag.add(Jump, PRINT_ARRAY_VALUE_END);
		
		// else print according to type identifier
		frag.add(Label, PRINT_ARRAY_VALUE_START);
		
		loadIFrom(frag, PRINT_LOOP_INDEX);
		loadIFrom(frag, PRINT_ARRAY_ADDRESS);		// [.. index arrayAddress]
		getArrayIndexAddr(frag);					// [.. indexAddress]
		loadIFrom(frag, PRINT_ARRAY_TYPEID);		// [.. indexAddress typeID ]
		
		frag.add(Call, PRINT_VALUE);
		
		frag.add(Label, PRINT_ARRAY_VALUE_END);
		
		// increment index
		incrementInteger(frag, PRINT_LOOP_INDEX);
		
		// if index == length, break
		loadIFrom(frag, PRINT_ARRAY_ADDRESS);
		getRecordField(frag, 3);			
		
		loadIFrom(frag, PRINT_LOOP_INDEX);								
		frag.add(Subtract);
		frag.add(JumpFalse, PRINT_LOOP_END);
		
		// else print delimiter, jump to loop start
		frag.add(PushD, RunTime.COMMA_PRINT_FORMAT);
		frag.add(Printf);
		frag.add(PushD, RunTime.SPACE_PRINT_FORMAT);
		frag.add(Printf);
		frag.add(Jump, PRINT_LOOP_START);
		
		//loop end label
		frag.add(Label, PRINT_LOOP_END);
		
		frag.add(PushD, RunTime.CLOSE_SQUARE_PRINT_FORMAT);
		frag.add(Printf);
	
		loadIFrom(frag, PRINT_ARRAY_RETURN_ADDRESS);
		frag.add(Return);
		
		return frag;
	}
	
	/** Print Value args:
	 * value address
	 * value typeid
	 * @return
	 */
	private static ASMCodeFragment printValueSubroutine() {
		
		Labeller labeller = new Labeller("print-value");
		String charLabel = labeller.newLabel("char");
		String intLabel = labeller.newLabel("int");
		String floatLabel = labeller.newLabel("float");
		String stringLabel = labeller.newLabel("string");
		String boolLabel = labeller.newLabel("bool");
		String trueLabel = labeller.newLabel("true");
		String pastTrueLabel = labeller.newLabel("pastTrue");
		String endLabel = labeller.newLabel("end");
		
		
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(Label, PRINT_VALUE);				//[.. addr typeID returnAddr ] 
		
		declareI(frag, PRINT_VALUE_RETURN_ADDRESS);
		declareI(frag, PRINT_VALUE_TYPEID);
		declareI(frag, PRINT_VALUE_ADDRESS);
		
		storeITo(frag, PRINT_VALUE_RETURN_ADDRESS); 
		storeITo(frag, PRINT_VALUE_TYPEID);
		storeITo(frag, PRINT_VALUE_ADDRESS);		//[.. ]
		
		//if type is Char
		frag.add(Label, charLabel);
		loadIFrom(frag, PRINT_VALUE_TYPEID);
		frag.add(JumpTrue, intLabel);
		
		loadIFrom(frag, PRINT_VALUE_ADDRESS);
		frag.add(LoadC);
		frag.add(PushD, RunTime.CHAR_PRINT_FORMAT);
		frag.add(Printf);
		
		//if type is int
		frag.add(Label, intLabel);
		loadIFrom(frag, PRINT_VALUE_TYPEID);
		frag.add(PushI, 1);
		frag.add(Subtract);
		frag.add(JumpTrue, floatLabel);
		
		loadIFrom(frag, PRINT_VALUE_ADDRESS);
		frag.add(LoadI);
		frag.add(PushD, RunTime.INTEGER_PRINT_FORMAT);
		frag.add(Printf);
		
		//if type is float
		frag.add(Label, floatLabel);
		loadIFrom(frag, PRINT_VALUE_TYPEID);
		frag.add(PushI, 2);
		frag.add(Subtract);
		frag.add(JumpTrue, stringLabel);
		
		loadIFrom(frag, PRINT_VALUE_ADDRESS);
		frag.add(LoadF);
		frag.add(PushD, RunTime.FLOATING_PRINT_FORMAT);
		frag.add(Printf);
		
		//if type is string
		frag.add(Label, stringLabel);
		loadIFrom(frag, PRINT_VALUE_TYPEID);
		frag.add(PushI, 3);
		frag.add(Subtract);
		frag.add(JumpTrue, boolLabel);
		
		loadIFrom(frag, PRINT_VALUE_ADDRESS);
		frag.add(LoadI);
		frag.add(PushI, 12);	//push past control bytes
		frag.add(Add);
		frag.add(PushD, RunTime.STRING_PRINT_FORMAT);
		frag.add(Printf);
		
		//if type is boolean
		frag.add(Label, boolLabel);
		loadIFrom(frag, PRINT_VALUE_TYPEID);
		frag.add(PushI, 4);
		frag.add(Subtract);
		frag.add(JumpTrue, endLabel);
		
		loadIFrom(frag, PRINT_VALUE_ADDRESS);
		frag.add(LoadC);
		frag.add(JumpTrue, trueLabel);
		frag.add(PushD, RunTime.BOOLEAN_FALSE_STRING);
		frag.add(Jump, pastTrueLabel);
		frag.add(Label, trueLabel);
		frag.add(PushD, RunTime.BOOLEAN_TRUE_STRING);
		frag.add(Label, pastTrueLabel);
		
		frag.add(PushD, RunTime.STRING_PRINT_FORMAT);
		frag.add(Printf);
		
		frag.add(Label, endLabel);
		loadIFrom(frag, PRINT_VALUE_RETURN_ADDRESS);
		frag.add(Return);
		
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
