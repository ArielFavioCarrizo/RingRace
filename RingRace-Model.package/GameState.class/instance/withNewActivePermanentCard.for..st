action
withNewActivePermanentCard: aCard for: aPlayer
	| newActivatedPermanentCards |
	newActivatedPermanentCards := activatedPermanentCards copy.
	newActivatedPermanentCards add: (CardActivation withCard: aCard for: aPlayer).
	^ self class
		withPlayerStates: playerStates
		withBoardState: boardState
		withCurrentTurn: currentTurn
		withActivatedPermanentCards: newActivatedPermanentCards
		withLastSquareEffect: lastSquareEffect 
		withUndoLastEffectBlock: undoLastEffectBlock