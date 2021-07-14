package asmCodeGenerator.statements;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.operators.SimpleCodeGenerator;
import parseTree.ParseNode;
import asmCodeGenerator.codeStorage.ASMOpcode;

public class WhileStatementGenerator implements SimpleCodeGenerator {
	
	public WhileStatementGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		Labeller labeller = new Labeller("while-statement");
		String startLabel = labeller.newLabel("start");
		String blockLabel = labeller.newLabel("block");
		String endLabel = labeller.newLabel("end");
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VOID);
		
		code.add(ASMOpcode.Label, startLabel);
		code.append(args.get(0));
		code.add(ASMOpcode.JumpFalse, endLabel);
		code.add(ASMOpcode.Label, blockLabel);
		code.append(args.get(1));
		code.add(ASMOpcode.Jump, startLabel);
		code.add(ASMOpcode.Label, endLabel);
	
		return code;
	}
}
