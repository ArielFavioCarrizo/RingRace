tests
testWhenInstantaneousEffectChainingHasTheExpectedBehavior
	| gameStateContext nico dices |
	nico := Player named: 'Nico'.
	dices := {(Dice withNumbersFrom: (ReadStream on: #(1 2 3 4)))}.
	gameStateContext := GameStateContext 
		withPlayers: {nico}
		withBoardState:
			(BoardState
				withSquareEffects: (OrderedCollection new: 30 withAll: NoSquareEffect new))
		andWhenStateIsUpdatedDo: [].
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 1.
	( InstantaneousEffect compositeWith: { SpeedUpSquareEffect new. AtomicBombSquareEffect new. SpeedUpSquareEffect new. SpeedUpSquareEffect new. } ) applyTo: nico in: gameStateContext.
	self assert: (gameStateContext currentState stateOf: nico) positionInGame squareNumber equals: 9.