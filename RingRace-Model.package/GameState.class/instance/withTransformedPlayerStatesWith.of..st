accessing
withTransformedPlayerStatesWith: aTransformerBlock of: somePlayers
	|newGameState|
	newGameState := self.
	somePlayers do: [ :eachPlayer | newGameState := newGameState withTransformedPlayerStateWith: aTransformerBlock of: eachPlayer ].
	^newGameState