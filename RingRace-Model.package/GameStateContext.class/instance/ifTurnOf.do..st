accessing
ifTurnOf: aPlayer do: aBlockClosure
	^ (self currentState currentTurn player = aPlayer) ifTrue: aBlockClosure ifFalse: [ GameException signal: ('You can not play out of turn, current player is: <1s>' expandMacrosWith: aPlayer name) ]