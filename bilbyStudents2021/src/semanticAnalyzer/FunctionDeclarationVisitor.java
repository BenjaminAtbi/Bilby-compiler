package semanticAnalyzer;

import java.util.List;

import asmCodeGenerator.codeStorage.ASMOpcode;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.BlockNode;
import parseTree.nodeTypes.FunctionNode;
import parseTree.nodeTypes.IdentifierNode;
import parseTree.nodeTypes.ParameterListNode;
import parseTree.nodeTypes.ParameterNode;
import parseTree.nodeTypes.ProgramNode;
import parseTree.nodeTypes.TypeNode;
import semanticAnalyzer.signatures.FunctionSignature;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;

public class FunctionDeclarationVisitor extends ParseNodeVisitor.Default {

	@Override
	public void visitEnter(ProgramNode node) {
		enterProgramScope(node);
	}
	
	@Override
	public void visitEnter(FunctionNode node) {
		enterParameterScope(node);
	}

	public void visitLeave(FunctionNode node) {
		leaveScope(node); //leave parameter list scope
		
		assert node.child(0) instanceof TypeNode :  "Function Visitor: Function Node: 1st child is not identifier node";
		assert node.child(1) instanceof IdentifierNode :  "Function Visitor: Function Node: 2nd child is not identifier node";
		assert node.child(2) instanceof ParameterListNode : "Function Visitor: Function Node: 3rd child is not parameter list node"; 
		TypeNode typeChild = (TypeNode) node.child(0);
		IdentifierNode identifierChild = (IdentifierNode) node.child(1);
		ParameterListNode parameterListChild = (ParameterListNode) node.child(2);
		
		List<Type> paramTypes = parameterListChild.childTypes(); 
		paramTypes.add(typeChild.getType());
		FunctionSignature signature = new FunctionSignature(ASMOpcode.Nop, paramTypes.toArray(new Type[paramTypes.size()]));
		node.setSignature(signature);
		
		Scope scope = node.getLocalScope();
		Binding binding = scope.createFunctionBinding(identifierChild, node.getType(), signature);
		node.setBinding(binding);
	}
	
//	//enter procedure scope
//	public void visitEnter(BlockNode node) {
//		if(node.getParent() instanceof FunctionNode) {
//			enterProcedureScope(node);
//		}
//	}
//	
//	//enter procedure scope
//	public void visitLeave(BlockNode node) {
//		if(node.getParent() instanceof FunctionNode) {
//			leaveScope(node);
//		}
//	}
	
	///////////////////////////////////////////////////////////////////////////
	// scope control
	
	private void enterProgramScope(ParseNode node) {
		Scope scope = Scope.createProgramScope();
		node.setScope(scope);
		enterScopeDebug(node, scope);
	}	
	
	private void enterParameterScope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createParameterScope();
		node.setScope(scope);
		enterScopeDebug(node, scope);
	}
	
//	private void enterProcedureScope(ParseNode node) {
//		Scope baseScope = node.getLocalScope();
//		Scope scope = baseScope.createProcedureScope();
//		node.setScope(scope);
//		
//	}
//	
	
	private void leaveScope(ParseNode node) {
		exitScopeDebug(node, node.getScope());
		node.getScope().leave();
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	// process signatures
	
	
	@Override
	public void visitLeave(ParameterNode node) {
		assert node.child(0) instanceof TypeNode : "Function Visitor: Parameter Node: first child is not type node";
		assert node.child(1) instanceof IdentifierNode : "Function Visitor: Parameter Node: second child is not identifier node";
		
		TypeNode typeChild = (TypeNode)node.child(0);
		IdentifierNode identifierChild = (IdentifierNode)node.child(1);
		
		
		Type type = typeChild.getType();
		node.setType(type);
		
		Scope scope = node.getLocalScope();
		Binding binding = scope.createBinding(identifierChild, type, true);
		identifierChild.setBinding(binding);
	}
	
	@Override
	public void visitLeave(TypeNode node) {
		if(node.isArray()) {
			Type subtype = node.child(0).getType();
			Type arrayType = new Array(subtype); 
			node.setType(arrayType);
		} else {
			node.setType(PrimitiveType.fromToken(node.LextantToken()));
		}
	}
	
	
	
	///////////////////////////////////////////////////////////////////////////
	// debug
	
	private void enterScopeDebug(ParseNode node, Scope scope) {
		if(Scope.Debug) System.out.println("FunctionDeclaration - entering scope: " + node.getClass( )+ "\n" + scope.toString());
	}
	
	private void exitScopeDebug(ParseNode node, Scope scope) {
		if(Scope.Debug) System.out.println("FunctionDeclaration - exiting scope: " + node.getClass() + "\n" + scope.toString());
	}
}
