action
activatingIn: aGameStateContext for: aPlayer
	aGameStateContext ifTurnOf: aPlayer do: [ aGameStateContext newState: (aGameStateContext currentState withNewActivePermanentCard: self for: aPlayer) ]