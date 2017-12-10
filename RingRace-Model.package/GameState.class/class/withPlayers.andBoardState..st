instantiation
withPlayers: somePlayers andBoardState: aBoardState
	| playerStates |
	playerStates := Dictionary new.
	somePlayers
		do:
			[ :eachPlayer | playerStates at: eachPlayer put: (PlayerState withPositionInGame: (PositionInGame positionedInSquare: 1 withLaps: 0)) ].
	^ self new
		initializeWithPlayerStates: playerStates
		withBoardState: aBoardState
		withCurrentTurn: ( Turn of: (somePlayers first) )
		withPermanentCardActivations: ( OrderedCollection new )
		withEffectsPerDiceThrow: ( OrderedCollection new )
		withLastSquareEffect: NoSquareEffect new
		withUndoLastEffectBlock: [  ]