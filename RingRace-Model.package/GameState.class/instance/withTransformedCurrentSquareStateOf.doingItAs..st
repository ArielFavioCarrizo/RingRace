accessing
withTransformedCurrentSquareStateOf: aPlayer doingItAs: aTransformationBlock
	|squareNumber|
	squareNumber := ( self stateOf: aPlayer ) positionInGame squareNumber.
	^self withNewBoardState: ( boardState withTransformedSquareStateAt: squareNumber doingItAs: aTransformationBlock )