package asmCodeGenerator.operators;

import static asmCodeGenerator.codeStorage.ASMOpcode.Duplicate;
import static asmCodeGenerator.codeStorage.ASMOpcode.Label;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.codeStorage.ASMOpcode;
import parseTree.ParseNode;


public class DivideCodeGenerator implements SimpleCodeGenerator {
	private ASMOpcode divideOpcode;
	private ASMOpcode jumpOpcode;
	private String runtimeError;

	public DivideCodeGenerator(ASMOpcode divideOpcode, ASMOpcode jumpOpcode, String runtimeError) {
		super();
		this.divideOpcode = divideOpcode;
		this.jumpOpcode = jumpOpcode;
		this.runtimeError = runtimeError;
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("compare");

		String startLabel = labeller.newLabel("start");

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.add(Label, startLabel);
		for (ASMCodeFragment fragment : args) {
			code.append(fragment);
		}

		code.add(Duplicate);
		code.add(jumpOpcode, runtimeError);
		code.add(divideOpcode);

		return code;
	}

}
