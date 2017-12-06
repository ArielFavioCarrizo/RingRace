initialization
initializeWithPlayers: somePlayers andBoardState: aBoardState withDices: someDices winningWhen: aWinningCondition
	|game|
	game := self.
	players := OrderedCollection withAll: somePlayers.
	gameStateContext := GameStateContext withPlayers: players withBoardState: aBoardState andWhenStateIsUpdatedDo: [ players do: [ :eachPlayer |
				winnerValidator
				check: (self stateOf: eachPlayer )
				ifWinnerDo: [ hasEnded := true.
					winner := eachPlayer ] ] ].
	winnerValidator := WinnerValidator checking: aWinningCondition.
	dices := someDices.
	currentPlayerIndex := 1.
	hasEnded := false