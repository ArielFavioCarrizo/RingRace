instantation
withPlayerStates: someStatesPerPlayer withCurrentTurnOf: aPlayer withActivatedPermanentCards: someActivatedPermanentCards withLastSquareEffect: aLastSquareEffect withUndoLastEffectBlock: anUndoLastEffectBlock
	^ self new
		initializeWithPlayerStates: someStatesPerPlayer
		withCurrentTurnOf: aPlayer
		withActivatedPermanentCards: someActivatedPermanentCards
		withLastSquareEffect: aLastSquareEffect
		withUndoLastEffectBlock: anUndoLastEffectBlock