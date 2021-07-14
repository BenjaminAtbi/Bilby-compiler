package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.codeStorage.ASMOpcode;
import parseTree.ParseNode;

public class OrCodeGenerator implements SimpleCodeGenerator {

	public OrCodeGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("compare");

		String startLabel = labeller.newLabel("start");
		String subLabel   = labeller.newLabel("sub");
		String arg1trueLabel  = labeller.newLabel("arg1true");
		String trueLabel  = labeller.newLabel("true");
		String joinLabel = labeller.newLabel("join");

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.add(ASMOpcode.Label, startLabel);
		for (ASMCodeFragment fragment : args) {
			code.append(fragment);
		}
		code.add(ASMOpcode.Label, subLabel);
		code.add(ASMOpcode.Exchange);
		code.add(ASMOpcode.JumpTrue, arg1trueLabel);
		code.add(ASMOpcode.JumpTrue, trueLabel);
		code.add(ASMOpcode.PushI, 0);
		code.add(ASMOpcode.Jump, joinLabel);
		
		code.add(ASMOpcode.Label, arg1trueLabel);
		code.add(ASMOpcode.Pop);
		code.add(ASMOpcode.Label, trueLabel);
		code.add(ASMOpcode.PushI,1);
		code.add(ASMOpcode.Label, joinLabel);
		
		return code;
	}

}
