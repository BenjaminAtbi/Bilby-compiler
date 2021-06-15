package asmCodeGenerator.operators;

import static asmCodeGenerator.codeStorage.ASMOpcode.BTAnd;
import static asmCodeGenerator.codeStorage.ASMOpcode.PushI;
import static asmCodeGenerator.codeStorage.ASMOpcode.Label;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;


public class IntToCharCodeGenerator implements SimpleCodeGenerator {


	public IntToCharCodeGenerator() {
		super();

	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		Labeller labeller = new Labeller("convert");
		
		String startLabel = labeller.newLabel("start");

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.add(Label, startLabel);
		for (ASMCodeFragment fragment : args) {
			code.append(fragment);
		}

		code.add(PushI, 127);
		code.add(BTAnd);
		return code;
	}

}
