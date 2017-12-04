enumerating
ifGameNotEndedDo: aBlockClosure
	hasEnded
	ifTrue: [ GameException signal: 'Game has ended' ]
	ifFalse: aBlockClosure
				
		