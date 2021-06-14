package asmCodeGenerator.operators;

import static asmCodeGenerator.codeStorage.ASMOpcode.Duplicate;
import static asmCodeGenerator.codeStorage.ASMOpcode.Jump;
import static asmCodeGenerator.codeStorage.ASMOpcode.Label;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.codeStorage.ASMOpcode;
import parseTree.ParseNode;

public class NotEqualCodeGenerator implements SimpleCodeGenerator {
	private ASMOpcode equateOpcode;
	private ASMOpcode jumpOpcode;
	private ASMOpcode equateJumpOpcode;

	public NotEqualCodeGenerator(ASMOpcode equateOpcode, ASMOpcode equateJumpOpcode) {
		super();
		this.equateOpcode = equateOpcode;
		this.jumpOpcode = jumpOpcode;
		this.equateJumpOpcode = equateJumpOpcode;
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("compare");

		String startLabel = labeller.newLabel("start");
		String subLabel   = labeller.newLabel("sub");
		String trueLabel  = labeller.newLabel("true");
		String falseLabel = labeller.newLabel("false");
		String joinLabel  = labeller.newLabel("join");

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.add(Label, startLabel);
		for (ASMCodeFragment fragment : args) {
			code.append(fragment);
		}
		code.add(Label, subLabel);
		code.add(equateOpcode);
		
		code.add(equateJumpOpcode, falseLabel);
		
		code.add(Label, trueLabel);
		code.add(PushI, 1);
		code.add(Jump, joinLabel);
		code.add(Label, falseLabel);
		code.add(PushI, 0);
		code.add(Jump, joinLabel);
		code.add(Label, joinLabel);

		return code;
	}

}
