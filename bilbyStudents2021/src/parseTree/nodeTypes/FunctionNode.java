package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

public class FunctionNode extends ParseNode {
	public FunctionNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.FUNC));
	}
	public FunctionNode(ParseNode node) {
		super(node);
	}
	public static ParseNode withChildren(Token token, ParseNode... children) {
		FunctionNode node = new FunctionNode(token);
		for (ParseNode child : children) {
			node.appendChild(child);
		}
		return node;
	}
	
	///////////////////////////////////////////////////////////
	//accept a visitor
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}

