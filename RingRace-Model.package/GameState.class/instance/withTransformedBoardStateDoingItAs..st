accessing
withTransformedBoardStateDoingItAs: aTransformerBlock
	^self withNewBoardState: ( aTransformerBlock value: ( self boardState ) )