action
withNewEffectPerDicesThrow: aEffectPerDiceThrow
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withPermanentCardActivations: permanentCardActivations
		withEffectsPerDiceThrow: ( effectsPerDiceThrow copyWith: aEffectPerDiceThrow )
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock