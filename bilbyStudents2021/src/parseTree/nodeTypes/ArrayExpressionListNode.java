package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import tokens.Token;

public class ArrayExpressionListNode extends ParseNode {

	public ArrayExpressionListNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.ARRAY));
	}
	
	public ArrayExpressionListNode(ParseNode node) {
		super(node);
	}
	
	
	///////////////////////////////////////////////////////////
	// boilerplate for visitors
	
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}
