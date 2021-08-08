package semanticAnalyzer;

import java.util.List;

import asmCodeGenerator.codeStorage.ASMOpcode;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.BlockNode;
import parseTree.nodeTypes.FunctionNode;
import parseTree.nodeTypes.ParameterListNode;
import parseTree.nodeTypes.ParameterNode;
import parseTree.nodeTypes.TypeNode;
import semanticAnalyzer.signatures.FunctionSignature;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;

public class FunctionDeclarationVisitor extends ParseNodeVisitor.Default {

	@Override
	public void visitEnter(FunctionNode node) {
		enterParameterScope(node);
	}

	public void visitLeave(FunctionNode node) {
		leaveScope(node); //leave parameter list scope
		
		assert node.child(2) instanceof ParameterListNode : "Function Visitor: Function Node: 3rd child is not parameter list node"; 
		ParameterListNode parameters = (ParameterListNode)node.child(2);
		List<Type> paramTypes = parameters.childTypes(); 
		FunctionSignature signature = new FunctionSignature(ASMOpcode.Nop, paramTypes.toArray(new Type[paramTypes.size()]));
		
		Scope scope = node.getLocalScope();
		Binding binding = scope.createFunctionBinding(node, node.getType(), signature);
		node.setBinding(binding);
	}
	
	//enter procedure scope
	public void visitEnter(BlockNode node) {
		if(node.getParent() instanceof FunctionNode) {
			enterProcedureScope(node);
		}
	}
	
	//enter procedure scope
	public void visitLeave(BlockNode node) {
		if(node.getParent() instanceof FunctionNode) {
			leaveScope(node);
		}
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	// scope control
	
	private void enterParameterScope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createParameterScope();
		node.setScope(scope);
		
	}
	
	private void enterProcedureScope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createProcedureScope();
		node.setScope(scope);
		
	}
	
	
	private void leaveScope(ParseNode node) {
		node.getScope().leave();
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	// process signatures
	
	@Override
	public void visitLeave(ParameterListNode node) {
		
	}
	
	
	@Override
	public void visitLeave(ParameterNode node) {
		assert node.child(0) instanceof TypeNode : "Function Visitor: Parameter Node: first child is not type node";
		node.setType(node.child(0).getType());
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
}
