instantation
withSquareEffects: someSquareEffects
	^self withSquareStates: ( someSquareEffects
		collect: [ :eachSquareEffect | 
			SquareState withEffect: eachSquareEffect] )