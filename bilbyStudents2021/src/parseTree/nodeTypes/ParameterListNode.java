package parseTree.nodeTypes;

import java.util.ArrayList;
import java.util.List;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Punctuator;
import parseTree.ParseNode;
import parseTree.ParseNodeVisitor;
import semanticAnalyzer.types.Type;
import tokens.Token;

public class ParameterListNode extends ParseNode {

	public ParameterListNode(Token token) {
		super(token);
		assert(token.isLextant(Punctuator.PARAMETER_LIST, Punctuator.ARGUMENT_LIST));
	}
	
	public ParameterListNode(ParseNode node) {
		super(node);
	}
	
	
	public static ParseNode withChildren(Token token, ParseNode... children) {
		ParameterListNode node = new ParameterListNode(token);
		for (ParseNode child : children) {
			node.appendChild(child);
		}
		return node;
	}
	
	public List<Type> getChildTypes() {
		List<Type> types = new ArrayList<Type>();
		for (ParseNode child : this.getChildren()) {
			types.add(child.getType());
		}
		return types;
	}
	
	///////////////////////////////////////////////////////////
	// boilerplate for visitors
	
	public void accept(ParseNodeVisitor visitor) {
		visitor.visitEnter(this);
		visitChildren(visitor);
		visitor.visitLeave(this);
	}
}
