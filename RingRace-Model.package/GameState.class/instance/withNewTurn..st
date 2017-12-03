accessing
withNewTurn: aTurn
	^ self class
		withPlayerStates: playerStates
		withCurrentTurn: aTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock