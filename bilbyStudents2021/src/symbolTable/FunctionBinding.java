package symbolTable;

import inputHandler.TextLocation;
import semanticAnalyzer.signatures.FunctionSignature;
import semanticAnalyzer.types.Type;

public class FunctionBinding extends Binding {

	private FunctionSignature signature;
	private int frameSize;

	public FunctionBinding(Type type, TextLocation location, MemoryLocation memoryLocation, String lexeme, FunctionSignature signature) {
	super(type, location, memoryLocation, lexeme, false);
	this.signature = signature;
	frameSize = 0;
	}
	
	public FunctionSignature getSignature() {
		return signature;
	}

	public int getFrameSize() {
		return frameSize;
	}

	public void setFrameSize(int frameSize) {
		this.frameSize = frameSize;
	}
	
	@Override
	public String toString() {
		return "[" + super.getLexeme() +
				" " + super.getType() +  // " " + textLocation +	
				" " + super.getMemoryLocation() +
				"]";
	}	
}
