package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.FunctionSignature;
import symbolTable.Binding;
import symbolTable.FunctionBinding;
import tokens.Token;

public class InvocationNode extends ParseNode {

	FunctionSignature signature;
	FunctionBinding binding;
	
	public InvocationNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.FUNC));
		signature = null;
		binding = null;
	}
	
	public InvocationNode(ParseNode node) {
		super(node);
	}
	
	public static InvocationNode withChildren(Token token, ParseNode identifier, ParseNode parameterList) {
		InvocationNode node = new InvocationNode(token);
		node.appendChild(identifier);
		node.appendChild(parameterList);
		return node;
	}
	
	///////////////////////////////////////////////////////////
	// boilerplate for visitors
			
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}

	public void setSignature(FunctionSignature signature) {
		this.signature = signature;
	}

	public void setBinding(FunctionBinding binding) {
		this.binding = binding;
		
	}
	
	public FunctionBinding getBinding() {
		return binding;
	}
}
