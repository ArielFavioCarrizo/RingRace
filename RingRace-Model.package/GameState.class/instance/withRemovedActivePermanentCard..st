action
withRemovedActivePermanentCard: aCard
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: (activatedPermanentCards reject: [ :eachCardActivation | eachCardActivation card == aCard ])
		withLastSquareEffect: lastSquareEffect
		withUndoLastEffectBlock: undoLastEffectBlock