tests
testWhenTryingToApplySameCardTwoTimesThrowsError
	| game nico deshacerCard |
	nico := Player named: 'Nico'.
	game := Game
		withPlayers: {nico}
		withBoard:
			(Board
				withSquareEffects:
					{NoSquareEffect new.
					SpeedUpSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	deshacerCard := InstantaneousCard withEffect: DeshacerEffect new.
	nico give: deshacerCard.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 6.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	nico activate: deshacerCard in: game.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	game giveTurnTo: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self should: [ nico activate: deshacerCard in: game ] raise: Error.
	