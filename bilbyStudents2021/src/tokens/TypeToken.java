package tokens;

import lexicalAnalyzer.Keyword;
import lexicalAnalyzer.Lextant;
import inputHandler.Locator;

public final class TypeToken extends TokenImp {

	private Lextant lextant;
	
	private TypeToken(Locator locator, String lexeme, Lextant lextant) {
		super(locator, lexeme);
		assert(Keyword.isAKeyword(lextant.getLexeme()));
		this.lextant = lextant;
	}
	
	public Lextant getLextant() {
		return lextant;
	}
	public boolean isLextant(Lextant ...lextants) {
		for(Lextant lextant: lextants) {
			if(this.lextant == lextant)
				return true;
		}
		return false;
	}
	protected String rawString() {
		return lextant.toString();
	}
	
	
	public static TypeToken make(Locator locator, String lexeme, Lextant lextant) {
		return new TypeToken(locator, lexeme, lextant);
	}
}
