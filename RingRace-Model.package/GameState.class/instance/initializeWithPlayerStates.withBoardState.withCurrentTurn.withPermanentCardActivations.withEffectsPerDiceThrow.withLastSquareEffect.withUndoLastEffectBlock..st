instance initialization
initializeWithPlayerStates: somePlayerStates withBoardState: aBoardState withCurrentTurn: aTurn withPermanentCardActivations: somePermanentCardsActivation withEffectsPerDiceThrow: someEffectsPerDiceThrow withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock
	playerStates := somePlayerStates.
	boardState := aBoardState.
	currentTurn := aTurn.
	permanentCardActivations := somePermanentCardsActivation.
	effectsPerDiceThrow := someEffectsPerDiceThrow.
	lastSquareEffect := aLastSquareEffect.
	undoLastEffectBlock := anUndoLastEffectBlock