package parseTree.nodeTypes;

import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.IntToken;
import tokens.Token;

public class ParameterNode extends ParseNode {
	public ParameterNode(Token token) {
		super(token);
		assert(token.isLextant(Punctuator.PARAMETER));
	}
	public ParameterNode(ParseNode node) {
		super(node);
	}
	
	public static ParseNode withChildren(Token token, ParseNode... children) {
		ParameterNode node = new ParameterNode(token);
		for (ParseNode child : children) {
			node.appendChild(child);
		}
		return node;
	}

////////////////////////////////////////////////////////////
// attributes
	
	public int getValue() {
		return numberToken().getValue();
	}

	public IntToken numberToken() {
		return (IntToken)token;
	}	

///////////////////////////////////////////////////////////
// accept a visitor
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}

}
