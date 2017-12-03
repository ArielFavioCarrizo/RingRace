accessing
lastGameStateBeforeCurrentTurnChanges
	^ ( gameStates reverse ) detect: [ :each | each currentTurn ~= ( ( self currentState ) currentTurn ) ] ifNone: [ ( gameStates first ) ].