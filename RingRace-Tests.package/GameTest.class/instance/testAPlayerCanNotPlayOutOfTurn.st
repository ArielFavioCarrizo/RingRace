tests
testAPlayerCanNotPlayOutOfTurn
	| game nico santi |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoardState:
			(BoardState
				withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new))
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(3 2 5 1 2 3 5)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	game throwDicesFor: nico.
	self should: [ game throwDicesFor: nico ] raise: GameException