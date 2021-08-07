package parseTree.nodeTypes;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.types.PrimitiveType;
import tokens.LextantToken;
import tokens.Token;
import tokens.TypeToken;

public class ReturnNode extends ParseNode {
	public ReturnNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.RETURN));
	}
	public ReturnNode(ParseNode node) {
		super(node);
	}

//////////////////////////////////////////////////////
// factory
	
	public static ParseNode withChild(Token token, ParseNode child) {
		ReturnNode node = new ReturnNode(token);
		node.appendChild(child);
		return node;
	}
///////////////////////////////////////////////////////////
// accept a visitor
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}
