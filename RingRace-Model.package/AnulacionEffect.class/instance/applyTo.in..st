action
applyTo: aPlayer in: aGameStateContext
	cardToRemove := aGameStateContext currentState permanentCardActivations first card.
	cardToRemove deactivatingIn: aGameStateContext.