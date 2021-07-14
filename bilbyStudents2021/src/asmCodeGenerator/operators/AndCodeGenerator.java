package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.codeStorage.ASMOpcode;
import parseTree.ParseNode;

public class AndCodeGenerator implements SimpleCodeGenerator {

	public AndCodeGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("compare");

		String startLabel = labeller.newLabel("start");
		String subLabel   = labeller.newLabel("sub");
		String arg1falseLabel  = labeller.newLabel("arg1false");
		String falseLabel  = labeller.newLabel("false");
		String joinLabel = labeller.newLabel("join");

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.add(ASMOpcode.Label, startLabel);
		for (ASMCodeFragment fragment : args) {
			code.append(fragment);
		}
		code.add(ASMOpcode.Label, subLabel);
		code.add(ASMOpcode.Exchange);
		code.add(ASMOpcode.JumpFalse, arg1falseLabel);
		code.add(ASMOpcode.JumpFalse, falseLabel);
		code.add(ASMOpcode.PushI, 1);
		code.add(ASMOpcode.Jump, joinLabel);
		
		code.add(ASMOpcode.Label, arg1falseLabel);
		code.add(ASMOpcode.Pop);
		code.add(ASMOpcode.Label, falseLabel);
		code.add(ASMOpcode.PushI,0);
		code.add(ASMOpcode.Label, joinLabel);
		
		return code;
	}

}
