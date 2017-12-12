accessing
withTransformedPlayerStatesDoing: aTransformerBlock of: somePlayers
	|newGameState|
	newGameState := self.
	somePlayers do: [ :eachPlayer | newGameState := newGameState withTransformedPlayerStateDoing: aTransformerBlock of: eachPlayer ].
	^newGameState