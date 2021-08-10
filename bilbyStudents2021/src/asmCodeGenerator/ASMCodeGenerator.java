package asmCodeGenerator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import asmCodeGenerator.codeStorage.ASMCodeFragment;
import asmCodeGenerator.codeStorage.ASMOpcode;
import asmCodeGenerator.operators.ArrayIndexCodeGenerator;
import asmCodeGenerator.operators.ArrayListCodeGenerator;
import asmCodeGenerator.operators.FunctionCodeGenerator;
import asmCodeGenerator.operators.SimpleCodeGenerator;
import asmCodeGenerator.runtime.MemoryManager;
import asmCodeGenerator.runtime.RunTime;
import asmCodeGenerator.statements.IfStatementGenerator;
import asmCodeGenerator.statements.WhileStatementGenerator;
import lexicalAnalyzer.Punctuator;
import parseTree.*;
import parseTree.nodeTypes.BooleanConstantNode;
import parseTree.nodeTypes.CharConstantNode;
import parseTree.nodeTypes.ArrayExpressionListNode;
import parseTree.nodeTypes.AssignmentNode;
import parseTree.nodeTypes.BlockNode;
import parseTree.nodeTypes.DeclarationNode;
import parseTree.nodeTypes.FloatConstantNode;
import parseTree.nodeTypes.FunctionNode;
import parseTree.nodeTypes.IdentifierNode;
import parseTree.nodeTypes.IfStatementNode;
import parseTree.nodeTypes.IntegerConstantNode;
import parseTree.nodeTypes.NewlineNode;
import parseTree.nodeTypes.OperatorNode;
import parseTree.nodeTypes.ParameterListNode;
import parseTree.nodeTypes.PrintStatementNode;
import parseTree.nodeTypes.ProgramNode;
import parseTree.nodeTypes.ReturnNode;
import parseTree.nodeTypes.SpaceNode;
import parseTree.nodeTypes.StringConstantNode;
import parseTree.nodeTypes.TypeNode;
import parseTree.nodeTypes.CallNode;
import parseTree.nodeTypes.WhileStatementNode;
import parseTree.nodeTypes.InvocationNode;
import semanticAnalyzer.signatures.PromotedSignature;
import semanticAnalyzer.signatures.Promotion;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Range;
import semanticAnalyzer.types.Type;
import semanticAnalyzer.types.VoidType;
import symbolTable.Binding;
import symbolTable.Scope;

import static asmCodeGenerator.CodeGeneratorAids.*;
import static asmCodeGenerator.Macros.*;
import static asmCodeGenerator.codeStorage.ASMCodeFragment.CodeType.*;
import static asmCodeGenerator.codeStorage.ASMOpcode.*;

// do not call the code generator if any errors have occurred during analysis.
public class ASMCodeGenerator {
	ParseNode root;

	public static ASMCodeFragment generate(ParseNode syntaxTree) {
		ASMCodeGenerator codeGenerator = new ASMCodeGenerator(syntaxTree);
		return codeGenerator.makeASM();
	}
	public ASMCodeGenerator(ParseNode root) {
		super();
		this.root = root;
	}
	
	public ASMCodeFragment makeASM() {
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);
		
		code.append( MemoryManager.codeForInitialization() );
		code.append( RunTime.getEnvironment() );
		code.append( globalVariableBlockASM() );
		code.append( programASM() );
		code.append( PrintSubroutines.codeForGeneration() );
		code.append( MemoryManager.codeForAfterApplication() );
		
		return code;
	}
	private ASMCodeFragment globalVariableBlockASM() {
		assert root.hasScope();
		Scope scope = root.getScope();
		int globalBlockSize = scope.getAllocatedSize();
		
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);
		code.add(DLabel, RunTime.GLOBAL_MEMORY_BLOCK);
		code.add(DataZ, globalBlockSize);
		code.append(setFrameStackPointers());
		return code;
	}

	private ASMCodeFragment programASM() {
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);
		
		code.add(    Label, RunTime.MAIN_PROGRAM_LABEL);
		code.add(Memtop);
		storeITo(code, RunTime.FRAME_POINTER);
		code.add(Memtop);
		storeITo(code, RunTime.STACK_POINTER);
		code.append( programCode());
		code.add(    Halt );
		
		return code;
	}
	
	private ASMCodeFragment programCode() {
		CodeVisitor visitor = new CodeVisitor();
		root.accept(visitor);
		return visitor.removeRootCode(root);
	}
	
	private ASMCodeFragment setFrameStackPointers() {
		ASMCodeFragment code = new ASMCodeFragment(GENERATES_VOID);
		return code;
	}

	protected class CodeVisitor extends ParseNodeVisitor.Default {
		private Map<ParseNode, ASMCodeFragment> codeMap;
		ASMCodeFragment code;
		
		public CodeVisitor() {
			codeMap = new HashMap<ParseNode, ASMCodeFragment>();
		}

		////////////////////////////////////////////////////////////////////
        // Make the field "code" refer to a new fragment of different sorts.
		private void newAddressCode(ParseNode node) {
			code = new ASMCodeFragment(GENERATES_ADDRESS);
			codeMap.put(node, code);
		}
		private void newValueCode(ParseNode node) {
			code = new ASMCodeFragment(GENERATES_VALUE);
			codeMap.put(node, code);
		}
		private void newVoidCode(ParseNode node) {
			code = new ASMCodeFragment(GENERATES_VOID);
			codeMap.put(node, code);
		}

	    ////////////////////////////////////////////////////////////////////
        // Get code from the map.
		private ASMCodeFragment getAndRemoveCode(ParseNode node) {
			ASMCodeFragment result = codeMap.get(node);
			codeMap.remove(node);
			return result;
		}
	    public  ASMCodeFragment removeRootCode(ParseNode tree) {
			return getAndRemoveCode(tree);
		}		
		ASMCodeFragment removeValueCode(ParseNode node) {
			ASMCodeFragment frag = getAndRemoveCode(node);
			makeFragmentValueCode(frag, node);
			return frag;
		}		
		private ASMCodeFragment removeAddressCode(ParseNode node) {
			ASMCodeFragment frag = getAndRemoveCode(node);
			assert frag.isAddress();
			return frag;
		}		
		ASMCodeFragment removeVoidCode(ParseNode node) {
			ASMCodeFragment frag = getAndRemoveCode(node);
			assert frag.isVoid();
			return frag;
		}
		
	    ////////////////////////////////////////////////////////////////////
        // convert code to value-generating code.
		private void makeFragmentValueCode(ASMCodeFragment code, ParseNode node) {
			assert !code.isVoid();
			if(code.isAddress()) {
				code.append(opcodeForLoad(node.getType()));
				code.markAsValue();
			}	
		}
		
		////////////////////////////////////////////////////////////////////
        // ensures all types of ParseNode in given AST have at least a visitLeave	
		public void visitLeave(ParseNode node) {
			assert false : "node " + node + " not handled in ASMCodeGenerator";
		}
		
		
		
		///////////////////////////////////////////////////////////////////////////
		// constructs larger than statements
		public void visitLeave(ProgramNode node) {
			newVoidCode(node);
			code.add(Jump,"AFTER-FUNCTIONS");
			for(ParseNode child : node.getChildren()) {
				ASMCodeFragment childCode = removeVoidCode(child);
				if(child instanceof BlockNode) code.add(Label, "AFTER-FUNCTIONS");
				code.append(childCode);
			}
		}
		public void visitLeave(BlockNode node) {
			newVoidCode(node);
			for(ParseNode child : node.getChildren()) {
				ASMCodeFragment childCode = removeVoidCode(child);
				code.append(childCode);
			}
		}
		public void visitLeave(FunctionNode node) {
			newVoidCode(node);
			SimpleCodeGenerator generator = new FunctionCodeGenerator();
			List<ASMCodeFragment> args = new ArrayList<>();
			args.add(removeVoidCode(node.child(3)));
			code.append(generator.generate(node, args));

			// body code?
			// if body has a variable, identifier automatically finds correct binding, grabs value relative to frame pointer
			// if body references parameter, identifier will look up scope tree until it finds most recent instance, either parameter or 
			// 			a local shadowing the parameter
		}
		///////////////////////////////////////////////////////////////////////////
		// statements and declarations

		public void visitLeave(IfStatementNode node) {
			newVoidCode(node);
			
			List<ASMCodeFragment> args = new ArrayList<>();
			args.add(removeValueCode(node.child(0)));
			args.add(removeVoidCode(node.child(1)));
			if(node.getChildren().size() == 3) {
				args.add(removeVoidCode(node.child(2)));
			}
			SimpleCodeGenerator generator = new IfStatementGenerator();
			code.append(generator.generate(node, args));
		}
		
		public void visitLeave(WhileStatementNode node) {
			newVoidCode(node);
			
			List<ASMCodeFragment> args = new ArrayList<>();
			args.add(removeValueCode(node.child(0)));
			args.add(removeVoidCode(node.child(1)));
			SimpleCodeGenerator generator = new WhileStatementGenerator();
			code.append(generator.generate(node, args));
		}
		
		public void visitLeave(PrintStatementNode node) {
			newVoidCode(node);
			new PrintStatementGenerator(code, this).generate(node);	
		}
		public void visit(NewlineNode node) {
			newVoidCode(node);
			code.add(PushD, RunTime.NEWLINE_PRINT_FORMAT);
			code.add(Printf);
		}
		public void visit(SpaceNode node) {
			newVoidCode(node);
			code.add(PushD, RunTime.SPACE_PRINT_FORMAT);
			code.add(Printf);
		}	

		public void visitLeave(DeclarationNode node) {
			newVoidCode(node);
			ASMCodeFragment lvalue = removeAddressCode(node.child(0));	
			ASMCodeFragment rvalue = removeValueCode(node.child(1));
			code.append(lvalue);
			code.append(rvalue);
			Type type = node.getType();
			code.append(opcodeForStore(type));
		}
		
		public void visitLeave(AssignmentNode node) {
			newVoidCode(node);
			ASMCodeFragment lvalue = removeAddressCode(node.child(0));	
			ASMCodeFragment rvalue = removeValueCode(node.child(1));
			code.append(lvalue);
			code.append(rvalue);
			
			
			Promotion rightPromotion = node.getPromotedSignature().getPromotions().get(1);
			code.append(rightPromotion.codeFor());
			Type type = node.getType();
			
			code.append(opcodeForStore(type));
			
		}

		////////////////////////////////////////////////////////////////////////////
		// invocation
		
		public void vistLeave(CallNode node) {
			newVoidCode(node);
			Type type = node.child(0).getType();
			ASMCodeFragment invocation = removeValueCode(node.child(0));
			code.append(invocation);
			if(!(type instanceof VoidType)) {
				code.add(Pop);
			}
			
		}
		
		public void visitLeave(InvocationNode node) {
			newValueCode(node);
			//push parameters to frame stack
			assert node.child(1) instanceof ParameterListNode : "CodeGenerator - Invocation Node: second child is not parameter list";
			ASMCodeFragment parameters = removeVoidCode(node.child(1));
			code.append(parameters);
			
			code.add(Call, RunTime.FUNCTION_PREFIX+node.getBinding().getLexeme());
			
			if(!(node.getType() instanceof VoidType)) {
				loadIFrom(code, RunTime.STACK_POINTER);
				code.append(opcodeForLoad(node.getType()));
				code.add(PushI, node.getType().getSize());
				addITo(code, RunTime.STACK_POINTER);
			}
		}

		public void visitLeave(ParameterListNode node) {
			newVoidCode(node);
			if(node.getToken().isLextant(Punctuator.ARGUMENT_LIST)) {
				for(ParseNode child: node.getChildren()) {
					ASMCodeFragment parameter = removeValueCode(child);
					ASMCodeFragment pushParameter = stackPushArg(parameter, child.getType());
					code.append(pushParameter);
				}
			}
		}
		
		public void visitLeave(ReturnNode node) {
			newVoidCode(node);
			if(node.nChildren() != 0) {
				ASMCodeFragment value = removeValueCode(node.child(0));
				code.append(value);
			}
			code.add(Jump, RunTime.FUNCTION_END_PREFIX+node.getFunctionIdentifier());
		}
		///////////////////////////////////////////////////////////////////////////
		// expressions
		public void visitLeave(OperatorNode node) {
			newValueCode(node);
			
			Object variant = node.getPromotedSignature().getVariant();
			List<ASMCodeFragment> args = getPromotedArgs(node);
			
			if (variant instanceof ASMOpcode) {
				
				for(ASMCodeFragment arg : args) {
					code.append(arg);
				}
				code.add((ASMOpcode)variant);
			} 
			else if (variant instanceof SimpleCodeGenerator){
				SimpleCodeGenerator generator = (SimpleCodeGenerator)variant;
				ASMCodeFragment generated = generator.generate(node, args);
				if(generated == null) {
					throw new RuntimeException("SimpleCodeGenerator produced null code fragment in ASMCodeGenerator.OperatorNode");
				}
				code.appendWithCodeType(generated);
			} 
			else {
				throw new RuntimeException("Variant unimplemented in ASMCodeGenerator.OperatorNode");
			}
		}
		
		public List<ASMCodeFragment> getPromotedArgs(OperatorNode node){
			PromotedSignature promotedSignature = node.getPromotedSignature();
			assert node.nChildren() == promotedSignature.numArgs() : "Operator Node: mismatched arg count - "+node.nChildren()+
																	" child nodes and "+promotedSignature.numArgs()+"promoted signatures";
			
			List<Promotion> promotions = promotedSignature.getPromotions();
			List<ASMCodeFragment> args = new ArrayList<>();
			for(int i = 0; i < node.nChildren(); i++) {
				ASMCodeFragment arg = removeValueCode(node.child(i));
				arg.append(promotions.get(i).codeFor());
				args.add(arg);
				
			}
			return args;
		}
				
		public void visitLeave(ArrayExpressionListNode node) {
			newValueCode(node);
			
			List<ASMCodeFragment> args = new ArrayList<>();
			for(ParseNode child: node.getChildren()) {
				ASMCodeFragment arg = removeValueCode(child);
				args.add(arg);
			}
			ArrayListCodeGenerator generator = new ArrayListCodeGenerator();
			ASMCodeFragment generated = generator.generate(node, args);
			if(generated == null) {
				throw new RuntimeException("ArrayListCodeGenerator produced null code fragment in ASMCodeGenerator.OperatorNode");
			}
			code.append(generated);
		}
		
		///////////////////////////////////////////////////////////////////////////
		// simple nodes (leaf except for index chains)
		
		public void visitLeave(TypeNode node) {
			newValueCode(node);
		}	

		public void visitLeave(IdentifierNode node) {
			
			newAddressCode(node);
			
			if(node.getToken().isLextant(Punctuator.INDEXING)) {
				ArrayIndexCodeGenerator generator = new ArrayIndexCodeGenerator();
				List<ASMCodeFragment> args = new ArrayList<>();
				for(ParseNode child: node.getChildren()) {
					ASMCodeFragment arg = removeValueCode(child);
					args.add(arg);
				}
				ASMCodeFragment generated = generator.generate(node, args);
				code.append(generated);
			} else {
				Binding binding = node.getBinding();
				binding.generateAddress(code);
			}
		}	
		
		///////////////////////////////////////////////////////////////////////////
		// leaf nodes (ErrorNode not necessary)
		public void visit(BooleanConstantNode node) {
			newValueCode(node);
			code.add(PushI, node.getValue() ? 1 : 0);
		}
		public void visit(CharConstantNode node) {
			newValueCode(node);
			
			code.add(PushI, node.getValue());
		}
		public void visit(IntegerConstantNode node) {
			newValueCode(node);
			
			code.add(PushI, node.getValue());
		}
		public void visit(FloatConstantNode node) {
			newValueCode(node);
			
			code.add(PushF, node.getValue());
		}
		public void visit(StringConstantNode node) {
			newValueCode(node);
			
			String label = new Labeller("string-constant").newLabel("");
			code.add(DLabel, label);
			code.add(DataI,3);
			code.add(DataI,9);
			code.add(DataI,node.getValue().length());
			code.add(DataS,node.getValue());
			code.add(PushD, label);
		}
	}

}
