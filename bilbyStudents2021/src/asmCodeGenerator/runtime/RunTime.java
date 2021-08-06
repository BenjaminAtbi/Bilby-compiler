package asmCodeGenerator.runtime;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.CodeGeneratorAids;
public class RunTime {
	public static final String EAT_LOCATION_ZERO      = "$eat-location-zero";		// helps us distinguish null pointers from real ones.
	public static final String CHAR_PRINT_FORMAT 	  = "$print-format-char";
	public static final String INTEGER_PRINT_FORMAT   = "$print-format-integer";
	public static final String FLOATING_PRINT_FORMAT  = "$print-format-floating";
	public static final String STRING_PRINT_FORMAT 	  = "$print-format-string";
	public static final String BOOLEAN_PRINT_FORMAT   = "$print-format-boolean";
	public static final String NEWLINE_PRINT_FORMAT   = "$print-format-newline";
	public static final String SPACE_PRINT_FORMAT     = "$print-format-space";
	public static final String OPEN_SQUARE_PRINT_FORMAT   = "$print-format-open-square";
	public static final String CLOSE_SQUARE_PRINT_FORMAT  = "$print-format-close-square";
	public static final String LESS_PRINT_FORMAT 	  = "$print-format-less";
	public static final String GREATER_PRINT_FORMAT   = "$print-format-greater";
	public static final String COMMA_PRINT_FORMAT     = "$print-format-comma";
	public static final String RANGE_PRINT_FORMAT 	  = "$print-format-period";
	public static final String BOOLEAN_TRUE_STRING    = "$boolean-true-string";
	public static final String BOOLEAN_FALSE_STRING   = "$boolean-false-string";
	public static final String REF_SPACE1 			  = "$reference-space-1";
	public static final String REF_SPACE2 			  = "$reference-space-2";
	public static final String REF_SPACE_MACRO 		  = "$reference-space-macro";
	public static final String REF_I				  = "$reference-space-Iter";
	public static final String GLOBAL_MEMORY_BLOCK    = "$global-memory-block";
	public static final String USABLE_MEMORY_START    = "$usable-memory-start";
	public static final String MAIN_PROGRAM_LABEL     = "$$main";
	
	public static final String GENERAL_RUNTIME_ERROR = "$$general-runtime-error";
	public static final String INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR = "$$i-divide-by-zero";
	public static final String FLOAT_DIVIDE_BY_ZERO_RUNTIME_ERROR = "$$f-divide-by-zero";
	public static final String ARRAY_OUT_OF_BOUNDS_ERROR = "$$array-out-of-bounds";
	public static final String ARRAY_NEGATIVE_LENGTH_ERROR = "$$array-negative-length";
	public static final String ARRAY_NOT_INITIALIZED_ERROR = "$$array-not-initialized";
	public static final String RANGE_CONTAINS_INVALID_TYPE_ERROR = "$$range-contains-invalid-type";
	public static final String RANGE_LOW_HIGH_MISMATCH_ERROR = "$$range-low-high-mismatch";
	
	
	

	private ASMCodeFragment environmentASM() {
		ASMCodeFragment result = new ASMCodeFragment(GENERATES_VOID);
		result.append(jumpToMain());
		result.append(stringsForPrintf());
		result.append(runtimeErrors());
		result.append(referenceSpace());
		result.append(CodeGeneratorAids.rangeRecordSpace());
		result.add(DLabel, USABLE_MEMORY_START);
		return result;
	}
	
	private ASMCodeFragment jumpToMain() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(Jump, MAIN_PROGRAM_LABEL);
		return frag;
	}

	private ASMCodeFragment stringsForPrintf() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(DLabel, EAT_LOCATION_ZERO);
		frag.add(DataZ, 8);
		frag.add(DLabel, CHAR_PRINT_FORMAT);
		frag.add(DataS, "%c");
		frag.add(DLabel, INTEGER_PRINT_FORMAT);
		frag.add(DataS, "%d");
		frag.add(DLabel, FLOATING_PRINT_FORMAT);
		frag.add(DataS, "%f");
		frag.add(DLabel, STRING_PRINT_FORMAT);
		frag.add(DataS, "%s");		
		frag.add(DLabel, BOOLEAN_PRINT_FORMAT);
		frag.add(DataS, "%s");
		frag.add(DLabel, NEWLINE_PRINT_FORMAT);
		frag.add(DataS, "\n");
		frag.add(DLabel, SPACE_PRINT_FORMAT);
		frag.add(DataS, " ");
		frag.add(DLabel, OPEN_SQUARE_PRINT_FORMAT);
		frag.add(DataS, "[");
		frag.add(DLabel, CLOSE_SQUARE_PRINT_FORMAT);
		frag.add(DataS, "]");
		frag.add(DLabel, LESS_PRINT_FORMAT);
		frag.add(DataS, "<");
		frag.add(DLabel, GREATER_PRINT_FORMAT);
		frag.add(DataS, ">");
		frag.add(DLabel, RANGE_PRINT_FORMAT);
		frag.add(DataS, "..");
		frag.add(DLabel, COMMA_PRINT_FORMAT);
		frag.add(DataS, ",");
		frag.add(DLabel, BOOLEAN_TRUE_STRING);
		frag.add(DataS, "true");
		frag.add(DLabel, BOOLEAN_FALSE_STRING);
		frag.add(DataS, "false");
		
		return frag;
	}
	
	private ASMCodeFragment referenceSpace() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		frag.add(DLabel, REF_SPACE1);
		frag.add(DataZ, 4);
		frag.add(DLabel, REF_SPACE2);
		frag.add(DataZ, 4);
		frag.add(DLabel, REF_SPACE_MACRO);
		frag.add(DataZ, 4);
		frag.add(DLabel, REF_I);
		frag.add(DataZ, 4);
		return frag;
	}
	
	private ASMCodeFragment runtimeErrors() {
		ASMCodeFragment frag = new ASMCodeFragment(GENERATES_VOID);
		
		generalRuntimeError(frag);
		integerDivideByZeroError(frag);
		floatDivideByZeroError(frag);
		arrayOutOfBoundsError(frag);
		arrayNegativeLengthError(frag);
		arrayNotInitializedError(frag);
		rangeContainsInvalidTypeError(frag);
		rangeLowHighMismatchError(frag);
		return frag;
	}
	private ASMCodeFragment generalRuntimeError(ASMCodeFragment frag) {
		String generalErrorMessage = "$errors-general-message";

		frag.add(DLabel, generalErrorMessage);
		frag.add(DataS, "Runtime error: %s\n");
		
		frag.add(Label, GENERAL_RUNTIME_ERROR);
		frag.add(PushD, generalErrorMessage);
		frag.add(Printf);
		frag.add(Halt);
		return frag;
	}
	private void integerDivideByZeroError(ASMCodeFragment frag) {
		String intDivideByZeroMessage = "$errors-int-divide-by-zero";
		
		frag.add(DLabel, intDivideByZeroMessage);
		frag.add(DataS, "integer divide by zero");
		
		frag.add(Label, INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR);
		frag.add(PushD, intDivideByZeroMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	private void floatDivideByZeroError(ASMCodeFragment frag) {
		String floatDivideByZeroMessage = "$errors-float-divide-by-zero";
		
		frag.add(DLabel, floatDivideByZeroMessage);
		frag.add(DataS, "float divide by zero");
		
		frag.add(Label, FLOAT_DIVIDE_BY_ZERO_RUNTIME_ERROR);
		frag.add(PushD, floatDivideByZeroMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	private void arrayOutOfBoundsError(ASMCodeFragment frag) {
		String errorMessage = "$array-out-of-bounds";
		
		frag.add(DLabel, errorMessage);
		frag.add(DataS, "array index out of bounds");
		
		frag.add(Label, ARRAY_OUT_OF_BOUNDS_ERROR);
		frag.add(PushD, errorMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	private void arrayNegativeLengthError(ASMCodeFragment frag) {
		String errorMessage = "$array-negative-length";
		
		frag.add(DLabel, errorMessage);
		frag.add(DataS, "negative length given for array");
		
		frag.add(Label, ARRAY_NEGATIVE_LENGTH_ERROR);
		frag.add(PushD, errorMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	private void arrayNotInitializedError(ASMCodeFragment frag) {
		String errorMessage = "$array-not-initialized";
		
		frag.add(DLabel, errorMessage);
		frag.add(DataS, "array not initialized");
		
		frag.add(Label, ARRAY_NOT_INITIALIZED_ERROR);
		frag.add(PushD, errorMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	private void rangeContainsInvalidTypeError(ASMCodeFragment frag) {
		String errorMessage = "$range-contains-invalid-type";
		
		frag.add(DLabel, errorMessage);
		frag.add(DataS, "range contains invalid type");
		
		frag.add(Label, RANGE_CONTAINS_INVALID_TYPE_ERROR);
		frag.add(PushD, errorMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	private void rangeLowHighMismatchError(ASMCodeFragment frag) {
		String errorMessage = "$range-low-high-mismatch";
		
		frag.add(DLabel, errorMessage);
		frag.add(DataS, "range low value is higher than high value");
		
		frag.add(Label, RANGE_LOW_HIGH_MISMATCH_ERROR);
		frag.add(PushD, errorMessage);
		frag.add(Jump, GENERAL_RUNTIME_ERROR);
	}
	
	public static ASMCodeFragment getEnvironment() {
		RunTime rt = new RunTime();
		return rt.environmentASM();
	}
}
