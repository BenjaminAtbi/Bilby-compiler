package asmCodeGenerator.statements;

import java.util.List;

import asmCodeGenerator.Labeller;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.operators.SimpleCodeGenerator;
import parseTree.ParseNode;
import asmCodeGenerator.codeStorage.ASMOpcode;

public class IfStatementGenerator implements SimpleCodeGenerator {
	
	public IfStatementGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		Labeller labeller = new Labeller("if-statement");
		String startLabel = labeller.newLabel("start");
		String blockLabel = labeller.newLabel("block");
		String endLabel = labeller.newLabel("end");
		String elseEndLabel = labeller.newLabel("else-end");
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VOID);
		
		code.add(ASMOpcode.Label, startLabel);
		code.append(args.get(0));
		code.add(ASMOpcode.JumpFalse, endLabel);
		code.add(ASMOpcode.Label, blockLabel);
		code.append(args.get(1));
		if(args.size() == 3) {
			code.add(ASMOpcode.Jump, elseEndLabel);
		}
		code.add(ASMOpcode.Label, endLabel);
		if(args.size() == 3) {
			code.append(args.get(2));
			code.add(ASMOpcode.Label, elseEndLabel);
		}
		
		return code;
	}
	
	
}
