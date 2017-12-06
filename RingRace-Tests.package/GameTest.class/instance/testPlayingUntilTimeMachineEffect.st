tests
testPlayingUntilTimeMachineEffect
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
					NoSquareEffect new.
					NoSquareEffect new.
					TimeMachineSquareEffect new.
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(2 1 3)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) positionInGame squareNumber == 1.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 3.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber == 3.
	self assert: (game stateOf: santi) positionInGame squareNumber == 2.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 3.
	self assert: (game stateOf: santi) positionInGame squareNumber == 2