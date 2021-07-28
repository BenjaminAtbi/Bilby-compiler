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

public class TypeNode extends ParseNode {
	public TypeNode(Token token) {
		super(token);
		assert(token.isLextant(Keyword.BOOL, Keyword.CHAR, Keyword.STRING, Keyword.INT, Keyword.FLOAT, Punctuator.OPEN_SQUARE));
	}
	public TypeNode(ParseNode node) {
		super(node);
	}

////////////////////////////////////////////////////////////
// attributes
	
	public Lextant getValue() {
		return LextantToken().getLextant();
	}

	public LextantToken LextantToken() {
		return (LextantToken)token;
	}	
	
	public boolean isArray() {
		return getToken().isLextant(Punctuator.OPEN_SQUARE);
	}

//////////////////////////////////////////////////////
// factory
	
	public static ParseNode withChild(Token token, ParseNode child) {
		TypeNode node = new TypeNode(token);
		node.appendChild(child);
		return node;
	}
///////////////////////////////////////////////////////////
// accept a visitor
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visit(this);
	}
	public static ParseNode makePrimitive(Token typeToken) {
		TypeNode node = new TypeNode(typeToken);
		node.setType(PrimitiveType.fromToken((LextantToken)typeToken));
		return node;
	}

}
