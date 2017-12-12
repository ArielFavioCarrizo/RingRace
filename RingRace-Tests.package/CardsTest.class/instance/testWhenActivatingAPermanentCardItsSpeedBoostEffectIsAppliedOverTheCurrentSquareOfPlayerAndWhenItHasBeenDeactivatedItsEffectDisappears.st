tests
testWhenActivatingAPermanentCardItsSpeedBoostEffectIsAppliedOverTheCurrentSquareOfPlayerAndWhenItHasBeenDeactivatedItsEffectDisappears
	| game initialBoardState nico santi speedBoostCard anulacionCard |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	initialBoardState := (BoardState withSquareEffects: { NoSquareEffect new. NoSquareEffect new. SpeedUpSquareEffect new. NoSquareEffect new. NoSquareEffect new. NoSquareEffect new. WormHoleSquareEffect new. NoSquareEffect new. NoSquareEffect new. NoSquareEffect new. NoSquareEffect new. NoSquareEffect new. NoSquareEffect new. NoSquareEffect new.}).
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoardState: initialBoardState
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 1 5 2 14 2 6)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	speedBoostCard := SpeedBoostPermanentCard new.
	anulacionCard := InstantaneousCard withEffect: AnulacionEffect new.
	nico give: speedBoostCard.
	santi give: anulacionCard.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 1.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 2.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 3.
	self assert: (game stateOf: nico) positionInGame laps equals: 0.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	nico activate: speedBoostCard in: game.
	
	self assert: (game boardState squareStates) equals: ( initialBoardState squareStates copyReplaceFrom: 3 to: 3 with: { game boardState squareStates at: 3 } ). 
	self assert: ( (game boardState squareStateAt: 3) effects at: 2) equals: ((initialBoardState squareStateAt: 3) effects first).
	self assert: ( (game boardState squareStateAt: 3) effects size) equals: 2.
	
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 11.
	self assert: (game stateOf: nico) positionInGame laps equals: 1.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 4.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	
	santi activate: anulacionCard in: game.
	
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 11.
	self assert: (game stateOf: nico) positionInGame laps equals: 1.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 6.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.
	
	game throwDicesFor: nico.
	
	self assert: (game stateOf: nico) positionInGame squareNumber equals: 7.
	self assert: (game stateOf: nico) positionInGame laps equals: 2.
	self assert: (game stateOf: santi) positionInGame squareNumber equals: 6.
	self assert: (game stateOf: santi) positionInGame laps equals: 0.