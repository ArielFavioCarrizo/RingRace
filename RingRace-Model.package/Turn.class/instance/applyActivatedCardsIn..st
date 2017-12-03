action
applyActivatedCardsIn: aGameStateContext
	self putLastSquareEffect: ( NoSquareEffect new ) in: aGameStateContext.
	aGameStateContext currentState activatedCards
		select: [ :eachCardActivation | eachCardActivation player == player ]
		thenDo: [ :eachCardActivation | eachCardActivation card effect applyTo: eachCardActivation player in: aGameStateContext ]