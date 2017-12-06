action
withNewPlayerState: aPlayerState of: aPlayer
	| newStatesPerPlayer |
	newStatesPerPlayer := Dictionary withAll: playerStates.
	newStatesPerPlayer at: aPlayer put: aPlayerState.
	^ self class
		withPlayerStates: newStatesPerPlayer
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock