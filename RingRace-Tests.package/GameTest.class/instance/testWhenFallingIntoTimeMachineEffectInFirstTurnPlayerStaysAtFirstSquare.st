tests
testWhenFallingIntoTimeMachineEffectInFirstTurnPlayerStaysAtFirstSquare
	| game nico santi |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoard:
			(BoardState
				withSquareEffects:
					{NoSquareEffect new.
					TimeMachineSquareEffect new.
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) positionInGame squareNumber == 1.
	self assert: (game stateOf: nico) positionInGame laps == 0.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	self assert: (game stateOf: santi) positionInGame laps == 0.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 1.
	self assert: (game stateOf: nico) positionInGame laps == 0.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	self assert: (game stateOf: santi) positionInGame laps == 0