action
giveIn: aGameStateContext withDices: someDices
	self applyActivatedCardsIn: aGameStateContext.
	self throwDices: someDices in: aGameStateContext.