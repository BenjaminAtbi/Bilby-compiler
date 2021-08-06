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


public class RangeAddLeftCodeGenerator implements SimpleCodeGenerator {
	
	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VALUE);
		
		ASMCodeFragment summand = args.get(0);
		ASMCodeFragment summandCpy = new ASMCodeFragment(summand);
		
		code.append(args.get(1));			// [.. oldvalue1 oldvalue2 ]
		code.append(summand);
		addOpcode(code, node);				// [.. oldvalue1 newvalue2 ]
		
		code.add(Exchange);
		
		code.append(summandCpy);
		addOpcode(code, node);				// [.. newvalue2 newvalue1 ]
		code.add(Exchange);					// [.. newvalue1 newvalue2 ]
		
		return code;
	}

	private void addOpcode(ASMCodeFragment code, ParseNode node) {
		if(((Range)node.getType()).getSubtype().equals(PrimitiveType.FLOAT)) {
			code.add(FAdd);
		} else {
			code.add(Add);
		}
	}
}
