package semanticAnalyzer;

import java.util.Arrays;
import java.util.List;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import logging.BilbyLogger;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import parseTree.nodeTypes.BooleanConstantNode;
import parseTree.nodeTypes.CharConstantNode;
import parseTree.nodeTypes.ArrayExpressionListNode;
import parseTree.nodeTypes.AssignmentNode;
import parseTree.nodeTypes.BlockNode;
import parseTree.nodeTypes.DeclarationNode;
import parseTree.nodeTypes.ErrorNode;
import parseTree.nodeTypes.FloatConstantNode;
import parseTree.nodeTypes.IdentifierNode;
import parseTree.nodeTypes.IfStatementNode;
import parseTree.nodeTypes.IntegerConstantNode;
import parseTree.nodeTypes.NewlineNode;
import parseTree.nodeTypes.OperatorNode;
import parseTree.nodeTypes.PrintStatementNode;
import parseTree.nodeTypes.ProgramNode;
import parseTree.nodeTypes.SpaceNode;
import parseTree.nodeTypes.StringConstantNode;
import parseTree.nodeTypes.TypeNode;
import parseTree.nodeTypes.WhileStatementNode;
import semanticAnalyzer.signatures.FunctionSignature;
import semanticAnalyzer.signatures.FunctionSignatures;
import semanticAnalyzer.signatures.PromotedSignature;
import semanticAnalyzer.types.Array;
import semanticAnalyzer.types.PrimitiveType;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import symbolTable.Scope;
import tokens.LextantToken;
import tokens.Token;

class SemanticAnalysisVisitor extends ParseNodeVisitor.Default {
	@Override
	public void visitLeave(ParseNode node) {
		throw new RuntimeException("Node class unimplemented in SemanticAnalysisVisitor: " + node.getClass());
	}
	
	///////////////////////////////////////////////////////////////////////////
	// constructs larger than statements
	@Override
	public void visitEnter(ProgramNode node) {
		enterProgramScope(node);
	}
	public void visitLeave(ProgramNode node) {
		leaveScope(node);
	}
	public void visitEnter(BlockNode node) {
		enterSubscope(node);
	}
	public void visitLeave(BlockNode node) {
		leaveScope(node);
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	// helper methods for scoping.
	private void enterProgramScope(ParseNode node) {
		Scope scope = Scope.createProgramScope();
		node.setScope(scope);
	}	
	
	@SuppressWarnings("unused")
	private void enterSubscope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createSubscope();
		node.setScope(scope);
	}		
	
	private void leaveScope(ParseNode node) {
		node.getScope().leave();
	}
	
	///////////////////////////////////////////////////////////////////////////
	// statements and declarations
	@Override
	public void visitLeave(PrintStatementNode node) {
	}
	
	
	///////////////////////////////////////////////////////////////////////////
	
	@Override
	public void visitLeave(IfStatementNode node) {
		assert(node.child(0).getType() == PrimitiveType.BOOLEAN);
	}
	
	@Override
	public void visitLeave(WhileStatementNode node) {
		assert(node.child(0).getType() == PrimitiveType.BOOLEAN);
	}
	
	@Override
	public void visitLeave(DeclarationNode node) {
		IdentifierNode identifier = (IdentifierNode) node.child(0);
		ParseNode initializer = node.child(1);
		
		Type declarationType = initializer.getType();
		node.setType(declarationType);
		
		identifier.setType(declarationType);
		if(node.lextantToken().isLextant(Keyword.MUT)) {
			addBinding(identifier, declarationType, true);
		} else {
			addBinding(identifier, declarationType, false);
		}
	}
	
	@Override
	public void visitLeave(AssignmentNode node) {
		
		ParseNode identifier = node.child(0);
		ParseNode value = node.child(1);
		
		
		assert(identifier instanceof IdentifierNode || 
			  (identifier instanceof OperatorNode && 
			   identifier.getToken().isLextant(Punctuator.INDEXING))) : "Assignment node: left node is not identifier or indexing expression";
		
		if(identifier instanceof IdentifierNode){
			assert (((IdentifierNode)identifier).getBinding().getMutable()) : "Assignment node: binding not mutable";
		}
		
		List<Type> childTypes = childTypes(node);
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(Punctuator.ASSIGN);
		List<PromotedSignature> promotedSignatures = signatures.leastLevelPromotions(childTypes);
		if(promotedSignatures.isEmpty()) {
			typeCheckError(node, childTypes);
			node.setType(PrimitiveType.ERROR);
		}
		else if(promotedSignatures.size() > 1) {
			multipleInterpretationError(node, childTypes);
			node.setType(PrimitiveType.ERROR);
		}
		else {
			PromotedSignature promotedSignature = promotedSignatures.get(0);
			node.setPromotedSignature(promotedSignature);
			
			Type declaredType = identifier.getType();
			assert(declaredType.equivalent(promotedSignature.resultType())) : "Assignment node: mismatched types";
			node.setType(declaredType);
		}
		
		//
		

	}
	
	///////////////////////////////////////////////////////////////////////////
	// IdentifierNodes, with helper methods

	@Override
	public void visitLeave(IdentifierNode node) {
		
		if(node.getToken().isLextant(Punctuator.INDEXING)) {
			
			IdentifierNode childIdentifier = (IdentifierNode)node.child(0);
			Array childType = (Array)childIdentifier.getType();
			node.setType(childType.getSubtype());
			node.setBinding(Binding.nullInstance());
		}
		else if(!isBeingDeclared(node)) {		
			Binding binding = node.findVariableBinding();
			
			node.setType(binding.getType());
			node.setBinding(binding);
		}
		// else parent DeclarationNode does the processing.
	}
	
	private boolean isBeingDeclared(IdentifierNode node) {
		ParseNode parent = node.getParent();
		return (parent instanceof DeclarationNode) && (node == parent.child(0));
	}
	private void addBinding(IdentifierNode identifierNode, Type type, boolean mutable) {
		Scope scope = identifierNode.getLocalScope();
		Binding binding = scope.createBinding(identifierNode, type, mutable);
		identifierNode.setBinding(binding);
	}

	///////////////////////////////////////////////////////////////////////////
	// expressions
	@Override
	public void visitLeave(OperatorNode node) {
		List<Type> childTypes = childTypes(node);
		
		Lextant operator = operatorFor(node);
		
		FunctionSignatures signatures = FunctionSignatures.signaturesOf(operator);
		List<PromotedSignature> promotedSignatures = signatures.leastLevelPromotions(childTypes);
		
		if(promotedSignatures.isEmpty()) {
			typeCheckError(node, childTypes);
			node.setType(PrimitiveType.ERROR);
		}
		else if(promotedSignatures.size() > 1) {
			multipleInterpretationError(node, childTypes);
			node.setType(PrimitiveType.ERROR);
		}
		else {
			PromotedSignature promotedSignature = promotedSignatures.get(0);
			node.setType(promotedSignature.resultType());
			node.setPromotedSignature(promotedSignature);
		}
	}
	
	private Lextant operatorFor(OperatorNode node) {
		LextantToken token = (LextantToken) node.getToken();
		return token.getLextant();
	}

	private List<Type> childTypes(ParseNode node) {
		List<Type> childTypes;  
		if(node.nChildren() == 1) {
			ParseNode child = node.child(0);
			childTypes = Arrays.asList(child.getType());
		} 
		else {
			assert node.nChildren() == 2 : "Child Types: less than 1 or more than 2 children";
			ParseNode left  = node.child(0);
			ParseNode right = node.child(1);
			
			childTypes = Arrays.asList(left.getType(), right.getType());		
		}
		return childTypes;
	}
	
	@Override
	public void visitLeave(ArrayExpressionListNode node) {
		
		assert(node.nChildren() > 0) : "ArrayExpressionListNode: no children";
		Type childType = node.child(0).getType();
		for(int i = 0; i < node.nChildren(); i++) {
			assert node.child(i).getType().equivalent(childType) : "child "+i+" is type "+node.child(i).getType().infoString()+", list type set to "+childType.infoString();
		}
		node.setType(new Array(childType));
	}
	
	///////////////////////////////////////////////////////////////////////////
	// types
	
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
	// simple leaf nodes 
	@Override
	public void visit(BooleanConstantNode node) {
		node.setType(PrimitiveType.BOOLEAN);
	}
	@Override
	public void visit(ErrorNode node) {
		node.setType(PrimitiveType.ERROR);
	}
	@Override
	public void visit(CharConstantNode node) {
		node.setType(PrimitiveType.CHAR);
	}
	@Override
	public void visit(IntegerConstantNode node) {
		node.setType(PrimitiveType.INTEGER);
	}
	@Override
	public void visit(FloatConstantNode node) {
		node.setType(PrimitiveType.FLOAT);
	}
	@Override
	public void visit(StringConstantNode node) {
		node.setType(PrimitiveType.STRING);
	}
	@Override
	public void visit(NewlineNode node) {
	}
	@Override
	public void visit(SpaceNode node) {
	}
	

	
	///////////////////////////////////////////////////////////////////////////
	// error logging/printing

	private void typeCheckError(ParseNode node, List<Type> operandTypes) {
		Token token = node.getToken();
		
		logError("operator " + token.getLexeme() + " not defined for types " 
				 + operandTypes  + " at " + token.getLocation());	
	}
	
	private void multipleInterpretationError(ParseNode node, List<Type> childTypes) {
		Token token = node.getToken();
		logError("operator " + token.getLexeme() + " has multiple promotions for types "
				+ childTypes + " at " + token.getLocation());
		
	}
	private void logError(String message) {
		BilbyLogger log = BilbyLogger.getLogger("compiler.semanticAnalyzer");
		log.severe(message);
	}
}