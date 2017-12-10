action
withNewPermanentCardActivation: aPermanentCardActivation
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withPermanentCardActivations: ( permanentCardActivations copyWith: aPermanentCardActivation )
		withEffectsPerDiceThrow: effectsPerDiceThrow
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock