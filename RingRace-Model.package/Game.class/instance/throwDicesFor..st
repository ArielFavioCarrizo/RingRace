action
throwDicesFor: aPlayer
	| playerTurn |
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ 
			playerTurn := Turn of: aPlayer.
			
			playerTurn applyActivatedCardsIn: gameStateContext.
		   playerTurn throwDices: dices in: gameStateContext.
			
			self advanceTurn ]