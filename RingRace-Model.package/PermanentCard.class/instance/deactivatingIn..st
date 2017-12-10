action
deactivatingIn: aGameStateContext
	|cardActivation|
	cardActivation := ( aGameStateContext currentState permanentCardActivations ) detect: [ :eachCardActivation | ( eachCardActivation card = self ) ].
	aGameStateContext newState: ( ( cardActivation gameStateWithDeactivation: ( aGameStateContext currentState ) ) withRemovedPermanentCardActivation: cardActivation ).