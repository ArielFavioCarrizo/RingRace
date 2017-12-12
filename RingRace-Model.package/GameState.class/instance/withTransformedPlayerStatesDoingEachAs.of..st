accessing
withTransformedPlayerStatesDoingEachAs: aTransformerBlock of: somePlayers
	|newGameState|
	newGameState := self.
	somePlayers do: [ :eachPlayer | newGameState := newGameState withTransformedPlayerStateDoingItAs: aTransformerBlock of: eachPlayer ].
	^newGameState