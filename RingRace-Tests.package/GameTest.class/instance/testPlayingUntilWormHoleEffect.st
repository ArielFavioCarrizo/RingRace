tests
testPlayingUntilWormHoleEffect
	| game nico santi players |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	players := {nico.
	santi}.
	game := Game
		withPlayers: players
		withBoardState:
			(BoardState
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					WormHoleSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) positionInGame squareNumber == 1.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 2.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber == 2.
	self assert: (game stateOf: santi) positionInGame squareNumber == 2.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 4.
	self assert: (game stateOf: santi) positionInGame squareNumber == 2