action
throwDicesFor: aPlayer
	| playerTurn |
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ 
			playerTurn := Turn of: aPlayer.
			
			playerTurn applyEffectsPerDiceThrowIn: gameStateContext.
		   playerTurn throwDices: dices in: gameStateContext.
			
			self advanceTurn ]