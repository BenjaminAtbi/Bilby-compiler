package asmCodeGenerator;

import static asmCodeGenerator.codeStorage.ASMOpcode.*;

import parseTree.ParseNode;
import parseTree.nodeTypes.NewlineNode;
import parseTree.nodeTypes.PrintStatementNode;
import parseTree.nodeTypes.SpaceNode;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Range;
import semanticAnalyzer.types.Type;
import asmCodeGenerator.ASMCodeGenerator.CodeVisitor;
import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.runtime.RunTime;
import asmCodeGenerator.PrintSubroutines;

public class PrintStatementGenerator {
	ASMCodeFragment code;
	ASMCodeGenerator.CodeVisitor visitor;
	
	
	public PrintStatementGenerator(ASMCodeFragment code, CodeVisitor visitor) {
		super();
		this.code = code;
		this.visitor = visitor;
	}

	public void generate(PrintStatementNode node) {
		for(ParseNode child : node.getChildren()) {
			if(child instanceof NewlineNode || child instanceof SpaceNode) {
				ASMCodeFragment childCode = visitor.removeVoidCode(child);
				code.append(childCode);
			} else if(child.getType() instanceof Array){
				appendArrayCode(child);
			} else if(child.getType() instanceof Range) {
				appendRangeCode(child);
			}
			else {
				appendPrintCode(child);
			}
		}
	}

	private void appendArrayCode(ParseNode child) {
		assert(child.getType() instanceof Array);
		
		code.append(visitor.removeValueCode(child)); 					//[.. addr ]
		code.add(PushI, PrintSubroutines.getTypeID(child.getType()));	//[.. addr typeID]
		Array type = (Array)child.getType();
		code.add(PushI, type.getDepth()); 								//[.. addr typeID depth ]
		
		code.add(Call, PrintSubroutines.PRINT_ARRAY);
	}
	
	private void appendRangeCode(ParseNode child) {
		assert(child.getType() instanceof Range);
		Type childType = ((Range)child.getType()).getSubtype();
		String format = printFormat(childType);
		
		code.add(PushD, RunTime.LESS_PRINT_FORMAT);
		code.add(Printf);
		
		code.append(visitor.removeValueCode(child));					//[.. value1 value2 ]
		code.add(Exchange);												//[.. value2 value1 ]
		
		code.add(PushD, format);
		code.add(Printf);						
		
		code.add(PushD, RunTime.RANGE_PRINT_FORMAT);
		code.add(Printf);
		
		code.add(PushD, format);
		code.add(Printf);
		
		code.add(PushD, RunTime.GREATER_PRINT_FORMAT);
		code.add(Printf);
	}

	private void appendPrintCode(ParseNode node) {
		String format = printFormat(node.getType());
		code.append(visitor.removeValueCode(node));
		convertToStringIfBoolean(node);
		convertToCStringIfString(node);
		code.add(PushD, format);
		code.add(Printf);
	}
	private void convertToCStringIfString(ParseNode node) {
		if(node.getType() != PrimitiveType.STRING) {
			return;
		}
		code.add(PushI, 12);
		code.add(Add);	//push pointer past 12 control bytes
	}

	private void convertToStringIfBoolean(ParseNode node) {
		if(node.getType() != PrimitiveType.BOOLEAN) {
			return;
		}
		
		Labeller labeller = new Labeller("print-boolean");
		String trueLabel = labeller.newLabel("true");
		String endLabel = labeller.newLabel("join");

		code.add(JumpTrue, trueLabel);
		code.add(PushD, RunTime.BOOLEAN_FALSE_STRING);
		code.add(Jump, endLabel);
		code.add(Label, trueLabel);
		code.add(PushD, RunTime.BOOLEAN_TRUE_STRING);
		code.add(Label, endLabel);
	}


	private static String printFormat(Type type) {
		assert type instanceof PrimitiveType;
		
		switch((PrimitiveType)type) {
		case CHAR: 		return RunTime.CHAR_PRINT_FORMAT;
		case INTEGER:	return RunTime.INTEGER_PRINT_FORMAT;
		case FLOAT: 	return RunTime.FLOATING_PRINT_FORMAT;
		case STRING: 	return RunTime.STRING_PRINT_FORMAT;
		case BOOLEAN:	return RunTime.BOOLEAN_PRINT_FORMAT;
		default:		
			assert false : "Type " + type + " unimplemented in PrintStatementGenerator.printFormat()";
			return "";
		}
	}
}
