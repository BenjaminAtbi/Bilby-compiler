package tokens;

import inputHandler.Locator;

public class IntToken extends TokenImp {
	protected int value;
	
	protected IntToken(Locator locator, String lexeme) {
		super(locator, lexeme);
	}
	protected void setValue(int value) {
		this.value = value;
	}
	public int getValue() {
		return value;
	}
	
	public static IntToken make(Locator locator, String lexeme) {
		IntToken result = new IntToken(locator, lexeme);
		result.setValue(Integer.parseInt(lexeme));
		return result;
	}
	
	@Override
	protected String rawString() {
		return "integer, " + value;
	}
}
