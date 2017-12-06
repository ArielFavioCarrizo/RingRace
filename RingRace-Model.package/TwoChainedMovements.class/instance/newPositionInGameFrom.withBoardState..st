action
newPositionInGameFrom: aPositionInGame withBoardState: aBoardState
	^secondMovement newPositionInGameFrom: (firstMovement newPositionInGameFrom: aPositionInGame withBoardState: aBoardState ) withBoardState: aBoardState.