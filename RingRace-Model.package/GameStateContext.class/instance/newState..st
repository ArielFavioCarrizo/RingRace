action
newState: aGameState 
	gameStates addLast: aGameState.
	notifyStateUpdateBlock on: GameException do: [ gameStates removeLast ]