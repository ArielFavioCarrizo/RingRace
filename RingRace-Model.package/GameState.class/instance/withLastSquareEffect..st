action
withLastSquareEffect: aLastSquareEffect
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock