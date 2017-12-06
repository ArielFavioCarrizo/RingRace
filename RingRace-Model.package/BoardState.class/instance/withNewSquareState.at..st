accessing
withNewSquareState: aSquareState at: squareIndex
	|newSquareStates|
	newSquareStates := OrderedCollection withAll: squaresStates.
	
	newSquareStates at: squareIndex put: aSquareState.
	
	^self class withSquareStates: newSquareStates.