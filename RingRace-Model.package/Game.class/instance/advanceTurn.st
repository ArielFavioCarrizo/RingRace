action
advanceTurn
	currentPlayerIndex := currentPlayerIndex = players size
		ifTrue: [ 1 ]
		ifFalse: [ currentPlayerIndex + 1 ].
	gameStateContext
		newState:
			(gameStateContext currentState
				withNewTurn: ( Turn of: (players at: currentPlayerIndex)) )