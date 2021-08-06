package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import parseTree.ParseNode;

public class HighCodeGenerator implements SimpleCodeGenerator {

	public HighCodeGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {

		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);

		code.append(args.get(0));
		code.add(Exchange);
		code.add(Pop);
		
		return code;
	}

}
