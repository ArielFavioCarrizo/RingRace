initialization
withAddedEffectAsFirst: aEffect
	|newEffects|
	newEffects := OrderedCollection withAll: effects.
	newEffects addFirst: aEffect.
	^self class withEffects: newEffects