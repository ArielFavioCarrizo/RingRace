action
withRemovedPermanentCardActivation: aPermanentCardActivation
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withPermanentCardActivations: ( permanentCardActivations copyWithout: aPermanentCardActivation)
		withEffectsPerDiceThrow: effectsPerDiceThrow
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock