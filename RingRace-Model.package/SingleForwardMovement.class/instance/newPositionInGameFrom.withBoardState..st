action
newPositionInGameFrom: aPositionInGame withBoardState: aBoardState
	^aPositionInGame squareNumber == ( aBoardState length ) 
		ifTrue: [ PositionInGame positionedInSquare: 1 withLaps: ( aPositionInGame laps + 1 ) ]
		ifFalse: [ PositionInGame positionedInSquare: ( aPositionInGame squareNumber + 1 ) withLaps: ( aPositionInGame laps ) ]
