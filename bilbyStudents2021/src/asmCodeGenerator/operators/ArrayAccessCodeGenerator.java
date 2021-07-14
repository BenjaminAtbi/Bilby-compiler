package asmCodeGenerator.operators;

import asmCodeGenerator.codeStorage.ASMOpcode;


import java.util.List;

import asmCodeGenerator.Labeller;
import static asmCodeGenerator.Macros.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.runtime.MemoryManager;
import static asmCodeGenerator.runtime.RunTime.*;
import parseTree.ParseNode;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

public class ArrayAccessCodeGenerator implements SimpleCodeGenerator {
	
	public ArrayAccessCodeGenerator() {
		super();
	}
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		//code.add(PushI, node.getType().isReference() ? 2 : 0); //set bit 1 if reference type
		
		
		Labeller labeller = new Labeller("access-array");
		String startLabel = labeller.newLabel("start");
		String endLabel = labeller.newLabel("end");
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		code.add(Label, startLabel);
		code.append(args.get(0));		//[.. addr ]
		getRecordField(code, 3);		//[.. length ]		
		code.append(args.get(1));		//[.. length index ]
		code.add(Subtract);
		code.add(JumpNeg, ARRAY_OUT_OF_BOUNDS_ERROR); 
		code.append(args.get(1));
		code.add(JumpNeg, ARRAY_OUT_OF_BOUNDS_ERROR); // [.. ]
		
		code.append(args.get(0));		//[.. addr ]
		getRecordField(code, 2);		//[.. subtypeSize ]	
		code.append(args.get(1));		//[.. subtypeSize index ]
		code.add(Multiply);
		code.add(PushI, 16);
		code.add(Add); 					//[.. indexAddr ]
		code.add(opcodeForLoad(node.getType()));	//[.. indexValue ]

		
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
//		
//		code.add(Label, endLabel);
		return code;
	}
	
	private void getRecordField(ASMCodeFragment code, int fieldIndex) { // [.. addr ] => [.. value ]
		code.add(PushI, 4 * fieldIndex);
		code.add(Add);
		code.add(LoadI);				//[.. addr length ]
	}
	
	private ASMOpcode opcodeForLoad(Type type) {
		if(type == PrimitiveType.CHAR) {
			return LoadC;
		}
		if(type == PrimitiveType.INTEGER) {
			return LoadI;
		}
		if(type == PrimitiveType.FLOAT) {
			return LoadF;
		}
		if(type == PrimitiveType.STRING) {
			return LoadI;
		}
		if(type == PrimitiveType.BOOLEAN) {
			return LoadC;
		}
		if(type instanceof Array) {
			return LoadI;
		}
		assert false: "Type " + type + " unimplemented in opcodeForLoad()";
		return null;
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