action
giveTurnTo: aPlayer
	| playerTurn |
	self
		ifTurnOf: aPlayer
		andGameNotEndedDo: [ 
			playerTurn := Turn of: aPlayer.
			
		   playerTurn giveIn: gameStateContext withDices: dices.
			
			self advanceTurn ]