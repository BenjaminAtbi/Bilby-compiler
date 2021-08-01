package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import static asmCodeGenerator.runtime.RunTime.REF_SPACE_MACRO;

public class Macros {
	
	public static void addITo(ASMCodeFragment frag, String location) {
		loadIFrom(frag, location);
		frag.add(Add);
		storeITo(frag, location);
	}
	public static void incrementInteger(ASMCodeFragment frag, String location) {
		frag.add(PushI, 1);
		addITo(frag, location);
	}
	public static void decrementInteger(ASMCodeFragment frag, String location) {
		frag.add(PushI, -1);
		addITo(frag, location);
	}
	
	public static void loadIFrom(ASMCodeFragment frag, String location) {
		frag.add(PushD, location);
		frag.add(LoadI);
	}
	public static void storeITo(ASMCodeFragment frag, String location) {
		frag.add(PushD, location);
		frag.add(Exchange);
		frag.add(StoreI);
	}
	public static void declareI(ASMCodeFragment frag, String variableName) {
		frag.add(DLabel, variableName);
		frag.add(DataZ, 4);
	}
	
	/** [... baseLocation] -> [... intValue]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before reading
	 */
	public static void readIOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [base offset]
		frag.add(Add);				// [base+off]
		frag.add(LoadI);			// [*(base+off)]
	}
	/** [... baseLocation] -> [... charValue]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before reading
	 */
	public static void readCOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [base offset]
		frag.add(Add);				// [base+off]
		frag.add(LoadC);			// [*(base+off)]
	}
	/** [... intToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void writeIOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [datum base offset]
		frag.add(Add);				// [datum base+off]
		frag.add(Exchange);			// [base+off datum]
		frag.add(StoreI);			// []
	}
	
	/** [... charToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void writeCOffset(ASMCodeFragment frag, int offset) {
		frag.add(PushI, offset);	// [datum base offset]
		frag.add(Add);				// [datum base+off]
		frag.add(Exchange);			// [base+off datum]
		frag.add(StoreC);			// []
	}
	
	/** [... intToWrite baseLocation] -> [...]
	 * @param frag ASMCodeFragment to add code to
	 * @param offset amount to add to the base location before writing 
	 */
	public static void storeIOffset(ASMCodeFragment frag, String location,  int offset) {
		frag.add(PushD, location);
		frag.add(PushI, offset);	// [datum base offset]
		frag.add(Add);				// [datum base+off]
		frag.add(Exchange);			// [base+off datum]
		frag.add(StoreI);			// []
	}
	
	////////////////////////////////////////////////////////////////////
	// array record aids
	
	
	/** [ .. arrayLength ] -> [ .. memLength ]
	 * @param frag ASMCodeFragment to add code to
	 * @param byte length of array subtype 
	 */
	public static void generateLength(ASMCodeFragment frag, int typeSize) {
		frag.add(PushI, typeSize);
		frag.add(Multiply);
		frag.add(PushI, 16);
		frag.add(Add);
	}
	
	/** [ .. addr ] -> [ .. value ]
	 * 0 indexed
	 * @param frag ASMCodeFragment to add code to
	 * @param byte length of array subtype 
	 */
	public static void getRecordField(ASMCodeFragment frag, int fieldIndex) {
		frag.add(PushI, 4 * fieldIndex);
		frag.add(Add);
		frag.add(LoadI);				
	}
	
	/** [ .. index addr ] -> [ .. indexAddr ]
	 * @param frag ASMCodeFragment to add code to
	 * @param byte length of array subtype 
	 */
	public static void getArrayIndexAddr(ASMCodeFragment frag) {
		frag.add(Duplicate); 				//[.. index addr addr]
		storeITo(frag, REF_SPACE_MACRO);	//[.. index addr]
		getRecordField(frag, 2);			//[.. index typesize]
		frag.add(Multiply); 				
		frag.add(PushI, 16); 
		frag.add(Add); 						//[.. indexOffset]
		loadIFrom(frag, REF_SPACE_MACRO);   //[.. indexOffset addr]
		frag.add(Add);
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
