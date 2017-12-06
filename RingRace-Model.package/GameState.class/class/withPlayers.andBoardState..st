instantiation
withPlayers: somePlayers andBoardState: aBoardState
	| playerStates activatedPermanentCards |
	playerStates := Dictionary new.
	activatedPermanentCards := OrderedCollection new.
	somePlayers
		do:
			[ :eachPlayer | playerStates at: eachPlayer put: (PlayerState withPositionInGame: (PositionInGame positionedInSquare: 1 withLaps: 0)) ].
	^ self new
		initializeWithPlayerStates: playerStates
		withBoardState: aBoardState
		withCurrentTurn: ( Turn of: (somePlayers first) )
		withActivatedPermanentCards: activatedPermanentCards
		withLastSquareEffect: NoSquareEffect new
		withUndoLastEffectBlock: [  ]