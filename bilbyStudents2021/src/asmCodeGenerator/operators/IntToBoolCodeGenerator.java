package asmCodeGenerator.operators;

import static asmCodeGenerator.codeStorage.ASMOpcode.Jump;
import static asmCodeGenerator.codeStorage.ASMOpcode.JumpFalse;
import static asmCodeGenerator.codeStorage.ASMOpcode.Label;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;


public class IntToBoolCodeGenerator implements SimpleCodeGenerator {


	public IntToBoolCodeGenerator() {
		super();

	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("convert");
		
		String startLabel = labeller.newLabel("start");
		String falseLabel = labeller.newLabel("false");
		String joinLabel  = labeller.newLabel("join");
		

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.add(Label, startLabel);
		for (ASMCodeFragment fragment : args) {
			code.append(fragment);
		}

		code.add(JumpFalse, falseLabel);
		code.add(PushI, 1);
		code.add(Jump, joinLabel);
		code.add(Label, falseLabel);
		code.add(PushI, 0);
		code.add(Label, joinLabel);
		return code;
	}

}
