package asmCodeGenerator.operators;

import static asmCodeGenerator.Macros.*;
import static asmCodeGenerator.CodeGeneratorAids.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;
import java.util.List;

import symbolTable.FunctionBinding;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType;
import asmCodeGenerator.runtime.RunTime;
import parseTree.ParseNode;
import parseTree.nodeTypes.FunctionNode;
import semanticAnalyzer.types.VoidType;

public class FunctionCodeGenerator implements SimpleCodeGenerator {
	
	public FunctionCodeGenerator() {
		super();
	}

	@Override
	public ASMCodeFragment generate(ParseNode node, List<ASMCodeFragment> args) {
		
		ASMCodeFragment code = new ASMCodeFragment(CodeType.GENERATES_VOID);
	
		//start of function label
		code.add(Label, RunTime.FUNCTION_PREFIX + ((FunctionNode)node).getBinding().getLexeme());
		
//		printStackPointer(code);
		
		//store frame pointer
		loadIFrom(code,RunTime.STACK_POINTER);
		code.add(PushI, -4);
		code.add(Add);
		loadIFrom(code, RunTime.FRAME_POINTER);
		code.add(StoreI);
		
		//store return address from call
		loadIFrom(code,RunTime.STACK_POINTER);
		code.add(PushI, -8);
		code.add(Add);
		code.add(Exchange);
		code.add(StoreI);
		
		//set frame pointer to stack pointer
		loadIFrom(code, RunTime.STACK_POINTER);
		storeITo(code, RunTime.FRAME_POINTER);
		
		
		//shift stack pointer by size of procedure scope + 8 return bytes
		int frameSize = ((FunctionBinding) ((FunctionNode)node).getBinding()).getFrameSize() + 8;
		code.add(PushI, frameSize);
		subtractIFrom(code, RunTime.STACK_POINTER);
		
//		//run block code
		ASMCodeFragment blockCode = args.get(0);
//		
		code.append(blockCode);
//		
//		
		//end of function label
		code.add(Label, RunTime.FUNCTION_END_PREFIX + ((FunctionNode)node).getBinding().getLexeme());
		
		
		//load return address from FP-8
		loadIFrom(code, RunTime.FRAME_POINTER);
		code.add(PushI, -8);
		code.add(Add);		
		code.add(LoadI);
		
		//restore frame pointer from FP-4
		loadIFrom(code, RunTime.FRAME_POINTER);
		code.add(PushI, -4);
		code.add(Add);		
		code.add(LoadI);
		storeITo(code, RunTime.FRAME_POINTER);
		
		//slide stack pointer back past frame and args
		int stackRecoverSize = frameSize + ((FunctionNode)node).getScope().getAllocatedSize();
		code.add(PushI, stackRecoverSize);
		addITo(code, RunTime.STACK_POINTER);
		
		//return value shit
		if(!(node.getType() instanceof VoidType)) {
			
			code.add(Exchange); //put return value on top
			
			//decrease stack pointer by return type size
			
			
			code.add(PushI, node.getType().getSize());
			subtractIFrom(code, RunTime.STACK_POINTER);
			
			
			loadIFrom(code, RunTime.STACK_POINTER);
			
			code.add(Exchange);
			code.append(opcodeForStore(node.getType()));
		}
		
		
		//return from func
		code.add(Return);
		
		return code;
	}
	
	

}
