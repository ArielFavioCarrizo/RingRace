action
applyTo: aPlayer in: aGameStateContext
	|previousPlayerPosition|
	previousPlayerPosition := ((aGameStateContext lastGameStateBeforeCurrentTurnChanges ) stateOf: aPlayer) positionInGame.
	aGameStateContext newState: ( aGameStateContext currentState withNewPlayerState: ( ( aGameStateContext currentState stateOf: aPlayer ) withNewPositionInGame: previousPlayerPosition ) of: aPlayer ).