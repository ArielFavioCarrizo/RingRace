instance initialization
initializeWithPlayers: somePlayers withBoardState: aBoardState andWhenStateIsUpdatedDo: aBlock
	gameStates := OrderedCollection new.
	gameStates add: ( GameState withPlayers: somePlayers andBoardState: aBoardState ).
	notifyStateUpdateBlock := aBlock.