package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;

import static asmCodeGenerator.CodeGeneratorAids.*;
import static asmCodeGenerator.Macros.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.runtime.RunTime.ARRAY_NEGATIVE_LENGTH_ERROR;

import asmCodeGenerator.runtime.MemoryManager;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;
import semanticAnalyzer.types.Array;

public class ArrayListCodeGenerator implements SimpleCodeGenerator {

	public ArrayListCodeGenerator() {
		super();
	}
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		//code.add(PushI, node.getType().isReference() ? 2 : 0); //set bit 1 if reference type
		
		
		
		
		Labeller labeller = new Labeller("alloc-array");
		String startLabel = labeller.newLabel("start");
		
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		code.add(Label, startLabel);
		code.add(PushI, node.nChildren());					// [.. arrayLength ]
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
		
		loadIFrom(code, RunTime.REF_SPACE2); 	// [.. arrayAddr ]
		
		
		for(int i = 0; i < node.nChildren(); i++) {
			code.add(Duplicate); 					// [.. arrayAddr arrayAddr]
			code.add(PushI, nodeType.getSubtype().getSize() * i + 16); // [.. arrayAddr arrayAddr Offset ]
			code.add(Add);							// [.. arrayAddr indexAddr ]
			code.append(args.get(i));				// [.. arrayAddr indexAddr value ]
			code.append(opcodeForStore(((Array)node.getType()).getSubtype()));
													// [.. arrayAddr]   array[i] <- value
		}
		
		return code;
	}
}