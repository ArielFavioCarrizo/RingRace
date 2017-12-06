tests
testWhenThrowingDicesToAPlayerItChangesState
	| gameStateContext nico turn dices |
	nico := Player named: 'Nico'.
	dices := {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	gameStateContext := GameStateContext 
		withPlayers: {nico}
		withBoardState:
			(BoardState
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		andWhenStateIsUpdatedDo: [].
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 1.
	turn := Turn of: nico.
	turn throwDices: dices in: gameStateContext.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 2.
	turn throwDices: dices in: gameStateContext.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 4.
	turn throwDices: dices in: gameStateContext.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 7.
	turn throwDices: dices in: gameStateContext.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 11