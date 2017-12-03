action
withLastSquareEffect: aLastSquareEffect
	^ self class
		withPlayerStates: playerStates
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock