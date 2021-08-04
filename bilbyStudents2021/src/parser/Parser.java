package parser;

import java.util.Arrays;

import logging.BilbyLogger;
import parseTree.*;
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
import tokens.*;
import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import lexicalAnalyzer.Punctuator;
import lexicalAnalyzer.Scanner;


public class Parser {
	private Scanner scanner;
	private Token nowReading;
	private Token previouslyRead;
	
	public static ParseNode parse(Scanner scanner) {
		Parser parser = new Parser(scanner);
		return parser.parse();
	}
	public Parser(Scanner scanner) {
		super();
		this.scanner = scanner;
	}
	
	public ParseNode parse() {
		readToken();
		return parseProgram();
	}

	////////////////////////////////////////////////////////////
	// "program" is the start symbol S
	// S -> MAIN mainBlock
	
	private ParseNode parseProgram() {
		if(!startsProgram(nowReading)) {
			return syntaxErrorNode("program");
		}
		ParseNode program = new ProgramNode(nowReading);
		
		expect(Keyword.MAIN);
		ParseNode mainBlock = parseBlockStatement();
		program.appendChild(mainBlock);
		
		if(!(nowReading instanceof NullToken)) {
			return syntaxErrorNode("end of program");
		}
		
		return program;
	}
	private boolean startsProgram(Token token) {
		return token.isLextant(Keyword.MAIN);
	}
	
	
	///////////////////////////////////////////////////////////
	// statements
	
	// statement-> declaration | printStmt | assignmnetStmt | blockStmt
	private ParseNode parseStatement() {
		if(!startsStatement(nowReading)) {
			return syntaxErrorNode("statement");
		}
		if(startsDeclaration(nowReading)) {
			return parseDeclaration();
		}
		if(startsIfStatement(nowReading)) {
			return parseIfStatement();
		}
		if(startsWhileStatement(nowReading)) {
			return parseWhileStatement();
		}
		if(startsPrintStatement(nowReading)) {
			return parsePrintStatement();
		}
		if(startsBlockStatement(nowReading)) {
			return parseBlockStatement();
		}
		if(startsAssignmentStatement(nowReading)) {
			return parseAssignmentStatement();
		}
		return syntaxErrorNode("statement");
	}
	private boolean startsStatement(Token token) {
		return startsIfStatement(token) ||
			   startsWhileStatement(token) ||
			   startsPrintStatement(token) ||
			   startsDeclaration(token) ||
			   startsBlockStatement(token)||
			   startsAssignmentStatement(token);
	}
	
/////////////////////////////////////////////////// Conditionals Statement ////////////////////////////////////////////////////
	
	private ParseNode parseIfStatement() {
		if(!startsIfStatement(nowReading)) {
			return syntaxErrorNode("if statement");
		}
		ParseNode ifnode = new IfStatementNode(nowReading);
		readToken();
		expect(Punctuator.OPEN_BRACKET);
		ifnode.appendChild(parseExpression());
		expect(Punctuator.CLOSE_BRACKET);
		ifnode.appendChild(parseBlockStatement());
		if(nowReading.isLextant(Keyword.ELSE))
		{
			readToken();
			ifnode.appendChild(parseBlockStatement());
		}
		return ifnode;
	}
	
	private boolean startsIfStatement(Token token) {
		return token.isLextant(Keyword.IF);
	}
	
	private ParseNode parseWhileStatement() {
		if(!startsWhileStatement(nowReading)) {
			return syntaxErrorNode("while statement");
		}
		ParseNode whilenode = new WhileStatementNode(nowReading);
		readToken();
		expect(Punctuator.OPEN_BRACKET);
		whilenode.appendChild(parseExpression());
		expect(Punctuator.CLOSE_BRACKET);
		whilenode.appendChild(parseBlockStatement());
		
		return whilenode;
	}
	
	private boolean startsWhileStatement(Token token) {
		return token.isLextant(Keyword.WHILE);
	}
	
/////////////////////////////////////////////////// Print Statement ///////////////////////////////////////////////////	
	
	// printStmt -> PRINT printExpressionList TERMINATOR
	private ParseNode parsePrintStatement() {
		if(!startsPrintStatement(nowReading)) {
			return syntaxErrorNode("print statement");
		}
		ParseNode result = new PrintStatementNode(nowReading);
		
		readToken();
		result = parsePrintExpressionList(result);
		
		expect(Punctuator.TERMINATOR);
		return result;
	}
	private boolean startsPrintStatement(Token token) {
		return token.isLextant(Keyword.PRINT);
	}	

	// This adds the printExpressions it parses to the children of the given parent
	// printExpressionList -> printSeparator* (expression printSeparator+)* expression? (note that this is nullable)

	private ParseNode parsePrintExpressionList(ParseNode parent) {
		if(!startsPrintExpressionList(nowReading)) {
			return syntaxErrorNode("printExpressionList");
		}
		
		while(startsPrintSeparator(nowReading)) {
			parsePrintSeparator(parent);
		}
		while(startsExpression(nowReading)) {
			parent.appendChild(parseExpression());
			if(nowReading.isLextant(Punctuator.TERMINATOR)) {
				return parent;
			}
			do {
				parsePrintSeparator(parent);
			} while(startsPrintSeparator(nowReading));
		}
		return parent;
	}	
	private boolean startsPrintExpressionList(Token token) {
		return startsExpression(token) || startsPrintSeparator(token);
	}

	
	// This adds the printSeparator it parses to the children of the given parent
	// printSeparator -> PRINT_SEPARATOR | PRINT_SPACE | PRINT_NEWLINE 
	
	private void parsePrintSeparator(ParseNode parent) {
		if(!startsPrintSeparator(nowReading)) {
			ParseNode child = syntaxErrorNode("print separator");
			parent.appendChild(child);
			return;
		}
		
		if(nowReading.isLextant(Punctuator.PRINT_NEWLINE)) {
			appendPrintSeparator(parent, '\n');
		}		
		else if(nowReading.isLextant(Punctuator.PRINT_SPACE)) {
			appendPrintSeparator(parent, ' ');
		}
		else if(nowReading.isLextant(Punctuator.PRINT_TAB)) {
			appendPrintSeparator(parent, '\t');
		}
		else if(nowReading.isLextant(Punctuator.PRINT_SEPARATOR)) {
			readToken();
		} 
	}
	
	private void appendPrintSeparator(ParseNode parent,char separator) {
		readToken();
		ParseNode child = new CharConstantNode(CharToken.make(previouslyRead,previouslyRead.getLexeme(),separator));
		parent.appendChild(child);
	}
	
	private boolean startsPrintSeparator(Token token) {
		return token.isLextant(Punctuator.PRINT_SEPARATOR, Punctuator.PRINT_SPACE, Punctuator.PRINT_NEWLINE, Punctuator.PRINT_TAB);
	}
	
/////////////////////////////////////////////////// Declaration ///////////////////////////////////////////////////	
	
	
	// declaration -> IMM identifier := expression TERMINATOR
	private ParseNode parseDeclaration() {
		if(!startsDeclaration(nowReading)) {
			return syntaxErrorNode("declaration");
		}
		Token declarationToken = nowReading;
		readToken();
		
		ParseNode identifier = parseIdentifier();
		expect(Punctuator.ASSIGN);
		ParseNode initializer = parseExpression();
		expect(Punctuator.TERMINATOR);
		
		return DeclarationNode.withChildren(declarationToken, identifier, initializer);
	}
	private boolean startsDeclaration(Token token) {
		return token.isLextant(Keyword.IMM, Keyword.MUT);
	}
	
	
/////////////////////////////////////////////////// Assignment Statement ///////////////////////////////////////////////
	
	private ParseNode parseAssignmentStatement() {
		if(!startsAssignmentStatement(nowReading)) {
			return syntaxErrorNode("assignment statement");
		}
		ParseNode identifier = parseIndexingExpression();
		
		if(!nowReading.isLextant(Punctuator.ASSIGN)) {
			return syntaxErrorNode("assignment statement");
		}
		Token assignmentToken = nowReading;
		readToken();
		ParseNode value = parseExpression();
		expect(Punctuator.TERMINATOR);
		
		return AssignmentNode.withChildren(assignmentToken, identifier, value);
	}
	
	private boolean startsAssignmentStatement(Token token) {
		return token.getClass() == IdentifierToken.class;
	}


/////////////////////////////////////////////////// Block Statement ///////////////////////////////////////////////////	
	
	private ParseNode parseBlockStatement() {
		if(!startsBlockStatement(nowReading)) {
			return syntaxErrorNode("mainBlock");
		}
		ParseNode block = new BlockNode(nowReading);
		expect(Punctuator.OPEN_BRACE);
		
		while(startsStatement(nowReading)) {
			ParseNode statement = parseStatement();
			block.appendChild(statement);
		}
		expect(Punctuator.CLOSE_BRACE);
		return block;
	}
	private boolean startsBlockStatement(Token token) {
		return token.isLextant(Punctuator.OPEN_BRACE);
	}
	
/////////////////////////////////////////////////// assignment Statement ///////////////////////////////////////////////////	
	
	// TODO
	
	
	
	///////////////////////////////////////////////////////////
	// expressions
	

	// expr  -> comparisonExpression
	private ParseNode parseExpression() {		
		if(!startsExpression(nowReading)) {
			return syntaxErrorNode("expression");
		}
		return parseOrExpression();
	}
	private boolean startsExpression(Token token) {
		return startsOrExpression(token);
	}
	
	private ParseNode parseOrExpression() {
		if(!startsOrExpression(nowReading)) {
			return syntaxErrorNode("and expression");
		}
		ParseNode left = parseAndExpression();
		return parseContinuedOrExpression(left);
	}
	
	private ParseNode parseContinuedOrExpression(ParseNode left) {
		if(nowReading.isLextant(Punctuator.OR)) {
			Token orToken = nowReading;
			readToken();
			ParseNode right = parseAndExpression();
			ParseNode orNode = OperatorNode.withChildren(orToken, left, right);
			
			return parseContinuedOrExpression(orNode);
		}
		return left;
	}
	
	private boolean startsOrExpression(Token token) {
		return startsAndExpression(token);
	}
	
	private ParseNode parseAndExpression() {
		if(!startsAndExpression(nowReading)) {
			return syntaxErrorNode("and expression");
		}
		ParseNode left = parseComparisonExpression();
		return parseContinuedAndExpression(left);
	}
	
	private ParseNode parseContinuedAndExpression(ParseNode left) {
		if(nowReading.isLextant(Punctuator.AND)) {
			Token andToken = nowReading;
			readToken();
			ParseNode right = parseComparisonExpression();
			ParseNode andNode = OperatorNode.withChildren(andToken, left, right);
			
			return parseContinuedAndExpression(andNode);
		}
		return left;
	}
	
	private boolean startsAndExpression(Token token) {
		return startsComparisonExpression(token);
	}
	
	// comparisonExpression -> additiveExpression [> additiveExpression]?
	private ParseNode parseComparisonExpression() {
		if(!startsComparisonExpression(nowReading)) {
			return syntaxErrorNode("comparison expression");
		}
		
		ParseNode left = parseAdditiveExpression();
		return parseContinuedComparisonExpression(left);

	}
	
	private ParseNode parseContinuedComparisonExpression(ParseNode left) {
		if(nowReading.isLextant(Punctuator.GREATER, Punctuator.LESS, Punctuator.LESS_EQUAL, Punctuator.GREATER_EQUAL, Punctuator.NOT_EQUAL, Punctuator.EQUAL)) {
			Token compareToken = nowReading;
			readToken();
			ParseNode right = parseAdditiveExpression();
			ParseNode compareNode = OperatorNode.withChildren(compareToken, left, right);
			
			return parseContinuedComparisonExpression(compareNode);
		}
		return left;
	}
	
	private boolean startsComparisonExpression(Token token) {
		return startsAdditiveExpression(token);
	}

	// additiveExpression -> multiplicativeExpression [+ multiplicativeExpression]*  (left-assoc)
	private ParseNode parseAdditiveExpression() {
		if(!startsAdditiveExpression(nowReading)) {
			return syntaxErrorNode("additiveExpression");
		}
		
		ParseNode left = parseMultiplicativeExpression();
		while(nowReading.isLextant(Punctuator.ADD, Punctuator.SUBTRACT)) {
			Token additiveToken = nowReading;
			readToken();
			ParseNode right = parseMultiplicativeExpression();
			
			left = OperatorNode.withChildren(additiveToken, left, right);
		}
		return left;
	}
	private boolean startsAdditiveExpression(Token token) {
		return startsMultiplicativeExpression(token);
	}	

	// multiplicativeExpression -> atomicExpression [MULT atomicExpression]*  (left-assoc)
	private ParseNode parseMultiplicativeExpression() {
		if(!startsMultiplicativeExpression(nowReading)) {
			return syntaxErrorNode("multiplicativeExpression");
		}
		
		ParseNode left = parseUnaryExpression();
		while(nowReading.isLextant(Punctuator.MULTIPLY, Punctuator.DIVIDE)) {
			Token multiplicativeToken = nowReading;
			readToken();
			ParseNode right = parseUnaryExpression();
			
			left = OperatorNode.withChildren(multiplicativeToken, left, right);
		}
		return left;
	}
	private boolean startsMultiplicativeExpression(Token token) {
		return startsUnaryExpression(token);
	}
	
	// unaryExpression			-> UNARYOP atomicExpression
	private ParseNode parseUnaryExpression() {
		if(!startsUnaryExpression(nowReading)) {
			return syntaxErrorNode("unary expression");
		}
		if(nowReading.isLextant(Punctuator.SUBTRACT, Punctuator.ADD)) {
			Token operatorToken = nowReading;
			readToken();
			ParseNode child = parseUnaryExpression();
			
			return OperatorNode.withChildren(operatorToken, child);
		}
		return parseIndexingExpression();
	}
	
	private boolean startsUnaryExpression(Token token) {
		return token.isLextant(Punctuator.SUBTRACT, Punctuator.ADD) || startsIndexingExpression(token);
	}
	
	private ParseNode parseIndexingExpression() {
		if(!startsIndexingExpression(nowReading)) {
			return syntaxErrorNode("indexing expression");
		}
		ParseNode left = parseAtomicExpression();
		while(nowReading.isLextant(Punctuator.OPEN_SQUARE)) {
			Token bracketToken = nowReading;
			expect(Punctuator.OPEN_SQUARE);
			ParseNode right = parseExpression();
			expect(Punctuator.CLOSE_SQUARE);
			Token indexingToken = LextantToken.make(bracketToken, bracketToken.getLexeme(), Punctuator.INDEXING);
			left= OperatorNode.withChildren(indexingToken, left, right);
		}
		return left;
	}
	private boolean startsIndexingExpression(Token token) {
		return startsAtomicExpression(token);
	}

	
	// atomicExpression         -> unaryExpression | literal
	private ParseNode parseAtomicExpression() {
		if(!startsAtomicExpression(nowReading)) {
			return syntaxErrorNode("atomic expression");
		}
		if(startsParantheticExpression(nowReading)) {
			return parseParantheticExpression();
		}
		if(startsSquareBracketExpression(nowReading)) {
			return parseSquareBracketExpression();
		}
		if(startsAllocExpression(nowReading)) {
			return parseAllocExpression();
		}
		if(startsRangeExpression(nowReading)) {
			return parseRangeExpression();
		}
		return parseLiteral();
	}
	
	private boolean startsAtomicExpression(Token token) {
		return startsLiteral(token) || startsParantheticExpression(token) || startsSquareBracketExpression(token) || startsAllocExpression(token);
	}
	
	private ParseNode parseParantheticExpression() {
		if(!startsParantheticExpression(nowReading)) {
			return syntaxErrorNode("AllocExpression");
		}
			expect(Punctuator.OPEN_BRACKET);
			ParseNode expression = parseExpression();
			expect(Punctuator.CLOSE_BRACKET);
			return expression;
	}
	
	private boolean startsParantheticExpression(Token token) {
		return token.isLextant(Punctuator.OPEN_BRACKET);
	}
	
	private ParseNode parseAllocExpression() {
		if(!startsAllocExpression(nowReading)) {
			return syntaxErrorNode("AllocExpression");
		}
		Token allocToken = nowReading;
		expect(Keyword.ALLOC);
		if(!nowReading.isLextant(Punctuator.OPEN_SQUARE)) {
			return syntaxErrorNode("array type");
		}
		ParseNode type = parseType();
		expect(Punctuator.OPEN_BRACKET);
		ParseNode expression = parseExpression();
		expect(Punctuator.CLOSE_BRACKET);
		return OperatorNode.withChildren(allocToken, type, expression);
	}
	
	private boolean startsAllocExpression(Token token) {
		return token.isLextant(Keyword.ALLOC);
	}
	
	private ParseNode parseRangeExpression() {
		if(!startsRangeExpression(nowReading)) {
			return syntaxErrorNode("rangeExpression");
		}
		expect(Punctuator.LESS_THAN);
		ParseNode left = parseExpression();
		if(!nowReading.isLextant(Punctuator.RANGE)) {
			return syntaxErrorNode("rangeExpression");
		}
		Token rangeToken = nowReading;
		readToken();
		ParseNode right = parseExpression();
		expect(Punctuator.GREATER_THAN);
		return OperatorNode.withChildren(rangeToken, left, right);
	}
	
	private boolean startsRangeExpression(Token token) {
		return token.isLextant(Punctuator.LESS_THAN);
	}
	
	private ParseNode parseSquareBracketExpression() {
		if(!startsSquareBracketExpression(nowReading)) {
			return syntaxErrorNode("Square Bracket Expression");
		}
		expect(Punctuator.OPEN_SQUARE);
		ParseNode firstExpression = parseExpression();
		
		if(nowReading.isLextant(Keyword.AS)) { // cast
			Token castToken = nowReading;
			readToken();
			if(!startsType(nowReading)) {
				return syntaxErrorNode("Type keyword: got"+nowReading.getLexeme());
			}
			ParseNode type = parseType();
			expect(Punctuator.CLOSE_SQUARE);
			return OperatorNode.withChildren(castToken,firstExpression,type);
		}
		else if(nowReading.isLextant(Punctuator.COMMA)) { // expression list
			Token listToken = nowReading;
			readToken();
			
			ArrayExpressionListNode list = new ArrayExpressionListNode(listToken);
			list.appendChild(firstExpression);
			
			if(!startsExpression(nowReading)) {
				return syntaxErrorNode("Expression list contains non-expression");
			}
			list.appendChild(parseExpression());
			
			while(nowReading.isLextant(Punctuator.COMMA)) {
				expect(Punctuator.COMMA);
				if(!startsExpression(nowReading)) {
					return syntaxErrorNode("Expression list contains non-expression");
				}
				list.appendChild(parseExpression());
			}
			expect(Punctuator.CLOSE_SQUARE);
			return list;
		}
		else if(nowReading.isLextant(Punctuator.CLOSE_SQUARE)){ // expression list with 1 element
			Token squareToken = nowReading;
			readToken();
			LextantToken token = LextantToken.make(squareToken, squareToken.getLexeme(), Punctuator.COMMA);
			ArrayExpressionListNode list = new ArrayExpressionListNode(token);
			list.appendChild(firstExpression);

			return list;
		}
		else {
			return syntaxErrorNode("Square Bracket Expression is neither cast nor expression list");
		}
	}
	
	private boolean startsSquareBracketExpression(Token token) {
		return token.isLextant(Punctuator.OPEN_SQUARE);
	}

	
	private ParseNode parseType() {
		if(!startsType(nowReading)) {
			return syntaxErrorNode("type keyword");
		}
		Token typeToken = nowReading;
		readToken();
		if(typeToken.isLextant(Punctuator.OPEN_SQUARE)) {
			ParseNode child = parseType();
			expect(Punctuator.CLOSE_SQUARE);
			typeToken = LextantToken.make(typeToken, typeToken.getLexeme(), Keyword.ARRAY);
			return TypeNode.withChild(typeToken, child);
		}
		else {
			return TypeNode.makePrimitive(typeToken);
		}
	} 
	
	private boolean startsType(Token token) {
		return token.isLextant(Keyword.BOOL, Keyword.CHAR, Keyword.STRING, Keyword.INT, Keyword.FLOAT, Punctuator.OPEN_SQUARE);
	}
	
	// literal -> int | float | identifier | booleanConstant
	private ParseNode parseLiteral() {
		if(!startsLiteral(nowReading)) {
			return syntaxErrorNode("literal");
		}
		if(startsCharLiteral(nowReading)) {
			return parseCharLiteral();
		}
		if(startsIntLiteral(nowReading)) {
			return parseIntLiteral();
		}
		if(startsFloatLiteral(nowReading)) {
			return parseFloatLiteral();
		}
		if(startsStringLiteral(nowReading)) {
			return parseStringLiteral();
		}
		if(startsIdentifier(nowReading)) {
			return parseIdentifier();
		}
		if(startsBooleanLiteral(nowReading)) {
			return parseBooleanLiteral();
		}

		return syntaxErrorNode("literal");
	}
	private boolean startsLiteral(Token token) {
		return  startsCharLiteral(token) ||
				startsIntLiteral(token)|| 
				startsFloatLiteral(token) || 
				startsStringLiteral(token) || 
				startsIdentifier(token) || 
				startsBooleanLiteral(token);
	}

	// char (literal)
	private ParseNode parseCharLiteral() {
		if(!startsCharLiteral(nowReading)) {
			return syntaxErrorNode("char constant");
		}
		readToken();
		return new CharConstantNode(previouslyRead);
	}
	private boolean startsCharLiteral(Token token) {
		return token instanceof CharToken;
	}
	
	// int (literal)
	private ParseNode parseIntLiteral() {
		if(!startsIntLiteral(nowReading)) {
			return syntaxErrorNode("integer constant");
		}
		readToken();
		return new IntegerConstantNode(previouslyRead);
	}
	private boolean startsIntLiteral(Token token) {
		return token instanceof IntToken;
	}

	// float (literal)
	private ParseNode parseFloatLiteral() {
		if(!startsFloatLiteral(nowReading)) {
			return syntaxErrorNode("floating constant");
		}
		readToken();
		return new FloatConstantNode(previouslyRead);
	}
	private boolean startsFloatLiteral(Token token) {
		return token instanceof FloatToken;
	}
	
	// char (literal)
	private ParseNode parseStringLiteral() {
		if(!startsStringLiteral(nowReading)) {
			return syntaxErrorNode("char constant");
		}
		readToken();
		return new StringConstantNode(previouslyRead);
	}
	private boolean startsStringLiteral(Token token) {
		return token instanceof StringToken;
	}
	
	// identifier (terminal)
	private ParseNode parseIdentifier() {
		if(!startsIdentifier(nowReading)) {
			return syntaxErrorNode("identifier");
		}
		readToken();
		ParseNode identifier = new IdentifierNode(previouslyRead);
		
//		while(nowReading.isLextant(Punctuator.OPEN_SQUARE)) {
//			Token bracketToken = nowReading;
//			readToken();
//			ParseNode index = parseIntLiteral();
//			expect(Punctuator.CLOSE_SQUARE);
//			Token indexingToken = LextantToken.make(bracketToken, bracketToken.getLexeme(), Punctuator.INDEXING);
//			identifier = IdentifierNode.withChildren(indexingToken, identifier, index);
//		}
		
		return identifier;
	}
	private boolean startsIdentifier(Token token) {
		return token instanceof IdentifierToken;
	}

	// boolean literal
	private ParseNode parseBooleanLiteral() {
		if(!startsBooleanLiteral(nowReading)) {
			return syntaxErrorNode("boolean constant");
		}
		readToken();
		return new BooleanConstantNode(previouslyRead);
	}
	private boolean startsBooleanLiteral(Token token) {
		return token.isLextant(Keyword.TRUE, Keyword.FALSE);
	}

	private void readToken() {
		previouslyRead = nowReading;
		nowReading = scanner.next();
	}	
	
	// if the current token is one of the given lextants, read the next token.
	// otherwise, give a syntax error and read next token (to avoid endless looping).
	private void expect(Lextant ...lextants ) {
		if(!nowReading.isLextant(lextants)) {
			syntaxError(nowReading, "expecting " + Arrays.toString(lextants));
		}
		readToken();
	}	
	private ErrorNode syntaxErrorNode(String expectedSymbol) {
		syntaxError(nowReading, "expecting " + expectedSymbol);
		ErrorNode errorNode = new ErrorNode(nowReading);
		readToken();
		return errorNode;
	}
	private void syntaxError(Token token, String errorDescription) {
		String message = "" + token.getLocation() + " " + errorDescription;
		error(message);
	}
	private void error(String message) {
		BilbyLogger log = BilbyLogger.getLogger("compiler.Parser");
		log.severe("syntax error: " + message);
	}	
}

