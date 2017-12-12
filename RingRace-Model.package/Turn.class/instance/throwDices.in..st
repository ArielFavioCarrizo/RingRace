action
throwDices: dices in: aGameStateContext
	| numberOfMovements effect |
	numberOfMovements := dices sumNumbers: [ :eachDice | eachDice throw ].
	(MovementInGame advancingWithSquares: numberOfMovements) move: player in: aGameStateContext.
	effect := ( ( aGameStateContext currentState boardState ) squareStateAt: (aGameStateContext currentState stateOf: player) positionInGame squareNumber) compositeEffect.
	effect 
		applyTo: player
		in: aGameStateContext.
	self putLastSquareEffect: effect in: aGameStateContext.