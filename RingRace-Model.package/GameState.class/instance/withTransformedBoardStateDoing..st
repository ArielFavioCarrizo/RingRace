accessing
withTransformedBoardStateDoing: aTransformerBlock
	^self withNewBoardState: (aTransformerBlock value: (self boardState))