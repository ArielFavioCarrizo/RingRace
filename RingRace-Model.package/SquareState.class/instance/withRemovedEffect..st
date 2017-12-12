initialization
withRemovedEffect: aEffect
	^self class withEffects: (effects copyWithout: aEffect)