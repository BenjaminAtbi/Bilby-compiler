package parseTree.nodeTypes;

import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.signatures.PromotedSignature;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import tokens.LextantToken;
import tokens.Token;

public class AssignmentNode extends ParseNode {

	private PromotedSignature promotedSignature;

	public AssignmentNode(Token token) {
		super(token);
		assert(token.isLextant(Punctuator.ASSIGN));
	}

	public AssignmentNode(ParseNode node) {
		super(node);
	}
	
	////////////////////////////////////////////////////////////
	// attributes
	
	public Lextant getDeclarationType() {
		return lextantToken().getLextant();
	}
	public LextantToken lextantToken() {
		return (LextantToken)token;
	}	
	
	////////////////////////////////////////////////////////////
	// convenience factory
	
	public static AssignmentNode withChildren(Token token, ParseNode assignedName, ParseNode initializer) {
		AssignmentNode node = new AssignmentNode(token);
		node.appendChild(assignedName);
		node.appendChild(initializer);
		return node;
	}
	
	
	///////////////////////////////////////////////////////////
	// boilerplate for visitors
			
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}

	public void setPromotedSignature(PromotedSignature promotedSignature) {
		this.promotedSignature = promotedSignature;
	}

	public PromotedSignature getPromotedSignature() {
		return promotedSignature;
	}
}
