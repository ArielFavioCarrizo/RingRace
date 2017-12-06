instantiation
withPlayers: somePlayers withBoardState: aBoardState withDices: someDices winningWhen: aWinningCondition
	^ self new
		initializeWithPlayers: somePlayers
		andBoardState: aBoardState
		withDices: someDices
		winningWhen: aWinningCondition.