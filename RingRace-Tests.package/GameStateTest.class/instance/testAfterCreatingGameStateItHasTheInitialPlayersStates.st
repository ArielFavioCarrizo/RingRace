tests
testAfterCreatingGameStateItHasTheInitialPlayersStates
	|aGameStateInBoard nico claudio |
	nico := Player named: 'Nico'.
	claudio := Player named: 'claudio'.
	aGameStateInBoard := GameState withPlayers: { nico. claudio }.
	
	self assert: (aGameStateInBoard stateOf: nico ) positionInGame squareNumber equals: 1.
	self assert: (aGameStateInBoard stateOf: nico ) positionInGame laps equals: 0.
	self assert: (aGameStateInBoard stateOf: claudio ) positionInGame squareNumber equals: 1.
	self assert: (aGameStateInBoard stateOf: claudio ) positionInGame laps equals: 0.