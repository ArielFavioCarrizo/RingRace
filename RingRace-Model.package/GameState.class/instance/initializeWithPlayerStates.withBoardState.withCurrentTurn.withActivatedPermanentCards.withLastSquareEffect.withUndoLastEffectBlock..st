instance initialization
initializeWithPlayerStates: somePlayerStates withBoardState: aBoardState withCurrentTurn: aTurn withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock
	playerStates := somePlayerStates.
	boardState := aBoardState.
	currentTurn := aTurn.
	activatedPermanentCards := someActivatedPermanentCards.
	lastSquareEffect := aLastSquareEffect.
	undoLastEffectBlock := anUndoLastEffectBlock