package asmCodeGenerator.operators;

import asmCodeGenerator.codeStorage.ASMOpcode;


import java.util.List;

import asmCodeGenerator.Labeller;
import static asmCodeGenerator.Macros.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.RunTime.ARRAY_NEGATIVE_LENGTH_ERROR;

import asmCodeGenerator.runtime.MemoryManager;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.Type;

public class ArrayAllocCodeGenerator implements SimpleCodeGenerator {

	private static final String Addr = "array-addr";
	
	public ArrayAllocCodeGenerator() {
		super();
	}
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		//code.add(PushI, node.getType().isReference() ? 2 : 0); //set bit 1 if reference type
		
		Labeller labeller = new Labeller("alloc-array");
		String startLabel = labeller.newLabel("start");
		String loopHead = labeller.newLabel("loop");
		
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		code.add(Label, startLabel);
		code.append(args.get(1));					// [.. arrayLength ]
		
		code.add(Duplicate);
		code.add(JumpNeg, ARRAY_NEGATIVE_LENGTH_ERROR); // check length is positive
		
		code.add(Duplicate); 						// [.. arrayLength arrayLength ]
		storeITo(code, RunTime.REF_SPACE1);			// [.. arrayLength ] 	MEM(ref_space1) <- arrayLength
		
		Array nodeType = (Array)node.getType();		
		generateLength(code, nodeType.getSubtype().getSize());			// [.. memlength ] 
		
		code.add(Call, MemoryManager.MEM_MANAGER_ALLOCATE); // [.. addr ]
		
		storeITo(code, RunTime.REF_SPACE2);			// [.. ]	MEM(ref_space2) <- arrayAddr 
		
		loadIFrom(code, RunTime.REF_SPACE2);
		code.add(PushI, 7);
		code.add(StoreI);							// array{ type_identifier, .. } 
		
		code.add(PushI, node.getType().isReference() ? 2 : 0);
		loadIFrom(code, RunTime.REF_SPACE2);
		writeIOffset(code, 4);						// array{ type_identifier, status, .. } 
		
		code.add(PushI, nodeType.getSubtype().getSize());
		loadIFrom(code, RunTime.REF_SPACE2);
		writeIOffset(code, 8);						// array{ type_identifier, status, subtype_size, .. } 
		
		loadIFrom(code, RunTime.REF_SPACE1);
		loadIFrom(code, RunTime.REF_SPACE2);
		writeIOffset(code, 12);						// array{ type_identifier, status, subtype_size, length .. } 
		
	
		code.add(PushI, 0);
		storeITo(code, RunTime.REF_I);
		loadIFrom(code, RunTime.REF_SPACE2);		// [.. arrayAddr ]
		code.add(Label, loopHead);
		code.add(Duplicate);
		code.add(Duplicate);
		getRecordField(code, 2);					// [.. arrayAddr arrayAddr subtypeLength ]
		loadIFrom(code, RunTime.REF_I);				
		code.add(Multiply); 						// [.. arrayAddr arrayAddr indexOffset ]
		code.add(Add); 								// [.. arrayAddr elementIndex ]
		generatePush(code, node.getType());
		code.add(Exchange);
		writeIOffset(code, 16);						// [.. arrayAddr ]
		
		incrementInteger(code, RunTime.REF_I);
		loadIFrom(code, RunTime.REF_I);
		loadIFrom(code, RunTime.REF_SPACE1); // array length
		code.add(Subtract);
		code.add(JumpNeg, loopHead);
		
		return code;
	}
	
	private void generatePush(ASMCodeFragment code, Type type) {
		switch(type.getSize()) {
		case 1: code.add(PushI, 0); return;
		case 4: code.add(PushI, 0); return;
		case 8: code.add(PushF, 0); return;
		}
		return;
	}
}



//public void visit(StringConstantNode node) {
//	newValueCode(node);
//	
//	String label = new Labeller("string-constant").newLabel("");
//	code.add(DLabel, label);
//	code.add(DataI,3);
//	code.add(DataI,9);
//	code.add(DataI,node.getValue().length());
//	code.add(DataS,node.getValue());
//	code.add(PushD, label);
//}