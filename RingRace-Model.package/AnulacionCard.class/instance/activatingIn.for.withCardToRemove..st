removing
activatingIn: aGameStateContext for: aPlayer withCardToRemove: aCardToDeactivate
	(AnulacionEffect withCardToRemove: aCardToDeactivate) applyTo: aPlayer in: aGameStateContext