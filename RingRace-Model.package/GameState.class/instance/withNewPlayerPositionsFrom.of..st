instance initialization
withNewPlayerPositionsFrom: aGameState of: somePlayers
	| newGameState |
	newGameState := self.
	somePlayers
		do: [ :eachPlayer | 
			newGameState := newGameState
				withTransformedPlayerStateWith: [ :playerState | playerState withNewPositionInGame: (aGameState stateOf: eachPlayer) positionInGame ]
				of: eachPlayer ].
	^ newGameState