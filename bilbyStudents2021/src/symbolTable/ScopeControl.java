package symbolTable;

import parseTree.ParseNode;

public class ScopeControl {
	
	
	public static void enterProgramScope(ParseNode node) {
		Scope scope = Scope.createProgramScope();
		node.setScope(scope);
		enterScopeDebug(node, scope);
	}	

	public static void enterParameterScope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createParameterScope();
		node.setScope(scope);
		enterScopeDebug(node, scope);
	}

	public static void enterProcedureScope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createProcedureScope();
		node.setScope(scope);
		
	}
	
	public static void enterSubscope(ParseNode node) {
		Scope baseScope = node.getLocalScope();
		Scope scope = baseScope.createSubscope();
		node.setScope(scope);
		
		enterScopeDebug(node,scope);
	}		
	
	public static void reenterScope(ParseNode node) {
		assert node.hasScope() : "Semantic Analysis - attempted to reenter scope that does not exist";
		node.getScope().reenterScope();
		
		enterScopeDebug(node,node.getScope());
	}
	
	public static void leaveScope(ParseNode node) {
		Scope oldScope = node.getScope();
		node.getScope().leave();
		exitScopeDebug(node, oldScope);
	}
	
	
	
	///////////////////////////////////////////////////////////////////////////
	// debug
	
	public static void enterScopeDebug(ParseNode node, Scope scope) {
		if(Scope.Debug) System.out.println("SemanticAnalysis - entering scope: " + node.getClass( )+ "\n" + scope.toString());
		
	}
	
	public static void exitScopeDebug(ParseNode node, Scope scope) {
		if(Scope.Debug) System.out.println("SemanticAnalysis - exiting scope: " + node.getClass() + "\n" + scope.toString());
	}
}

