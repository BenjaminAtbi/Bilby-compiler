package lexicalAnalyzer;


import logging.BilbyLogger;

import inputHandler.InputHandler;
import inputHandler.LocatedChar;
import inputHandler.LocatedCharStream;
import inputHandler.PushbackCharStream;
import tokens.CharToken;
import tokens.FloatToken;
import tokens.IdentifierToken;
import tokens.LextantToken;
import tokens.NullToken;
import tokens.StringToken;
import tokens.IntToken;
import tokens.Token;

import static lexicalAnalyzer.PunctuatorScanningAids.*;

public class LexicalAnalyzer extends ScannerImp implements Scanner {
	private static final char DECIMAL_POINT = '.';
	private static final char CAPITAL_E = 'E';
	private static final char NEWLINE = 10;

	public static LexicalAnalyzer make(String filename) {
		InputHandler handler = InputHandler.fromFilename(filename);
		PushbackCharStream charStream = PushbackCharStream.make(handler);
		return new LexicalAnalyzer(charStream);
	}

	public LexicalAnalyzer(PushbackCharStream input) {
		super(input);
	}

	
	//////////////////////////////////////////////////////////////////////////////
	// Token-finding main dispatch	

	@Override
	protected Token findNextToken() {
		LocatedChar ch = nextNonWhitespaceChar();
		if(ch.isDigit()) {
			return scanNumber(ch);
		}
		else if(ch.isLowerCase()) {
			return scanIdentifier(ch);
		}
		else if(isPunctuatorStart(ch)) {
			return PunctuatorScanner.scan(ch, input);
		}
		else if(isCharStart(ch)) {
			return scanChar(ch);
		}
		else if(isStrStart(ch)) {
			return scanString(ch);
		}
		else if(isEndOfInput(ch)) {
			return NullToken.make(ch);
		}
		else {
			lexicalError(ch);
			return findNextToken();
		}
	}




	private LocatedChar nextNonWhitespaceChar() {
		LocatedChar ch = input.next();
		while(ch.isWhitespace()) {
			ch = input.next();
		}
		return ch;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Integer and Float lexical analysis	

	private Token scanNumber(LocatedChar firstChar) {
		StringBuffer buffer = new StringBuffer();
		buffer.append(firstChar.getCharacter());
		appendSubsequentDigits(buffer);
		if(input.peek().getCharacter() == DECIMAL_POINT) {
			buffer.append(input.next().getCharacter());
			if(input.peek().isDigit()) {
				appendSubsequentDigits(buffer);
				if(input.peek().getCharacter() == CAPITAL_E) {
					LocatedChar expChar = input.next();
					buffer.append(expChar.getCharacter());
					if(input.peek().getCharacter() == '+' || input.peek().getCharacter() == '-') {
						buffer.append(input.next().getCharacter());
					}
					if(input.peek().isDigit()) {
						appendSubsequentDigits(buffer);
					}
					else {
						lexicalError(expChar, "malformed floating exponent literal");
						return findNextToken();
					}
				} 
				return FloatToken.make(firstChar, buffer.toString());
			}
			else {
				lexicalError(firstChar, "malformed floating literal");
				return findNextToken();
			}
		}
		else {
			return IntToken.make(firstChar, buffer.toString());
		}
	}
	

	private void appendSubsequentDigits(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(c.isDigit()) {
			buffer.append(c.getCharacter());
			c = input.next();
		}
		input.pushback(c);
	}
	
	//////////////////////////////////////////////////////////////////////////////
	// Char lexical analysis	

	private Token scanChar(LocatedChar firstChar) {
		StringBuffer buffer = new StringBuffer();
		if(input.peek().matchChar('#')) {
			buffer.append(input.next().getCharacter());
			LocatedChar next = input.peek();
			if(next.matchChar('#') || next.isOctal()) {
				buffer.append(input.next().getCharacter());
			} 
			else {
				lexicalError(firstChar, "malformed char of form ##[0..9#]");
				return findNextToken();
			}
			return CharToken.makePrecise(firstChar, buffer.toString());
		} 
		else if(input.peek().isOctal()) {
			appendSubsequentOctals(buffer);
			return CharToken.makeOctal(firstChar, buffer.toString());
		}
		else if(input.peek().isRecognized()){
			buffer.append(input.next().getCharacter());
			return CharToken.make(firstChar, buffer.toString());
		}
		else {
			lexicalError(firstChar, "malformed char of form #@");
			return findNextToken();
		}
	}

	private void appendSubsequentOctals(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(c.isOctal()) {
			buffer.append(c.getCharacter());
			c = input.next();
		}
		input.pushback(c);
	}
	
	
	private boolean isCharStart(LocatedChar ch) {
		return ch.matchChar('#');
	}
	
	//////////////////////////////////////////////////////////////////////////////
	// String lexical analysis	
	
	private Token scanString(LocatedChar firstChar) {
		StringBuffer buffer = new StringBuffer();
		appendSubsequentString(buffer);
		LocatedChar ch = input.peek();
		if(ch.matchChar('"')) {
			input.next();
			return StringToken.make(firstChar, buffer.toString());
		} else {
			lexicalError(ch, "malformed string");
			return findNextToken();
		}
	}
	
	private void appendSubsequentString(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(!c.matchChar('"') && !c.matchChar(NEWLINE)) {
			buffer.append(c.getCharacter());
			c = input.next();
		}
		input.pushback(c);
	}
	
	private boolean isStrStart(LocatedChar ch) {
		return ch.matchChar('"');
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Identifier and keyword lexical analysis	

	private Token scanIdentifier(LocatedChar firstChar) {
		StringBuffer buffer = new StringBuffer();
		buffer.append(firstChar.getCharacter());
		appendSubsequentLowercase(buffer);

		String lexeme = buffer.toString();
		if(Keyword.isAKeyword(lexeme)) {
			return LextantToken.make(firstChar, lexeme, Keyword.forLexeme(lexeme));
		}
		else {
			return IdentifierToken.make(firstChar, lexeme);
		}
	}
	private void appendSubsequentLowercase(StringBuffer buffer) {
		LocatedChar c = input.next();
		while(c.isLowerCase()) {
			buffer.append(c.getCharacter());
			c = input.next();
		}
		input.pushback(c);
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Punctuator lexical analysis	
	// old method left in to show a simple scanning method.
	// current method is the algorithm object PunctuatorScanner.java

	@SuppressWarnings("unused")
	private Token oldScanPunctuator(LocatedChar ch) {
		
		switch(ch.getCharacter()) {
		case '*':
			return LextantToken.make(ch, "*", Punctuator.MULTIPLY);
		case '+':
			return LextantToken.make(ch, "+", Punctuator.ADD);
		case '>':
			return LextantToken.make(ch, ">", Punctuator.GREATER);
		case ':':
			if(ch.getCharacter()=='=') {
				return LextantToken.make(ch, ":=", Punctuator.ASSIGN);
			}
			else {
				lexicalError(ch);
				return(NullToken.make(ch));
			}
		case ',':
			return LextantToken.make(ch, ",", Punctuator.PRINT_SEPARATOR);
		case ';':
			return LextantToken.make(ch, ";", Punctuator.TERMINATOR);
		default:
			lexicalError(ch);
			return(NullToken.make(ch));
		}
	}

	

	//////////////////////////////////////////////////////////////////////////////
	// Character-classification routines specific to bilby scanning.	

	private boolean isPunctuatorStart(LocatedChar lc) {
		char c = lc.getCharacter();
		return isPunctuatorStartingCharacter(c);
	}

	private boolean isEndOfInput(LocatedChar lc) {
		return lc == LocatedCharStream.FLAG_END_OF_INPUT;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////
	// Error-reporting	

	private void lexicalError(LocatedChar ch) {
		BilbyLogger log = BilbyLogger.getLogger("compiler.lexicalAnalyzer");
		log.severe("Lexical error: invalid character " + ch);
	}

	private void lexicalError(LocatedChar firstChar, String message) {
		BilbyLogger log = BilbyLogger.getLogger("compiler.lexicalAnalyzer");
		log.severe("Lexical error:"+ message + " at " + firstChar.getLocation());
		
	}
}
