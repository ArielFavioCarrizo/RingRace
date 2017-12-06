instantiation
withPlayerStates: someStatesPerPlayer withBoardState: aBoardState withCurrentTurn: aTurn withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock
	^ self new
		initializeWithPlayerStates: someStatesPerPlayer
		withBoardState: aBoardState
		withCurrentTurn: aTurn
		withActivatedPermanentCards: someActivatedPermanentCards
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: anUndoLastEffectBlock