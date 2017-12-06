action
withUndoLastEffectBlock: aUndoLastEffectBlock
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: aUndoLastEffectBlock