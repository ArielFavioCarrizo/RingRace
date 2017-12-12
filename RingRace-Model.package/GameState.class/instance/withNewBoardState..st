action
withNewBoardState: aBoardState
	^ self class
		withPlayerStates: playerStates
		withBoardState: aBoardState
		withCurrentTurn: currentTurn
		withPermanentCardActivations: permanentCardActivations
		withEffectsPerDiceThrow: effectsPerDiceThrow
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock