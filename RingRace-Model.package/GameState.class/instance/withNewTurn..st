accessing
withNewTurn: aTurn
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: aTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock