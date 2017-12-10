action
withRemovedEffectPerDicesThrow: aEffectPerDiceThrow
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withPermanentCardActivations: permanentCardActivations
		withEffectsPerDiceThrow: ( effectsPerDiceThrow copyWithout: aEffectPerDiceThrow )
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock