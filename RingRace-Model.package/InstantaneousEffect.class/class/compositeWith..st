instantiation
compositeWith: effects
	^(effects size = 1 ) ifTrue: [ effects first ] ifFalse: [
		TwoChainedInstantaneousEffects withFirstEffect: ( effects first ) andSecondEffect: (self compositeWith: ( effects copyFrom: 2 to: ( effects size ) ) )
	] 