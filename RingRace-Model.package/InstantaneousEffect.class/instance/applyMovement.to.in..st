action
applyMovement: aMovement to: somePlayers in: aGameStateContext
	| undoLastEffectBlock |
	undoLastEffectBlock := aGameStateContext createUndoPositionChangeBlockFor: somePlayers.
	aGameStateContext
		newState:
			((aGameStateContext currentState
				withTransformedPlayerStatesWith: [ :eachPlayerState | aMovement newPlayerStateFrom: eachPlayerState withBoardState: ( aGameStateContext currentState boardState ) ]
				of: somePlayers) withUndoLastEffectBlock: undoLastEffectBlock)