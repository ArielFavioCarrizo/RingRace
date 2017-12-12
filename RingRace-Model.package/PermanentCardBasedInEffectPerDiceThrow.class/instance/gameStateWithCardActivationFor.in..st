action
gameStateWithCardActivationFor: aPlayer in: gameState
	|effectOfActivation|
	effectOfActivation := ( PlayerFilteredInstantaneousEffectProxy of: effect withPlayer: aPlayer ).
	^self gameStateWithCardActivationFor: aPlayer in: gameState doingActivationAs: [ :oldGameState | oldGameState withNewEffectPerDicesThrow: effectOfActivation ] andDeactivationAs: [ :oldGameState | oldGameState withRemovedEffectPerDicesThrow: effectOfActivation ].