accessing
currentPlayerSquareStateOf: aPlayer
	^self boardState squareStateAt: ( (self stateOf: aPlayer) positionInGame squareNumber )