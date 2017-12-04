tests
testWhenActivatingAPermanentCardItsVelocidadEffectIsApplied
	| game nico santi card |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoard: (BoardState withSquareEffects: (OrderedCollection new: 10 withAll: NoSquareEffect new))
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(2 2 2 2 2 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	card := PermanentCard withEffect: VelocidadEffect new.
	nico give: card.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico activate: card in: game.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 7.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.