package tokens;

import inputHandler.Locator;

public class CharToken extends TokenImp {
	protected char value;
	
	protected CharToken(Locator locator, String lexeme) {
		super(locator, lexeme);
	}
	protected void setValue(char value) {
		this.value = value;
	}
	public char getValue() {
		return value;
	}
	
	public static CharToken make(Locator locator, String lexeme, char ch) {
		CharToken result = new CharToken(locator, lexeme);
		result.setValue(ch);
		return result;
	}
	
	
	@Override
	protected String rawString() {
		return "char, " + value;
	}

}
