package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import parseTree.ParseNode;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Range;

public class InCodeGenerator implements SimpleCodeGenerator {

	public InCodeGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("in-generator");

		String falseLabel = labeller.newLabel("false");
		String endLabel = labeller.newLabel("end");
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		ASMCodeFragment value = args.get(0);
		ASMCodeFragment valueCpy = new ASMCodeFragment(value);
		
		code.append(args.get(1));						//[.. low high ]
		
		code.append(value);								//[.. low high value ]
		code.add(Subtract);
		code.add(JumpNeg, falseLabel);		
		
		code.append(valueCpy);								//[.. low value ]
		code.add(Exchange);
		code.add(Subtract);
		code.add(JumpNeg, falseLabel);	
		
		code.add(PushI, 1);									//push true
		code.add(Jump, endLabel);
		
		code.add(Label, falseLabel);
		code.add(PushI, 0);
		
		code.add(Label, endLabel);
		return code;
	}

}
