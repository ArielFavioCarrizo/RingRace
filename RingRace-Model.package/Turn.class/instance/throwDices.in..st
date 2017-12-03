action
throwDices: dices in: aGameStateContext
	| numberOfMovements effect |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	(MovementInGame advancingWithSquares: numberOfMovements) move: player in: aGameStateContext.
	effect := (aGameStateContext board squareAt: (aGameStateContext currentState stateOf: player) positionInGame squareNumber) effect.
	effect
		applyTo: player
		in: aGameStateContext.
	self putLastSquareEffect: effect in: aGameStateContext.