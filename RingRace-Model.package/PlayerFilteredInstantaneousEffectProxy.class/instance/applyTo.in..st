action
applyTo: aPlayer in: aGameStateContext
	( aPlayer = exclusivePlayer ) ifTrue: [ sourceEffect applyTo: aPlayer in: aGameStateContext ]