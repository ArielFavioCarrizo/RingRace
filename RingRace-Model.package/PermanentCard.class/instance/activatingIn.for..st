action
activatingIn: aGameStateContext for: aPlayer
	aGameStateContext ifTurnOf: aPlayer do: [
		aGameStateContext newTransformedLastState: [ :currentGameState | ( self gameStateWithCardActivationFor: aPlayer in: currentGameState ) ]
	]