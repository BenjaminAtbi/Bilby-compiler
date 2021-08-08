package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.types.Type;
import symbolTable.Binding;
import tokens.Token;

public class FunctionNode extends ParseNode {
	
	Token identifierToken;
	Type returnType;
	Binding binding;
	
	///////////////////////////////////////////////////////////////
	/// constructors 
	
	public FunctionNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.FUNC));
		this.binding = null;
	}
	public FunctionNode(ParseNode node) {
		super(node);
		if(node instanceof FunctionNode) {
			this.binding = ((FunctionNode)node).binding;
		}
		else {
			this.binding = null;
		}
	}
	public static ParseNode withChildren(Token token, ParseNode type, ParseNode identifier, ParseNode parameterList, ParseNode block) {
		FunctionNode node = new FunctionNode(token);
		
		node.identifierToken = identifier.getToken();
		node.returnType = type.getType();
		
		node.appendChild(type);
		node.appendChild(identifier);
		node.appendChild(parameterList);
		node.appendChild(block);

		return node;
	}
	
	////////////////////////////////////////////////////////////
	/// set get
	
	public void setBinding(Binding binding) {
		this.binding = binding;
	}
	
	
	///////////////////////////////////////////////////////////
	//accept a visitor
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}

