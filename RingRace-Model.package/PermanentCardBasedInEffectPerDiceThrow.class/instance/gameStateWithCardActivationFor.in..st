action
gameStateWithCardActivationFor: aPlayer in: gameState
	|effectOfActivation|
	effectOfActivation := ( PlayerFilteredInstantaneousEffectProxy of: effect withPlayer: aPlayer ).
	^( gameState withNewEffectPerDicesThrow: effectOfActivation ) withNewPermanentCardActivation: ( PermanentCardActivation withCard: self for: aPlayer withDisableActionInGameState: [ :targetGameState | targetGameState withRemovedEffectPerDicesThrow: effectOfActivation ] )