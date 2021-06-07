package tokens;

import inputHandler.LocatedChar;
import inputHandler.Locator;
import logging.BilbyLogger;

public class FloatToken extends TokenImp {
	protected double value;
	
	protected FloatToken(Locator locator, String lexeme) {
		super(locator, lexeme);
	}
	protected void setValue(double value) {
		this.value = value;
	}
	public double getValue() {
		return value;
	}
	
	public static FloatToken make(Locator locator, String lexeme) {
		FloatToken result = new FloatToken(locator, lexeme);
		double value = Double.parseDouble(lexeme);
		if (value == Double.POSITIVE_INFINITY) {
			tokenCreationError(locator, "float out of bounds");
		}
		result.setValue(value);
		return result;
	}
	
	@Override
	protected String rawString() {
		return "double, " + value;
	}


}
