package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.runtime.RunTime;

import static asmCodeGenerator.runtime.RunTime.REF_SPACE_MACRO;

public class Macros {
	
	public static void addITo(ASMCodeFragment code, String location) {
		loadIFrom(code, location);
		code.add(Add);
		storeITo(code, location);
	}
	public static void subtractIFrom(ASMCodeFragment code, String location) {
		loadIFrom(code, location);
		code.add(Exchange);
		code.add(Subtract);
		storeITo(code, location);
	}
	public static void incrementInteger(ASMCodeFragment code, String location) {
		code.add(PushI, 1);
		addITo(code, location);
	}
	public static void decrementInteger(ASMCodeFragment code, String location) {
		code.add(PushI, -1);
		addITo(code, location);
	}
	
	public static void loadIFrom(ASMCodeFragment code, String location) {
		code.add(PushD, location);
		code.add(LoadI);
	}
	
	public static void loadIFromOffset(ASMCodeFragment code, String location, int offset) {
		code.add(PushD, location);
		code.add(PushI, offset);
		code.add(Add);
		code.add(LoadI);
	}
	
	public static void stackPointerStore(ASMCodeFragment code, ASMOpcode storeOpcode, int size) {
		code.add(PushI, size);
		
		subtractIFrom(code, RunTime.STACK_POINTER);
		
		loadIFrom(code, RunTime.STACK_POINTER);
		code.add(Exchange);
		code.add(storeOpcode);
	}
	
	public static void stackPointerStore(ASMCodeFragment code, ASMCodeFragment storeOpcode, int size) {
		code.add(PushI, size);
		subtractIFrom(code, RunTime.STACK_POINTER);
		loadIFrom(code, RunTime.STACK_POINTER);
		code.add(Exchange);
		code.append(storeOpcode);
	}
	
	public static void storeITo(ASMCodeFragment code, String location) {
		code.add(PushD, location);
		code.add(Exchange);
		code.add(StoreI);
	}
	public static void declareI(ASMCodeFragment code, String variableName) {
		code.add(DLabel, variableName);
		code.add(DataZ, 4);
	}
	
	/** [... baseLocation] -> [... intValue]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before reading
	 */
	public static void readIOffset(ASMCodeFragment code, int offset) {
		code.add(PushI, offset);	// [base offset]
		code.add(Add);				// [base+off]
		code.add(LoadI);			// [*(base+off)]
	}
	/** [... baseLocation] -> [... charValue]
	 * @param code ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before reading
	 */
	public static void readCOffset(ASMCodeFragment code, int offset) {
		code.add(PushI, offset);	// [base offset]
		code.add(Add);				// [base+off]
		code.add(LoadC);			// [*(base+off)]
	}
	/** [... intToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void writeIOffset(ASMCodeFragment code, int offset) {
		code.add(PushI, offset);	// [datum base offset]
		code.add(Add);				// [datum base+off]
		code.add(Exchange);			// [base+off datum]
		code.add(StoreI);			// []
	}
	
	/** [... charToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void writeCOffset(ASMCodeFragment code, int offset) {
		code.add(PushI, offset);	// [datum base offset]
		code.add(Add);				// [datum base+off]
		code.add(Exchange);			// [base+off datum]
		code.add(StoreC);			// []
	}
	
	/** [... intToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void storeIOffset(ASMCodeFragment code, String location,  int offset) {
		code.add(PushD, location);
		code.add(PushI, offset);	// [datum base offset]
		code.add(Add);				// [datum base+off]
		code.add(Exchange);			// [base+off datum]
		code.add(StoreI);			// []
	}
	
	public static void printStackPointer(ASMCodeFragment code) {
		loadIFrom(code, RunTime.STACK_POINTER);
		code.add(PStack);
		code.add(Pop);
	}
	
	public static void printFramePointer(ASMCodeFragment code) {
		loadIFrom(code, RunTime.FRAME_POINTER);
		code.add(PStack);
		code.add(Pop);
	}
	////////////////////////////////////////////////////////////////////
	// array record aids
	
	
	/** [ .. arrayLength ] -> [ .. memLength ]
	 * @param frag ASMCodeFragment to add code to
	 * @param byte length of array subtype 
	 */
	public static void generateLength(ASMCodeFragment code, int typeSize) {
		code.add(PushI, typeSize);
		code.add(Multiply);
		code.add(PushI, 16);
		code.add(Add);
	}
	
	/** [ .. addr ] -> [ .. value ]
	 * 0 indexed
	 * @param frag ASMCodeFragment to add code to
	 * @param byte length of array subtype 
	 */
	public static void getRecordField(ASMCodeFragment code, int fieldIndex) {
		code.add(PushI, 4 * fieldIndex);
		code.add(Add);
		code.add(LoadI);				
	}
	
	/** [ .. index addr ] -> [ .. indexAddr ]
	 * @param frag ASMCodeFragment to add code to
	 * @param byte length of array subtype 
	 */
	public static void getArrayIndexAddr(ASMCodeFragment code) {
		code.add(Duplicate); 				//[.. index addr addr]
		storeITo(code, REF_SPACE_MACRO);	//[.. index addr]
		getRecordField(code, 2);			//[.. index typesize]
		code.add(Multiply); 				
		code.add(PushI, 16); 
		code.add(Add); 						//[.. indexOffset]
		loadIFrom(code, REF_SPACE_MACRO);   //[.. indexOffset addr]
		code.add(Add);
	}
	
	/** [ .. addr index ] -> [ .. value ]
	 * @param frag ASMCodeFragment to add code to
	 * @param index to insert value into
	 */
	//public static void setElement(ASMCodeFragment code, int index) { 
		
	//}
	
	////////////////////////////////////////////////////////////////////
    // debugging aids

	// does not disturb accumulator.  Takes a format string - no %'s!
	public static void printString(ASMCodeFragment code, String format) {
		String stringLabel = new Labeller("pstring").newLabel("");
		code.add(DLabel, stringLabel);
		code.add(DataS, format);
		code.add(PushD, stringLabel);
		code.add(Printf);
	}
	// does not disturb accumulator.  Takes a format string
	public static void printAccumulatorTop(ASMCodeFragment code, String format) {
		String stringLabel = new Labeller("ptop").newLabel("");
		code.add(Duplicate);
		code.add(DLabel, stringLabel);
		code.add(DataS, format);
		code.add(PushD, stringLabel);
		code.add(Printf);
	}
	public static void printAccumulator(ASMCodeFragment code, String string) {
		String stringLabel = new Labeller("pstack").newLabel("");
		code.add(DLabel, stringLabel);
		code.add(DataS, string + " ");
		code.add(PushD, stringLabel);
		code.add(Printf);
		code.add(PStack);
	}
}
