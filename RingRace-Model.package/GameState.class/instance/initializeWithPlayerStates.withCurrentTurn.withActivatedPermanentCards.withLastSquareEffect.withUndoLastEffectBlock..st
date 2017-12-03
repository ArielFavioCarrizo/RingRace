instance initialization
initializeWithPlayerStates: somePlayerStates withCurrentTurn: aTurn withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock
	playerStates := somePlayerStates.
	currentTurn := aTurn.
	activatedPermanentCards := someActivatedPermanentCards.
	lastSquareEffect := aLastSquareEffect.
	undoLastEffectBlock := anUndoLastEffectBlock