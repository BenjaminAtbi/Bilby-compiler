package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;
import static asmCodeGenerator.Macros.*;
import static asmCodeGenerator.CodeGeneratorAids.*;
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
		
		code.add(opcodeForPush(node.getType()), 0); // [.. arrayAddr elementIndex 0 ]
		
		code.add(Exchange);							// [.. arrayAddr 0 elementIndex ]
		writeIOffset(code, 16);						// [.. arrayAddr ]
		
		incrementInteger(code, RunTime.REF_I);
		loadIFrom(code, RunTime.REF_I);
		loadIFrom(code, RunTime.REF_SPACE1); // array length
		code.add(Subtract);
		code.add(JumpNeg, loopHead);
		
		return code;
	}
}