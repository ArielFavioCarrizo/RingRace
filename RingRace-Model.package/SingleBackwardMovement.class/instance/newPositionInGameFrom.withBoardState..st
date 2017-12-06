action
newPositionInGameFrom: aPositionInGame withBoardState: aBoardState
	^aPositionInGame squareNumber == 1
		ifTrue: [ PositionInGame positionedInSquare: ( aBoardState length ) withLaps: (aPositionInGame laps - 1) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame squareNumber - 1 ) withLaps: ( aPositionInGame laps ) ]. 