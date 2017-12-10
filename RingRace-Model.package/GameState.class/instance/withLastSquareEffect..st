action
withLastSquareEffect: aLastSquareEffect
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withPermanentCardActivations: permanentCardActivations
		withEffectsPerDiceThrow: effectsPerDiceThrow
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock