package asmCodeGenerator.operators;

import asmCodeGenerator.codeStorage.ASMOpcode;


import java.util.List;

import asmCodeGenerator.Labeller;
import static asmCodeGenerator.Macros.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.runtime.MemoryManager;
import parseTree.ParseNode;

public class ArrayAllocCodeGenerator implements SimpleCodeGenerator {

	private static final String Addr = "array-addr";
	
	public ArrayAllocCodeGenerator() {
		super();
	}
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		//code.add(PushI, node.getType().isReference() ? 2 : 0); //set bit 1 if reference type
		
		ASMCodeFragment length = args.get(1);
		
		Labeller labeller = new Labeller("alloc-array");
		String startLabel = labeller.newLabel("start");
		String endLabel = labeller.newLabel("end");
		
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		code.add(Label, startLabel);
		generateLength(node,code, length);			// [.. memlength ] 
		
		code.add(Duplicate);						//length sit under everything the whole time
		code.add(Call, MemoryManager.MEM_MANAGER_ALLOCATE); // [.. addr ]		{ .. }
//		declareI(code, Addr);	
//		storeITo(code, Addr);	// [.. ]  mem(addr) <- addr 
//		
//		code.add(PushI, 7);										// [.. 7 ]		{ .. }
//		storeITo(code, Addr);									// [.. ] 		{ 7, ..}
//		code.add(PushI, node.getType().isReference() ? 2 : 0); 
//		storeIOffset(code, Addr, 4);		
//		code.add(PushI, node.getType().getSize()); 
//		storeIOffset(code, Addr, 8);
//		code.append(generateLength(node, args));
//		storeIOffset(code, Addr, 12); 							// [.. ] 		{ 7, status, size, length, ... }
		
		code.add(Duplicate);
		code.add(PushI, 7);
		code.add(StoreI);
		
		code.add(Duplicate);
		code.add(PushI, 4);
		code.add(Add);
		code.add(PushI, node.getType().isReference() ? 2 : 0);
		code.add(StoreI);
		
		code.add(Duplicate);
		code.add(PushI, 8);
		code.add(Add);
		code.add(PushI, node.getType().getSize());
		code.add(StoreI);
		
		code.add(PushI, 12);
		code.add(Add);
		code.add(PushI, 4);
		code.add(StoreI);
		
		code.add(PStack);
		return code;
	}

	private void generateLength(ParseNode node, ASMCodeFragment frag, ASMCodeFragment length) {
		frag.add(PushI, node.getType().getSize()); 
		frag.append(length); 	// [.. typesize length ]
		frag.add(Multiply);
		frag.add(PushI, 16);
		frag.add(Add);				// [.. memlength ] 
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