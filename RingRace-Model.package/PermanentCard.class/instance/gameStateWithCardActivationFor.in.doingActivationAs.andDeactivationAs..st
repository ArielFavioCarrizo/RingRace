protected
gameStateWithCardActivationFor: aPlayer in: gameState doingActivationAs: aActivationEffectGameStateTransformingBlock andDeactivationAs: aDeactivationEffectGameStateTransformingBlock
	^ (aActivationEffectGameStateTransformingBlock value: gameState)
		withNewPermanentCardActivation:
			(PermanentCardActivation
				withCard: self
				withDisableActionInGameState: aDeactivationEffectGameStateTransformingBlock)