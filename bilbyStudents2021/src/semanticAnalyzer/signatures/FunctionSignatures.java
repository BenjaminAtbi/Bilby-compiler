package semanticAnalyzer.signatures;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.operators.AndCodeGenerator;
import asmCodeGenerator.operators.ArrayIndexCodeGenerator;
import asmCodeGenerator.operators.ArrayAllocCodeGenerator;
import asmCodeGenerator.operators.CompareCodeGenerator;
import asmCodeGenerator.operators.DivideCodeGenerator;
import asmCodeGenerator.operators.NotEqualCodeGenerator;
import asmCodeGenerator.operators.OrCodeGenerator;
import asmCodeGenerator.operators.IntToBoolCodeGenerator;
import asmCodeGenerator.operators.IntToCharCodeGenerator;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.Type;
import semanticAnalyzer.types.TypeVariable;

import static semanticAnalyzer.types.PrimitiveType.*;
import static asmCodeGenerator.runtime.RunTime.INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR;
import static asmCodeGenerator.runtime.RunTime.FLOAT_DIVIDE_BY_ZERO_RUNTIME_ERROR;

public class FunctionSignatures extends ArrayList<FunctionSignature> {
	private static final long serialVersionUID = -4907792488209670697L;
	private static Map<Object, FunctionSignatures> signaturesForKey = new HashMap<Object, FunctionSignatures>();
	
	Object key;
	
	public FunctionSignatures(Object key, FunctionSignature ...functionSignatures) {
		this.key = key;
		for(FunctionSignature functionSignature: functionSignatures) {
			add(functionSignature);
		}
		signaturesForKey.put(key, this);
	}
	
	public Object getKey() {
		return key;
	}
	public boolean hasKey(Object key) {
		return this.key.equals(key);
	}
	
	public FunctionSignature acceptingSignature(List<Type> types) {
		for(FunctionSignature functionSignature: this) {
			if(functionSignature.accepts(types)) {
				return functionSignature;
			}
		}
		return FunctionSignature.nullInstance();
	}
	public boolean accepts(List<Type> types) {
		return !acceptingSignature(types).isNull();
	}

	
	/////////////////////////////////////////////////////////////////////////////////
	// access to FunctionSignatures by key object.
	
	public static FunctionSignatures nullSignatures = new FunctionSignatures(0, FunctionSignature.nullInstance());

	public static FunctionSignatures signaturesOf(Object key) {
		if(signaturesForKey.containsKey(key)) {
			return signaturesForKey.get(key);
		}
		return nullSignatures;
	}
	public static FunctionSignature signature(Object key, List<Type> types) {
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(key);
		return signatures.acceptingSignature(types);
	}

	
	
	/////////////////////////////////////////////////////////////////////////////////
	// Put the signatures for operators in the following static block.
	
	static {
		// here's one example to get you started with FunctionSignatures: the signatures for addition.		
		// for this to work, you should statically import PrimitiveType.*

		new FunctionSignatures(Punctuator.ADD,
			new FunctionSignature(ASMOpcode.Nop, INTEGER, INTEGER),
			new FunctionSignature(ASMOpcode.Nop, FLOAT, FLOAT),
			new FunctionSignature(ASMOpcode.Add, INTEGER, INTEGER, INTEGER),
		    new FunctionSignature(ASMOpcode.FAdd, FLOAT, FLOAT, FLOAT)
		);
		
		new FunctionSignatures(Punctuator.SUBTRACT,
			new FunctionSignature(ASMOpcode.Negate, INTEGER, INTEGER),	
			new FunctionSignature(ASMOpcode.FNegate, FLOAT, FLOAT),	
		    new FunctionSignature(ASMOpcode.Subtract, INTEGER, INTEGER, INTEGER),
		    new FunctionSignature(ASMOpcode.FSubtract, FLOAT, FLOAT, FLOAT)
		);
		
		new FunctionSignatures(Punctuator.MULTIPLY,
			new FunctionSignature(ASMOpcode.Nop, INTEGER, INTEGER),
			new FunctionSignature(ASMOpcode.Nop, FLOAT, FLOAT),
			new FunctionSignature(ASMOpcode.Multiply, INTEGER, INTEGER, INTEGER),
		    new FunctionSignature(ASMOpcode.FMultiply, FLOAT, FLOAT, FLOAT)
		); 
		
		new FunctionSignatures(Punctuator.DIVIDE,
			new FunctionSignature(ASMOpcode.Nop, INTEGER, INTEGER),
			new FunctionSignature(ASMOpcode.Nop, FLOAT, FLOAT),
			new FunctionSignature(new DivideCodeGenerator(ASMOpcode.Divide, ASMOpcode.JumpFalse, INTEGER_DIVIDE_BY_ZERO_RUNTIME_ERROR), INTEGER, INTEGER, INTEGER),
		    new FunctionSignature(new DivideCodeGenerator(ASMOpcode.FDivide, ASMOpcode.JumpFZero, FLOAT_DIVIDE_BY_ZERO_RUNTIME_ERROR), FLOAT, FLOAT, FLOAT)
		); 
		
		new FunctionSignatures(Punctuator.GREATER,
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpPos), INTEGER, INTEGER, BOOLEAN),
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.FSubtract, ASMOpcode.JumpFPos), FLOAT, FLOAT, BOOLEAN),
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpPos), CHAR, CHAR, BOOLEAN)
		);
		
		new FunctionSignatures(Punctuator.LESS,
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpNeg), INTEGER, INTEGER, BOOLEAN),
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.FSubtract, ASMOpcode.JumpFNeg), FLOAT, FLOAT, BOOLEAN),
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpNeg), CHAR, CHAR, BOOLEAN)
		);
		
		new FunctionSignatures(Punctuator.GREATER_EQUAL,
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpPos, ASMOpcode.JumpFalse), INTEGER, INTEGER, BOOLEAN),
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.FSubtract, ASMOpcode.JumpFPos, ASMOpcode.JumpFZero), FLOAT, FLOAT, BOOLEAN),
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpPos, ASMOpcode.JumpFalse), CHAR, CHAR, BOOLEAN)
		);
			
		new FunctionSignatures(Punctuator.LESS_EQUAL,
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpNeg, ASMOpcode.JumpFalse), INTEGER, INTEGER, BOOLEAN),
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.FSubtract, ASMOpcode.JumpFNeg, ASMOpcode.JumpFZero), FLOAT, FLOAT, BOOLEAN),
			new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpNeg, ASMOpcode.JumpFalse), CHAR, CHAR, BOOLEAN)
		);
		
		new FunctionSignatures(Punctuator.EQUAL,
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.Pop, ASMOpcode.JumpFalse), INTEGER, INTEGER, BOOLEAN),
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.FSubtract, ASMOpcode.Pop, ASMOpcode.JumpFZero), FLOAT, FLOAT, BOOLEAN),
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.Pop, ASMOpcode.JumpFalse), CHAR, CHAR, BOOLEAN),
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.Pop, ASMOpcode.JumpFalse), BOOLEAN, BOOLEAN, BOOLEAN),
				new FunctionSignature(new CompareCodeGenerator(ASMOpcode.Subtract, ASMOpcode.Pop, ASMOpcode.JumpFalse), STRING, STRING, BOOLEAN)
		);
		
		new FunctionSignatures(Punctuator.NOT_EQUAL,
				new FunctionSignature(new NotEqualCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpFalse), INTEGER, INTEGER, BOOLEAN),
				new FunctionSignature(new NotEqualCodeGenerator(ASMOpcode.FSubtract, ASMOpcode.JumpFZero), FLOAT, FLOAT, BOOLEAN),
				new FunctionSignature(new NotEqualCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpFalse), CHAR, CHAR, BOOLEAN),
				new FunctionSignature(new NotEqualCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpFalse), BOOLEAN, BOOLEAN, BOOLEAN),
				new FunctionSignature(new NotEqualCodeGenerator(ASMOpcode.Subtract, ASMOpcode.JumpFalse), STRING, STRING, BOOLEAN)
		);
		
		new FunctionSignatures(Punctuator.AND,
				new FunctionSignature(new AndCodeGenerator(), BOOLEAN, BOOLEAN, BOOLEAN)
		);
		
		new FunctionSignatures(Punctuator.OR,
				new FunctionSignature(new OrCodeGenerator(), BOOLEAN, BOOLEAN, BOOLEAN)
		);
		
		TypeVariable S = new TypeVariable("S");
		// Casting signatures
		new FunctionSignatures(Keyword.AS,
				new FunctionSignature(ASMOpcode.Nop, BOOLEAN, BOOLEAN, BOOLEAN),
				new FunctionSignature(ASMOpcode.Nop, CHAR, CHAR, CHAR),
				new FunctionSignature(ASMOpcode.Nop, CHAR, INTEGER, INTEGER),
				new FunctionSignature(new IntToBoolCodeGenerator(), CHAR, BOOLEAN, BOOLEAN),
				new FunctionSignature(ASMOpcode.Nop, INTEGER, INTEGER, INTEGER),
				new FunctionSignature(new IntToCharCodeGenerator(), INTEGER, CHAR, CHAR),
				new FunctionSignature(ASMOpcode.ConvertF, INTEGER, FLOAT, FLOAT),
				new FunctionSignature(new IntToBoolCodeGenerator(), INTEGER, BOOLEAN, BOOLEAN),
				new FunctionSignature(ASMOpcode.Nop, FLOAT, FLOAT, FLOAT),
				new FunctionSignature(ASMOpcode.ConvertI, FLOAT, INTEGER, INTEGER),
				new FunctionSignature(ASMOpcode.Nop, STRING, STRING, STRING),
				new FunctionSignature(ASMOpcode.Nop, new Array(S), new Array(S), new Array(S))
		);
		
		
		
		new FunctionSignatures(Keyword.ALLOC,
				new FunctionSignature(new ArrayAllocCodeGenerator(), new Array(S), INTEGER, new Array(S))	
		);
		new FunctionSignatures(Punctuator.INDEXING,
				new FunctionSignature(new ArrayIndexCodeGenerator(), new Array(S), INTEGER, S)	
		);
		// First, we use the operator itself (in this case the Punctuator ADD) as the key.
		// Then, we give that key two signatures: one an (INT x INT -> INT) and the other
		// a (FLOAT x FLOAT -> FLOAT).  Each signature has a "whichVariant" parameter where
		// I'm placing the instruction (ASMOpcode) that needs to be executed.
		//
		// I'll follow the convention that if a signature has an ASMOpcode for its whichVariant,
		// then to generate code for the operation, one only needs to generate the code for
		// the operands (in order) and then add to that the Opcode.  For instance, the code for
		// floating addition should look like:
		//
		//		(generate argument 1)	: may be many instructions
		//		(generate argument 2)   : ditto
		//		FAdd					: just one instruction
		//
		// If the code that an operator should generate is more complicated than this, then
		// I will not use an ASMOpcode for the whichVariant.  In these cases I typically use
		// a small object with one method (the "Command" design pattern) that generates the
		// required code.

	}

}
