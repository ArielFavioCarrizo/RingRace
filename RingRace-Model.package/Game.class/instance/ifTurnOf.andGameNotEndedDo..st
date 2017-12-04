enumerating
ifTurnOf: aPlayer andGameNotEndedDo: aBlockClosure
	hasEnded
	ifTrue: [ GameException signal: 'Game has ended' ]
	ifFalse: [ gameStateContext ifTurnOf: aPlayer do: aBlockClosure ].
				
		