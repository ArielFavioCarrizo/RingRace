tests
testCreatingNewGameStateWithPlayerOfCurrentTurnChange
	|aGameState1 aGameState2 nico claudio turnOfClaudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameState1 := GameState withPlayers: { nico. claudio } andBoardState: (self defaultBoardState).
	
	self assert: (aGameState1 stateOf: nico ) positionInGame squareNumber equals: 1.
	self assert: (aGameState1 stateOf: nico ) positionInGame laps equals: 0.
	self assert: (aGameState1 stateOf: claudio ) positionInGame squareNumber equals: 1.
	self assert: (aGameState1 stateOf: claudio ) positionInGame laps equals: 0.
	
	self assert: (aGameState1 currentTurn player ) equals: nico.
	
	turnOfClaudio := (Turn of: claudio).
	aGameState2 := aGameState1 withNewTurn: turnOfClaudio.
	
	self assert: (aGameState2 stateOf: nico ) positionInGame squareNumber equals: 1.
	self assert: (aGameState2 stateOf: nico ) positionInGame laps equals: 0.
	self assert: (aGameState2 stateOf: claudio ) positionInGame squareNumber equals: 1.
	self assert: (aGameState2 stateOf: claudio ) positionInGame laps equals: 0.
	
	self assert: (aGameState2 currentTurn ) equals: turnOfClaudio.