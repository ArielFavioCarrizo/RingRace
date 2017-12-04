tests
testWhenApplyingADeshacerCardItUndoesTheMoonwalkSquareEffect
	| game nico santi deshacerCard |
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
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					(MoonwalkSquareEffect newWithSquaresToMove: 2)})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(4 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	deshacerCard := InstantaneousCard withEffect: DeshacerEffect new.
	nico give: deshacerCard.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 5.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 5.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 7.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico activate: deshacerCard in: game.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 7.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.