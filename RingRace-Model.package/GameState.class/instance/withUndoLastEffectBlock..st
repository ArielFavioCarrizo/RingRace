action
withUndoLastEffectBlock: aUndoLastEffectBlock
	^ self class
		withPlayerStates: playerStates
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: aUndoLastEffectBlock