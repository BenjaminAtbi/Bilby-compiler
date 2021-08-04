package semanticAnalyzer.signatures;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import semanticAnalyzer.types.Type;

public class PromotedSignature {
	private List<Promotion> promotions;
	private FunctionSignature signature;
	private Type resultType; 
	
	
	
	private PromotedSignature(FunctionSignature signature, List<Promotion> promotions) {
		this.signature = signature;
		this.resultType = signature.resultType().concreteType();
		this.promotions = new ArrayList<Promotion>(promotions);
	}
	
	public Type resultType() {
		return resultType;
	}

	public int numPromotions() {
        int numPromotions = 0;
 
        for(Promotion promotion: promotions) {
                if(promotion != Promotion.NONE) {
                    numPromotions++;
                }
        }
        return numPromotions;
	}
	
	public int numArgs() {
		return promotions.size();
	}

	public List<Promotion> getPromotions() {
		return promotions;
	}
	
	public static List<PromotedSignature> makeAll(FunctionSignatures functionSignatures, List<Type> actuals) {
		
		List<PromotedSignature> all = new ArrayList<PromotedSignature>();
		for(FunctionSignature functionSignature: functionSignatures) {
			all.addAll(makeAll(functionSignature, actuals));;
		}
		return all;
	}

	private static List<PromotedSignature> makeAll(FunctionSignature functionSignature, List<Type> actuals) {
		
		List<PromotedSignature> result = new ArrayList<PromotedSignature>();
		if(actuals.size() == 1) {
			Type actual = actuals.get(0);
			for(Promotion promotion: Promotion.values()) {
				if(promotion.applies(actual)) {
					Type promotedActual = promotion.apply(actual);
					PromotedSignature promotedSignature = tryTypes(functionSignature, promotion, promotedActual);
					if(promotedSignature != nullInstance()) {
						result.add(promotedSignature);
					}

				}
			}
			
		}
		else if(actuals.size() == 2) {
			Type actualFirst = actuals.get(0);
			Type actualSecond = actuals.get(1);
			for(Promotion promotionFirst : Promotion.values()) {
				if(promotionFirst.applies(actualFirst)) {
					for(Promotion promotionSecond : Promotion.values()) {
						if(promotionSecond.applies(actualSecond)) {
							Type promotedActualFirst = promotionFirst.apply(actualFirst);
							Type promotedActualSecond = promotionSecond.apply(actualSecond);
							PromotedSignature promotedSignature = tryTypes(functionSignature, promotionFirst, promotionSecond, promotedActualFirst, promotedActualSecond);
							if(promotedSignature != nullInstance()) {
								result.add(promotedSignature);
							}
						}
					}
				}
			}
		}
		else {
			throw new RuntimeException("makeAll called with " + actuals.size() + " actuals, expected 1 or 2");
		}
		
		return result;
	}

	private static PromotedSignature tryTypes(FunctionSignature functionSignature, Promotion promotionFirst, Promotion promotionSecond, Type promotedActualFirst, Type promotedActualSecond) {
		if(functionSignature.accepts(Arrays.asList(promotedActualFirst, promotedActualSecond))) {
			return new PromotedSignature(functionSignature, Arrays.asList(promotionFirst, promotionSecond));
		}
		else {
			return nullInstance();
		}
	}

	private static PromotedSignature tryTypes(FunctionSignature functionSignature, Promotion promotion, Type promotedActual) {
		if(functionSignature.accepts(Arrays.asList(promotedActual))) {
			return new PromotedSignature(functionSignature, Arrays.asList(promotion));
		}
		else {
			return nullInstance();
		}
	}
	
	static private PromotedSignature nullInstance = null;
	private static PromotedSignature nullInstance() {
		if(nullInstance == null) {
			nullInstance = new PromotedSignature(FunctionSignature.nullInstance(), new ArrayList<Promotion>());
		}
		return nullInstance;
	}

	public Object getVariant() {
		return signature.getVariant();
	}

}
