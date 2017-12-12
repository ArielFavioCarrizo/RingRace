instance initialization
withNewPlayerPositionsFrom: aGameState of: somePlayers
	| newGameState |
	newGameState := self.
	somePlayers
		do: [ :eachPlayer | 
			newGameState := newGameState
				withTransformedPlayerStateDoing: [ :playerState | playerState withNewPositionInGame: (aGameState stateOf: eachPlayer) positionInGame ]
				of: eachPlayer ].
	^ newGameState