accessing
withTransformedSquareStateAt: aPosition doingAs: aTransformerBlock
	^self withNewSquareState: ( aTransformerBlock value: (self squareStateAt: aPosition) ) at: aPosition