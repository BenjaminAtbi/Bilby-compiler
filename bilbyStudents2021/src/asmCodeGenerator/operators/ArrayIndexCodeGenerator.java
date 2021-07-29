package asmCodeGenerator.operators;

import asmCodeGenerator.codeStorage.ASMOpcode;


import java.util.List;

import asmCodeGenerator.Labeller;
import static asmCodeGenerator.Macros.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import static asmCodeGenerator.CodeGeneratorAids.*;
import asmCodeGenerator.runtime.RunTime;

import static asmCodeGenerator.runtime.RunTime.*;
import parseTree.ParseNode;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;

public class ArrayIndexCodeGenerator implements SimpleCodeGenerator {
	
	public ArrayIndexCodeGenerator() {
		super();
	}
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		Labeller labeller = new Labeller("access-array");
		String startLabel = labeller.newLabel("start");
		String noErrorLabel = labeller.newLabel("noError");
		String endLabel = labeller.newLabel("end");
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_ADDRESS);
		
		code.add(Label, startLabel);
		
		code.append(args.get(0));		//[.. addr ]
		
		code.add(Duplicate);
		storeITo(code, RunTime.REF_SPACE1); //[.. addr ] 	Ref1 <- addr
		
		getRecordField(code, 3);		//[.. length ]	
		
		code.append(args.get(1));		//[.. length index ]
		code.add(Duplicate);
		storeITo(code, RunTime.REF_SPACE2); //[.. length index ]  	Ref2 <- index
		
		code.add(Subtract);
		
		code.add(JumpPos, noErrorLabel);
		code.add(Jump, ARRAY_OUT_OF_BOUNDS_ERROR); //index > length
		code.add(Label, noErrorLabel);
		
		
		loadIFrom(code, RunTime.REF_SPACE2);
		code.add(JumpNeg, ARRAY_OUT_OF_BOUNDS_ERROR); //index < 0
		
		loadIFrom(code, RunTime.REF_SPACE1);		//[.. addr ]
		code.add(Duplicate);
		getRecordField(code, 0);
		code.add(PushI, 7);
		code.add(Subtract);
		code.add(JumpTrue, ARRAY_NOT_INITIALIZED_ERROR);
		
		code.add(Duplicate); 						//[.. addr addr 
		getRecordField(code, 2);					//[.. addr subtypeSize ]	
		loadIFrom(code, RunTime.REF_SPACE2);		//[.. addr subtypeSize index ]
		code.add(Multiply);
		code.add(PushI, 16);
		code.add(Add);
		code.add(Add); 								//[.. indexAddr ]
		//code.add(opcodeForLoad(node.getType()));	//[.. indexValue ]
		
		code.add(Label, endLabel);
		return code;
	}
	
}
