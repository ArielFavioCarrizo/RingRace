action
applyEffectsPerDiceThrowIn: aGameStateContext
	self putLastSquareEffect: ( NoSquareEffect new ) in: aGameStateContext.
	aGameStateContext currentState effectsPerDicesThrow do:
		[ :eachEffect | eachEffect applyTo: player in: aGameStateContext ]