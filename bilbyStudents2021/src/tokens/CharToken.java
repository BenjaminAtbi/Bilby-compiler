package tokens;

import inputHandler.LocatedChar;
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
	
	public static CharToken make(Locator locator, String lexeme) {
		CharToken result = new CharToken(locator, lexeme);
		result.setValue(lexeme.charAt(1));
		return result;
	}
	
	public static CharToken makePrecise(Locator locator, String lexeme) {
		CharToken result = new CharToken(locator, lexeme);
		result.setValue(lexeme.charAt(2));
		return result;
	}
	
	public static CharToken makeOctal(Locator locator, String lexeme) {
		CharToken result = new CharToken(locator, lexeme);
		int val;
		try {
			val = Integer.parseInt(lexeme.substring(1), 8);
		} catch (NumberFormatException e) {
			tokenCreationError(locator, "char value out of integer bounds");
			val = 0;
		}
		if (val > 127 || val < 0) {
			tokenCreationError(locator, "char value out of char bounds");
		}
		result.setValue((char)val);
		return result;
	}
	
	@Override
	protected String rawString() {
		return "char, " + value;
	}

}
