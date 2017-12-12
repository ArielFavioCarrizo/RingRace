accessing
withTransformedSquareStateAt: aPosition doingItAs: aTransformerBlock
	^self withNewSquareState: ( aTransformerBlock value: (self squareStateAt: aPosition) ) at: aPosition