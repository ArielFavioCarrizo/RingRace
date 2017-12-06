tests
testPlayingUntilMoonwalkEffect
	| game nico santi |
	nico := Player named: 'Nico'.
	santi := Player named: 'Santi'.
	game := Game
		withPlayers:
			{nico.
			santi}
		withBoardState:
			(BoardState
				withSquareEffects:
					{NoSquareEffect new.
					NoSquareEffect new.
					NoSquareEffect new.
					(MoonwalkSquareEffect newWithSquaresToMove: 2).
					NoSquareEffect new})
		withDices: {(Dice withNumbersFrom: (ReadStream on: #(1 2 2)))}
		winningWhen: (ReachedNumberOfLaps reaching: 2).
	self assert: (game stateOf: nico) positionInGame squareNumber == 1.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game throwDicesFor: nico.
	self assert: (game stateOf: nico) positionInGame squareNumber == 2.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1.
	game throwDicesFor: santi.
	self assert: (game stateOf: nico) positionInGame squareNumber == 2.
	self assert: (game stateOf: santi) positionInGame squareNumber == 3.
	game throwDicesFor: nico.
	"Nico falls in position 4 which has a MoonwalkEffect, so Santi moves back 2 squares as all the other players if there were any"
	self assert: (game stateOf: nico) positionInGame squareNumber == 4.
	self assert: (game stateOf: santi) positionInGame squareNumber == 1