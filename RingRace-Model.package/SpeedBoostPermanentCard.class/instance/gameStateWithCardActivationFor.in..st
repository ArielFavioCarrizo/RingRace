action
gameStateWithCardActivationFor: aPlayer in: gameState
	|newEffectOverSquare|
	newEffectOverSquare := SpeedUpSquareEffect new.
	^self gameStateWithCardActivationFor: aPlayer in: gameState doingActivationAs: (gameState transformationBlockOfCurrentSquareOf: aPlayer doingItAs: [ :squareState | squareState withAddedEffectAsFirst: newEffectOverSquare ] ) andDeactivationAs: (gameState transformationBlockOfCurrentSquareOf: aPlayer doingItAs: [ :squareState | squareState withRemovedEffect: newEffectOverSquare ] )