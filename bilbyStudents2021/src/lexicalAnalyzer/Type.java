package lexicalAnalyzer;

import inputHandler.TextLocation;
import tokens.LextantToken;
import tokens.Token;


public enum Type implements Lextant {
	BOOLEAN("bool"),
	PRINT("print"),
	TRUE("true"),
	FALSE("false"),
	MAIN("main"),
	AS("as"),
	NULL_KEYWORD("");

	private String lexeme;
	private Token prototype;
	
	
	private Type(String lexeme) {
		this.lexeme = lexeme;
		this.prototype = LextantToken.make(TextLocation.nullInstance(), lexeme, this);
	}
	public String getLexeme() {
		return lexeme;
	}
	public Token prototype() {
		return prototype;
	}
	
	public static Type forLexeme(String lexeme) {
		for(Type keyword: values()) {
			if(keyword.lexeme.equals(lexeme)) {
				return keyword;
			}
		}
		return NULL_KEYWORD;
	}
	public static boolean isAKeyword(String lexeme) {
		return forLexeme(lexeme) != NULL_KEYWORD;
	}
	
	/*   the following hashtable lookup can replace the serial-search implementation of forLexeme() above. It is faster but less clear. 
	private static LexemeMap<Keyword> lexemeToKeyword = new LexemeMap<Keyword>(values(), NULL_KEYWORD);
	public static Keyword forLexeme(String lexeme) {
		return lexemeToKeyword.forLexeme(lexeme);
	}
	*/
}
