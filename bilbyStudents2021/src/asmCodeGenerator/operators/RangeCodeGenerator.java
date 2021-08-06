package asmCodeGenerator.operators;

import java.util.List;

import asmCodeGenerator.Labeller;
import static asmCodeGenerator.Macros.*;
import static asmCodeGenerator.CodeGeneratorAids.*;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import parseTree.ParseNode;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import asmCodeGenerator.runtime.RunTime;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Range;
import semanticAnalyzer.types.Type;

public class RangeCodeGenerator implements SimpleCodeGenerator {
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		ASMCodeFragment value1 = args.get(0);
		ASMCodeFragment value2 = args.get(1);
		ASMCodeFragment value1cpy = new ASMCodeFragment(value1);
		ASMCodeFragment value2cpy = new ASMCodeFragment(value2);
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		code.append(value2);
		code.append(value1);

		
		Type subtype = ((Range)node.getType()).getSubtype();
		if(subtype.equals(PrimitiveType.FLOAT)) {
			code.add(FSubtract);
			code.add(JumpFNeg, RunTime.RANGE_LOW_HIGH_MISMATCH_ERROR);
		} else {
			code.add(Subtract);
			code.add(JumpNeg, RunTime.RANGE_LOW_HIGH_MISMATCH_ERROR);
		}
		
		code.append(value1cpy);
		code.append(value2cpy);
		
		return code;
	}

}
